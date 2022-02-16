/* This file is generated, do not edit! */
package torch.quantization.fake_quantize;
@:pythonImport("torch.quantization.fake_quantize") extern class Fake_quantize_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if given mod is an instance of FakeQuantize script module.
		    
	**/
	static public function _is_fake_quant_script_module(mod:Dynamic):Dynamic;
	static public function _is_per_channel(qscheme:Dynamic):Dynamic;
	static public function _is_per_tensor(qscheme:Dynamic):Dynamic;
	static public function _is_symmetric_quant(qscheme:Dynamic):Dynamic;
	static public function default_affine_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_act_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_per_channel_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_histogram_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_per_channel_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_symmetric_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function disable_fake_quant(mod:Dynamic):Dynamic;
	static public function disable_observer(mod:Dynamic):Dynamic;
	static public function enable_fake_quant(mod:Dynamic):Dynamic;
	static public function enable_observer(mod:Dynamic):Dynamic;
}