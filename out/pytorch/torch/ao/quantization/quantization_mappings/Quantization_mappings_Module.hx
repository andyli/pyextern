/* This file is generated, do not edit! */
package torch.ao.quantization.quantization_mappings;
@:pythonImport("torch.ao.quantization.quantization_mappings") extern class Quantization_mappings_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_DYNAMIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_FLOAT_TO_QUANTIZED_OPERATOR_MAPPINGS : Dynamic;
	static public var DEFAULT_MODULE_TO_ACT_POST_PROCESS : Dynamic;
	static public var DEFAULT_QAT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_REFERENCE_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public var DEFAULT_STATIC_QUANT_MODULE_MAPPINGS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _INCLUDE_QCONFIG_PROPAGATE_LIST : Dynamic;
	static public var __annotations__ : Dynamic;
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
	static public function default_affine_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_symmetric_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function get_combined_dict(default_dict:Dynamic, additional_dict:Dynamic):Dynamic;
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