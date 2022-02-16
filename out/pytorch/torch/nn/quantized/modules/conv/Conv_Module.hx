/* This file is generated, do not edit! */
package torch.nn.quantized.modules.conv;
@:pythonImport("torch.nn.quantized.modules.conv") extern class Conv_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MOD : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _SUPPORTED_PADDING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _quantize_weight(float_wt:Dynamic, observer:Dynamic):Dynamic;
	static public function _reverse_repeat_padding(padding:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _size_1_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function fuse_conv_bn_weights(conv_w:Dynamic, conv_b:Dynamic, bn_rm:Dynamic, bn_rv:Dynamic, bn_eps:Dynamic, bn_w:Dynamic, bn_b:Dynamic):Dynamic;
}