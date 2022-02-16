/* This file is generated, do not edit! */
package torch.quantization.fx.quantized_fusion_patterns_and_replacements;
@:pythonImport("torch.quantization.fx.quantized_fusion_patterns_and_replacements") extern class Quantized_fusion_patterns_and_replacements_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_all_patterns_and_replacements():Dynamic;
	static public function get_fbgemm_patterns_and_replacements():Dynamic;
	static public function get_qnnpack_patterns_and_replacements():Dynamic;
	static public function relu_inplace_pattern(x:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function relu_non_inplace_pattern(x:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function relu_replacement(x:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
}