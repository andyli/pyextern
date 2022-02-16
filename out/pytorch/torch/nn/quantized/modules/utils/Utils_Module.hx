/* This file is generated, do not edit! */
package torch.nn.quantized.modules.utils;
@:pythonImport("torch.nn.quantized.modules.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _addindent(s_:Dynamic, numSpaces:Dynamic):Dynamic;
	/**
		Converts the argument to a tuple of size n
		with the first element repeated.
	**/
	static public function _ntuple_from_first(n:Dynamic):Dynamic;
	static public function _pair_from_first(x:Dynamic):Dynamic;
	static public function _quantize_weight(float_wt:Dynamic, observer:Dynamic):Dynamic;
	static public function hide_packed_params_repr(self:Dynamic, params:Dynamic):Dynamic;
}