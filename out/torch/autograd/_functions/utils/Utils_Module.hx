/* This file is generated, do not edit! */
package torch.autograd._functions.utils;
@:pythonImport("torch.autograd._functions.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function check_onnx_broadcast(dims1:Dynamic, dims2:Dynamic):Dynamic;
	static public function maybe_unexpand(tensor:Dynamic, old_size:Dynamic, ?check_same_size:Dynamic):Dynamic;
	static public function maybe_view(tensor:Dynamic, size:Dynamic, ?check_same_size:Dynamic):Dynamic;
	static public function prepare_onnx_paddings(dim:Dynamic, pad:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
}