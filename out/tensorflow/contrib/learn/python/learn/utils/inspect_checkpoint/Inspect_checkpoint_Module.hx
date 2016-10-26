/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.inspect_checkpoint;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.inspect_checkpoint") extern class Inspect_checkpoint_Module {
	static public var FLAGS : Dynamic;
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
	static public function main(unused_argv:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Prints tensors in a checkpoint file.
		
		If no `tensor_name` is provided, prints the tensor names and shapes
		in the checkpoint file.
		
		If `tensor_name` is provided, prints the content of the tensor.
		
		Args:
		  file_name: Name of the checkpoint file.
		  tensor_name: Name of the tensor in the checkpoint file to print.
	**/
	static public function print_tensors_in_checkpoint_file(file_name:Dynamic, tensor_name:Dynamic):Dynamic;
}