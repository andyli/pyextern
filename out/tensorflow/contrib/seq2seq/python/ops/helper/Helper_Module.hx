/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.helper;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.helper") extern class Helper_Module {
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
		Transposes the batch and time dimensions of a Tensor.
		
		If the input tensor has rank < 2 it returns the original tensor. Retains as
		much of the static shape information as possible.
		
		Args:
		  x: A Tensor.
		
		Returns:
		  x transposed along the first two dimensions.
	**/
	static public function _transpose_batch_time(x:Dynamic):Dynamic;
	static public function _unstack_ta(inp:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}