/* This file is generated, do not edit! */
package torch.quantization.quantization_mappings;
@:pythonImport("torch.quantization.quantization_mappings") extern class Quantization_mappings_Module {
	static public var DEFAULT_DYNAMIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_FLOAT_TO_QUANTIZED_OPERATOR_MAPPINGS : Dynamic;
	static public var DEFAULT_MODULE_TO_ACT_POST_PROCESS : Dynamic;
	static public var DEFAULT_QAT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_REFERENCE_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var _INCLUDE_QCONFIG_PROPAGATE_LIST : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the special activation post process for `module`, this has
		higher priority than the activation post process in `qconfig`
		e.g.
		input: torch.nn.Sigmoid
		output: default_affine_fixed_qparam_fake_quant
	**/
	static public function _get_special_act_post_process(module:Dynamic):Dynamic;
	static public function _has_special_act_post_process(module:Dynamic):Dynamic;
	/**
		Get list of module class types that we will record output
		in numeric suite
	**/
	static public function get_default_compare_output_module_list():Dynamic;
	/**
		Get module mapping for post training dynamic quantization
		    
	**/
	static public function get_default_dynamic_quant_module_mappings():Dynamic;
	static public function get_default_float_to_quantized_operator_mappings():Dynamic;
	/**
		Get default module mapping for quantization aware training
		    
	**/
	static public function get_default_qat_module_mappings():Dynamic;
	/**
		Get the default list of module types that we'll attach qconfig
		attribute to in prepare
	**/
	static public function get_default_qconfig_propagation_list():Dynamic;
	/**
		Get module mapping for post training static quantization
		    
	**/
	static public function get_default_static_quant_module_mappings():Dynamic;
	/**
		n Get the dynamically quantized module class corresponding to
		the floating point module class
	**/
	static public function get_dynamic_quant_module_class(float_module_class:Dynamic, ?additional_dynamic_quant_mapping:Dynamic):Dynamic;
	/**
		Get the quantized operator corresponding to the float operator
		    
	**/
	static public function get_quantized_operator(float_op:Dynamic):Dynamic;
	/**
		n Get the statically quantized module class corresponding to
		the floating point module class
	**/
	static public function get_static_quant_module_class(float_module_class:Dynamic, ?additional_static_quant_mapping:Dynamic, ?is_reference:Dynamic):Dynamic;
	/**
		These modules cannot have observers inserted by default.
	**/
	static public function no_observer_set():Dynamic;
}