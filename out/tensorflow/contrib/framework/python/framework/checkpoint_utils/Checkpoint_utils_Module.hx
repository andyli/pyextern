/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.framework.checkpoint_utils;
@:pythonImport("tensorflow.contrib.framework.python.framework.checkpoint_utils") extern class Checkpoint_utils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _collect_partitioned_variable(name:Dynamic, var_scope:Dynamic):Dynamic;
	/**
		Returns checkpoint filename given directory or specific filepattern.
	**/
	static public function _get_checkpoint_filename(filepattern:Dynamic):Dynamic;
	/**
		Sets variable initializer to assign op form value in checkpoint's tensor.
		
		Args:
		  variable: `Variable` object.
		  file_pattern: string, where to load checkpoints from.
		  tensor_name: Name of the `Tensor` to load from checkpoint reader.
		  slice_spec: Slice specification for loading partitioned variables.
		  name: Name of the operation.
	**/
	static public function _set_checkpoint_initializer(variable:Dynamic, file_pattern:Dynamic, tensor_name:Dynamic, slice_spec:Dynamic, ?name:Dynamic):Dynamic;
	static public function _set_variable_or_list_initializer(variable_or_list:Dynamic, file_pattern:Dynamic, tensor_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Using assignment map initializes current variables with loaded tensors.
		
		Note: This overrides default initialization ops of specified variables and
		redefines dtype.
		
		Assignment map supports following syntax:
		
		* `'checkpoint_scope_name/': 'scope_name/'` - will load all variables in
		  current `scope_name` from `checkpoint_scope_name` with matching variable
		  names.
		* `'checkpoint_scope_name/some_other_variable': 'scope_name/variable_name'` -
		  will initialize `scope_name/variable_name` variable
		  from `checkpoint_scope_name/some_other_variable`.
		* `'scope_variable_name': variable` - will initialize given `tf.Variable`
		  object with variable from the checkpoint.
		* `'scope_variable_name': list(variable)` - will initialize list of
		  partitioned variables with variable from the checkpoint.
		* `'/': 'scope_name/'` - will load all variables in current `scope_name` from
		  checkpoint's root (e.g. no scope).
		
		Supports loading into partitioned variables, which are represented as
		`'<variable>/part_<part #>'`.
		
		Example:
		
		```python
		  # Create variables.
		  with tf.variable_scope('test'):
		    m = tf.get_variable('my_var')
		  with tf.variable_scope('test2'):
		    var2 = tf.get_variable('my_var')
		  var3 = tf.get_variable(name="my1", shape=[100, 100],
		                         partitioner=lambda shape, dtype: [5, 1])
		  ...
		  # Specify which variables to initialize from checkpoint.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var': 'test/my_var',
		    'some_scope/': 'test2/'})
		  ...
		  # Or use `Variable` objects to identify what to initialize.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_scope/var2': var2,
		  })
		  # Initialize partitioned variables
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var_from_ckpt': 'part_var',
		  })
		  # Or specifying the list of `Variable` objects.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var_from_ckpt': var3._get_variable_list(),
		  })
		  ...
		  # Initialize variables as usual.
		  session.run(tf.get_all_variables())
		```
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  assignment_map: Dict, where keys are names of the variables in the
		    checkpoint and values are current variables or names of current variables
		    (in default graph).
		
		Raises:
		  tf.errors.OpError: If missing checkpoints or tensors in checkpoints.
		  ValueError: If missing variables in current graph.
	**/
	static public function init_from_checkpoint(checkpoint_dir:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		Returns list of all variables in the latest checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(name, shape)`.
	**/
	static public function list_variables(checkpoint_dir:Dynamic):Dynamic;
	/**
		Returns CheckpointReader for latest checkpoint.
		
		Args:
		  filepattern: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  `CheckpointReader` object.
		
		Raises:
		  ValueError: if checkpoint_dir doesn't have 'checkpoint' file or checkpoints.
	**/
	static public function load_checkpoint(filepattern:Dynamic):Dynamic;
	/**
		Returns a Tensor with the contents of the given variable in the checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  name: Name of the tensor to return.
		
		Returns:
		  `Tensor` object.
	**/
	static public function load_variable(checkpoint_dir:Dynamic, name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}