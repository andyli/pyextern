/* This file is generated, do not edit! */
package torch.quantization.fx.lower_to_fbgemm;
@:pythonImport("torch.quantization.fx.lower_to_fbgemm") extern class Lower_to_fbgemm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Lower a quantized reference model (with reference quantized operator patterns)
		to the native backend in PyTorch (fbgemm/qnnpack), both backends shares the same
		operator signature so they can be lowered with the same function
	**/
	static public function _lower_to_native_backend(model:Dynamic):Dynamic;
	/**
		Lower a quantized reference model (with reference quantized operator patterns)
		to fbgemm
	**/
	static public function lower_to_fbgemm(model:Dynamic):Dynamic;
}