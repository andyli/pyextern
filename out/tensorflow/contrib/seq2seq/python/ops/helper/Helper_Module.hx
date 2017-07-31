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
		Transpose the batch and time dimensions of a Tensor.
		
		Retains as much of the static shape information as possible.
		
		Args:
		  x: A tensor of rank 2 or higher.
		
		Returns:
		  x transposed along the first two dimensions.
		
		Raises:
		  ValueError: if `x` is rank 1 or lower.
	**/
	static public function _transpose_batch_time(x:Dynamic):Dynamic;
	static public function _unstack_ta(inp:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}