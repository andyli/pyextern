/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.composable_model;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.composable_model") extern class Composable_model_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns list of all variables in the latest checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(name, shape)`.
	**/
	static public function list_variables(checkpoint_dir:Dynamic):Dynamic;
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