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
	static public var division : Dynamic;
	/**
		Initializes current variables with tensors loaded from given checkpoint.
		
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
		
		Example:
		
		```python
		
		# Say, '/tmp/model.ckpt' has the following tensors:
		#  -- name='old_scope_1/var1', shape=[20, 2]
		#  -- name='old_scope_1/var2', shape=[50, 4]
		#  -- name='old_scope_2/var3', shape=[100, 100]
		
		# Create new model's variables
		with tf.variable_scope('new_scope_1'):
		  var1 = tf.get_variable('var1', shape=[20, 2],
		                         initializer=tf.zeros_initializer())
		with tf.variable_scope('new_scope_2'):
		  var2 = tf.get_variable('var2', shape=[50, 4],
		                         initializer=tf.zeros_initializer())
		  # Partition into 5 variables along the first axis.
		  var3 = tf.get_variable(name='var3', shape=[100, 100],
		                         initializer=tf.zeros_initializer(),
		                         partitioner=lambda shape, dtype: [5, 1])
		
		# Initialize all variables in `new_scope_1` from `old_scope_1`.
		init_from_checkpoint('/tmp/model.ckpt', {'old_scope_1/', 'new_scope_1'})
		
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
		  assignment_map: Dict, where keys are names of the variables in the
		    checkpoint and values are current variables or names of current variables
		    (in default graph).
		
		Raises:
		  tf.errors.OpError: If missing checkpoints or tensors in checkpoints.
		  ValueError: If missing variables in current graph.
	**/
	static public function init_from_checkpoint(ckpt_dir_or_file:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		Returns list of all variables in the checkpoint.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(name, shape)`.
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
}