/* This file is generated, do not edit! */
package torch.quantization.fx.quantization_patterns;
@:pythonImport("torch.quantization.fx.quantization_patterns") extern class Quantization_patterns_Module {
	static public var ARGS_TO_SKIP : Dynamic;
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
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var QAT_CONV_MODULE_CLASSES : Dynamic;
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _load_weight_qparams(self:Dynamic, state_dict:Dynamic, prefix:Dynamic, local_metadata:Dynamic, strict:Dynamic, missing_keys:Dynamic, unexpected_keys:Dynamic, error_msgs:Dynamic):Dynamic;
	static public function _parent_name(target:Dynamic):Dynamic;
	static public function _save_weight_qparams(self:Dynamic, destination:Dynamic, prefix:Dynamic, keep_vars:Dynamic):Dynamic;
	/**
		Make a weighted float module (e.g. conv and linear )a reference module by
		attaching _weight_qparams that records the qparams for weight
		and change the name for the module so that it's recognized
		when people print the model
	**/
	static public function _to_reference(float_module:Dynamic, weight_qparams:Dynamic):Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	static public function activation_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized to int8 or not, this includes quantizing to quint8, qint8
	**/
	static public function activation_is_int8_quantized(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized or not, this includes quantizing to quint8, qint8 and float16
	**/
	static public function activation_is_statically_quantized(qconfig:Dynamic):Dynamic;
	static public var all_dtypes : Dynamic;
	/**
		If we know for sure that all of this node's args have no
		tensors (are primitives), return True.  If we either
		find a tensor or are not sure, return False. Note: this
		function is not exact.
	**/
	static public function all_node_args_have_no_tensors(node:Dynamic, modules:Dynamic, cache:Dynamic):Dynamic;
	static public var binary_op_supported_dtypes : Dynamic;
	/**
		Create getattr nodes in the quantized graph for scale and zero point values.
		The nodes are registered with the root_module of the model.
	**/
	static public function create_qparam_nodes(node_name:Dynamic, scale:Dynamic, zero_point:Dynamic, modules:Dynamic, quantized_graph:Dynamic, node_name_to_scope:Dynamic):Dynamic;
	static public function default_affine_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_op_supported_dtypes : Dynamic;
	static public function default_symmetric_fixed_qparams_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var fp16_dtypes : Dynamic;
	static public function get_default_output_activation_post_process_map():Dynamic;
	/**
		n Get the dynamically quantized module class corresponding to
		the floating point module class
	**/
	static public function get_dynamic_quant_module_class(float_module_class:Dynamic, ?additional_dynamic_quant_mapping:Dynamic):Dynamic;
	static public function get_linear_prepack_op_for_dtype(dtype:Dynamic):Dynamic;
	static public function get_per_tensor_qparams(activation_post_process:Dynamic):Dynamic;
	/**
		returns the qconfig tuple for qconfig:
		(activation_dtype, weight_dtype, activation_compute_dtype)
	**/
	static public function get_qconfig_dtypes(qconfig:Dynamic):Dynamic;
	static public function get_qconv_op(conv_op:Dynamic, has_relu:Dynamic):Dynamic;
	static public function get_qconv_prepack_op(conv_op:Dynamic):Dynamic;
	static public function get_qparam_dict(observer_or_fake_quant:Dynamic):Dynamic;
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
		Get the observed/quantized custom module class that we need
		to swap `custom_module` to
		Input:
		    custom_module: input, can be an instance of either a float or observed custom module
		    custom_module_class_mapping: the float to observed or observed to quantized custom module class mapping
		    qconfig: qconfig configured for the custom module
		
		Output:
		    corresponding observed/quantized custom module class for input custom module instance
	**/
	static public function get_swapped_custom_module_class(custom_module:Dynamic, custom_module_class_mapping:Dynamic, qconfig:Dynamic):Dynamic;
	static public var int8_dtypes : Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		Add quantization nodes (eg. quantize_per_tensor/per_channel) for given node to graph
		with the qparams calculated from activation_post_process (obs_module).
		The observer node (obs_node) is used to find the FQN of the user of act_post_process.
		e.g. Given input `node` in `node = self.conv(x)`, insert node:
		`quantized_node = torch.quantize_per_tensor(x, self._scale_0, self._zer_point_0, self._dtype_0)`
		where self._scale_0, self._zero_point_0 and self._dtype_0 are
		calculated from `obs_module`
	**/
	static public function quantize_node(in_node:Dynamic, obs_module:Dynamic, obs_node:Dynamic, modules:Dynamic, quantized_graph:Dynamic, node_name_to_scope:Dynamic, is_input:Dynamic):Dynamic;
	static public function register_quant_pattern(pattern:Dynamic, ?output_activation_post_process:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the weight needs to be statically
		quantized or not
	**/
	static public function weight_is_statically_quantized(qconfig:Dynamic):Dynamic;
}