/* This file is generated, do not edit! */
package tensorflow.python.tools.inspect_checkpoint;
@:pythonImport("tensorflow.python.tools.inspect_checkpoint") extern class Inspect_checkpoint_Module {
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
	/**
		Sets a single numpy printoption from a string of the form 'x=y'.
		
		See documentation on numpy.set_printoptions() for details about what values
		x and y can take. x can be any option listed there other than 'formatter'.
		
		Args:
		  kv_str: A string of the form 'x=y', such as 'threshold=100000'
		
		Raises:
		  argparse.ArgumentTypeError: If the string couldn't be used to set any
		      nump printoption.
	**/
	static public function parse_numpy_printoption(kv_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Prints tensors in a checkpoint file.
		
		If no `tensor_name` is provided, prints the tensor names and shapes
		in the checkpoint file.
		
		If `tensor_name` is provided, prints the content of the tensor.
		
		Args:
		  file_name: Name of the checkpoint file.
		  tensor_name: Name of the tensor in the checkpoint file to print.
		  all_tensors: Boolean indicating whether to print all tensors.
		  all_tensor_names: Boolean indicating whether to print all tensor names.
	**/
	static public function print_tensors_in_checkpoint_file(file_name:Dynamic, tensor_name:Dynamic, all_tensors:Dynamic, ?all_tensor_names:Dynamic):Dynamic;
}