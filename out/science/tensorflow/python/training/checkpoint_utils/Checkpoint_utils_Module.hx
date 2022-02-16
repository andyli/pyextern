/* This file is generated, do not edit! */
package tensorflow.python.training.checkpoint_utils;
@:pythonImport("tensorflow.python.training.checkpoint_utils") extern class Checkpoint_utils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns list of `tf.Variable` that comprise the partitioned variable.
	**/
	static public function _collect_partitioned_variable(name:Dynamic, all_vars:Dynamic):Dynamic;
	/**
		Returns checkpoint filename given directory or specific checkpoint file.
	**/
	static public function _get_checkpoint_filename(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		See `init_from_checkpoint` for documentation.
	**/
	static public function _init_from_checkpoint(ckpt_dir_or_file:Dynamic, assignment_map:Dynamic):Dynamic;
	static public function _is_variable(x:Dynamic):Dynamic;
	/**
		Overrides given variable's initialization op.
		
		Sets variable initializer to assign op that initializes variable from tensor's
		value in the checkpoint.
		
		Args:
		  variable: `tf.Variable` object.
		  ckpt_file: string, full path of the checkpoint.
		  tensor_name: Name of the tensor to load from the checkpoint.
		  slice_spec: Slice specification for loading partitioned tensors.
		  name: Name of the operation.
	**/
	static public function _set_checkpoint_initializer(variable:Dynamic, ckpt_file:Dynamic, tensor_name:Dynamic, slice_spec:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Overrides initialization op of given variable or list of variables.
		
		Calls `_set_checkpoint_initializer` for each variable in the given list of
		variables.
		
		Args:
		  variable_or_list: `tf.Variable` object or a list of `tf.Variable` objects.
		  ckpt_file: string, full path of the checkpoint.
		  tensor_name: Name of the tensor to load from the checkpoint.
		
		Raises:
		  ValueError: if all objects in `variable_or_list` are not partitions of the
		    same large variable.
	**/
	static public function _set_variable_or_list_initializer(variable_or_list:Dynamic, ckpt_file:Dynamic, tensor_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Continuously yield new checkpoint files as they appear.
		
		The iterator only checks for new checkpoints when control flow has been
		reverted to it. This means it can miss checkpoints if your code takes longer
		to run between iterations than `min_interval_secs` or the interval at which
		new checkpoints are written.
		
		The `timeout` argument is the maximum number of seconds to block waiting for
		a new checkpoint.  It is used in combination with the `timeout_fn` as
		follows:
		
		* If the timeout expires and no `timeout_fn` was specified, the iterator
		  stops yielding.
		* If a `timeout_fn` was specified, that function is called and if it returns
		  a true boolean value the iterator stops yielding.
		* If the function returns a false boolean value then the iterator resumes the
		  wait for new checkpoints.  At this point the timeout logic applies again.
		
		This behavior gives control to callers on what to do if checkpoints do not
		come fast enough or stop being generated.  For example, if callers have a way
		to detect that the training has stopped and know that no new checkpoints
		will be generated, they can provide a `timeout_fn` that returns `True` when
		the training has stopped.  If they know that the training is still going on
		they return `False` instead.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  min_interval_secs: The minimum number of seconds between yielding
		    checkpoints.
		  timeout: The maximum number of seconds to wait between checkpoints. If left
		    as `None`, then the process will wait indefinitely.
		  timeout_fn: Optional function to call after a timeout.  If the function
		    returns True, then it means that no new checkpoints will be generated and
		    the iterator will exit.  The function is called with no arguments.
		
		Yields:
		  String paths to latest checkpoint files as they arrive.
	**/
	static public function checkpoints_iterator(checkpoint_dir:Dynamic, ?min_interval_secs:Dynamic, ?timeout:Dynamic, ?timeout_fn:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Replaces `tf.Variable` initializers so they load from a checkpoint file.
		
		@compatibility(TF2)
		`tf.compat.v1.train.init_from_checkpoint` is not recommended for restoring
		variable values in TF2.
		
		To restore checkpoints in TF2, please use
		`tf.keras.Model.load_weights` or `tf.train.Checkpoint.restore`. These APIs use
		use an [object-based method of checkpointing]
		(https://www.tensorflow.org/guide/checkpoint#loading_mechanics), while
		`tf.compat.v1.init_from_checkpoint` relies on a more-fragile variable-name
		based method of checkpointing. There is no object-based equivalent of
		`init_from_checkpoint` in TF2.
		
		Please re-write your checkpoints immediately using the object-based APIs,
		see [migration guide]
		(https://www.tensorflow.org/guide/migrate#checkpoint_compatibility) for more
		details.
		
		You can load a name-based checkpoint written by `tf.compat.v1.train.Saver`
		using `tf.train.Checkpoint.restore` or `tf.keras.Model.load_weights`. However,
		you may have to change the names of the variables in your model to match the
		variable names in the name-based checkpoint, which can be viewed with
		`tf.train.list_variables(path)`.
		
		Another option is to create an `assignment_map` that maps the name of the
		variables in the name-based checkpoint to the variables in your model, eg:
		```
		{
		    'sequential/dense/bias': model.variables[0],
		    'sequential/dense/kernel': model.variables[1]
		}
		```
		and use `tf.compat.v1.train.init_from_checkpoint(path, assignment_map)` to
		restore the name-based checkpoint.
		
		After restoring, re-encode your checkpoint using `tf.train.Checkpoint.save`
		or `tf.keras.Model.save_weights`.
		
		@end_compatibility
		
		Values are not loaded immediately, but when the initializer is run
		(typically by running a `tf.compat.v1.global_variables_initializer` op).
		
		Note: This overrides default initialization ops of specified variables and
		redefines dtype.
		
		Assignment map supports following syntax:
		
		* `'checkpoint_scope_name/': 'scope_name/'` - will load all variables in
		  current `scope_name` from `checkpoint_scope_name` with matching tensor
		  names.
		* `'checkpoint_scope_name/some_other_variable': 'scope_name/variable_name'` -
		  will initialize `scope_name/variable_name` variable
		  from `checkpoint_scope_name/some_other_variable`.
		* `'scope_variable_name': variable` - will initialize given `tf.Variable`
		  object with tensor 'scope_variable_name' from the checkpoint.
		* `'scope_variable_name': list(variable)` - will initialize list of
		  partitioned variables with tensor 'scope_variable_name' from the checkpoint.
		* `'/': 'scope_name/'` - will load all variables in current `scope_name` from
		  checkpoint's root (e.g. no scope).
		
		Supports loading into partitioned variables, which are represented as
		`'<variable>/part_<part #>'`.
		
		Assignment map can be a dict, or a list of pairs.  The latter is
		necessary to initialize multiple variables in the current graph from
		the same variable in the checkpoint.
		
		Example:
		
		```python
		
		# Say, '/tmp/model.ckpt' has the following tensors:
		#  -- name='old_scope_1/var1', shape=[20, 2]
		#  -- name='old_scope_1/var2', shape=[50, 4]
		#  -- name='old_scope_2/var3', shape=[100, 100]
		
		# Create new model's variables
		with tf.compat.v1.variable_scope('new_scope_1'):
		  var1 = tf.compat.v1.get_variable('var1', shape=[20, 2],
		                         initializer=tf.compat.v1.zeros_initializer())
		with tf.compat.v1.variable_scope('new_scope_2'):
		  var2 = tf.compat.v1.get_variable('var2', shape=[50, 4],
		                         initializer=tf.compat.v1.zeros_initializer())
		  # Partition into 5 variables along the first axis.
		  var3 = tf.compat.v1.get_variable(name='var3', shape=[100, 100],
		                         initializer=tf.compat.v1.zeros_initializer(),
		                         partitioner=lambda shape, dtype: [5, 1])
		
		# Initialize all variables in `new_scope_1` from `old_scope_1`.
		init_from_checkpoint('/tmp/model.ckpt', {'old_scope_1/': 'new_scope_1/'})
		
		# Use names to specify which variables to initialize from checkpoint.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_1/var1': 'new_scope_1/var1',
		                      'old_scope_1/var2': 'new_scope_2/var2'})
		
		# Or use tf.Variable objects to identify what to initialize.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_1/var1': var1,
		                      'old_scope_1/var2': var2})
		
		# Initialize partitioned variables using variable's name
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_2/var3': 'new_scope_2/var3'})
		
		# Or specify the list of tf.Variable objects.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_2/var3': var3._get_variable_list()})
		
		```
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		  assignment_map: Dict, or a list of key-value pairs, where keys are names
		    of the variables in the checkpoint and values are current variables or
		    names of current variables (in default graph).
		
		Raises:
		  ValueError: If missing variables in current graph, or if missing
		    checkpoints or tensors in checkpoints.
	**/
	static public function init_from_checkpoint(ckpt_dir_or_file:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		Lists the checkpoint keys and shapes of variables in a checkpoint.
		
		Checkpoint keys are paths in a checkpoint graph.
		
		Example usage:
		
		  ```python
		import tensorflow as tf
		import os
		ckpt_directory = "/tmp/training_checkpoints/ckpt"
		ckpt = tf.train.Checkpoint(optimizer=optimizer, model=model)
		manager = tf.train.CheckpointManager(ckpt, ckpt_directory, max_to_keep=3)
		train_and_checkpoint(model, manager)
		tf.train.list_variables(manager.latest_checkpoint)
		```
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(key, shape)`.
	**/
	static public function list_variables(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns `CheckpointReader` for checkpoint found in `ckpt_dir_or_file`.
		
		If `ckpt_dir_or_file` resolves to a directory with multiple checkpoints,
		reader for the latest checkpoint is returned.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint
		    file.
		
		Returns:
		  `CheckpointReader` object.
		
		Raises:
		  ValueError: If `ckpt_dir_or_file` resolves to a directory with no
		    checkpoints.
	**/
	static public function load_checkpoint(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns the tensor value of the given variable in the checkpoint.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		  name: Name of the variable to return.
		
		Returns:
		  A numpy `ndarray` with a copy of the value of this variable.
	**/
	static public function load_variable(ckpt_dir_or_file:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Waits until a new checkpoint file is found.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  last_checkpoint: The last checkpoint path used or `None` if we're expecting
		    a checkpoint for the first time.
		  seconds_to_sleep: The number of seconds to sleep for before looking for a
		    new checkpoint.
		  timeout: The maximum number of seconds to wait. If left as `None`, then the
		    process will wait indefinitely.
		
		Returns:
		  a new checkpoint path, or None if the timeout was reached.
	**/
	static public function wait_for_new_checkpoint(checkpoint_dir:Dynamic, ?last_checkpoint:Dynamic, ?seconds_to_sleep:Dynamic, ?timeout:Dynamic):Dynamic;
}