/* This file is generated, do not edit! */
package torch.quantization.fx.quantization_patterns;
@:pythonImport("torch.quantization.fx.quantization_patterns", "BatchNormQuantizeHandler") extern class BatchNormQuantizeHandler {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Records pattern information in __init__, which will be used
		in convert
	**/
	@:native("__init__")
	public function ___init__(node:Dynamic, modules:Dynamic):Dynamic;
	/**
		Records pattern information in __init__, which will be used
		in convert
	**/
	public function new(node:Dynamic, modules:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		If the last node of the pattern is observed, return the observer
		instance. Otherwise, return None.
	**/
	public function _maybe_get_last_node_only_observer(modules:Dynamic):Dynamic;
	/**
		Convert the given node to a quantized node and insert
		it to the quantized graph
	**/
	public function convert(node:Dynamic, qconfig:Dynamic, modules:Dynamic, quantized_graph:Dynamic, node_name_to_scope:Dynamic, load_arg:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Returns the constructor for the activation observer which should be
		used for the pattern matched to this handler. Some handlers override
		this to a different value than what is specified in the qconfig.
	**/
	public function get_activation_ctr(qconfig:Dynamic, pattern:Dynamic):Dynamic;
	/**
		Returns True if the pattern matched to this qhandler could be
		be observed, and False it it should not be observed.
	**/
	public function input_output_observed():Dynamic;
	/**
		Similar to is_general_tensor_value_op, this is a check
		for ops that works for both floating point and quantized input,
		that only re-arranges the Tensor values or query some metadata about the Tensor
		We don't insert observer/fake_quant for the output of these operators
		Example: reshape, transpose, maxpool2d
	**/
	public function is_general_tensor_shape_op():Dynamic;
	/**
		Returns True if the operator works for both floating point and
		quantized input, and does some computation based on the input Tensor,
		so we need to insert observer/fake_quant for the output of the
		operator since the distribution of values is different for input and output
		Tensors (for HistogramObserver)
		while they share the same quantization parameters
		Example: avgpool2d
	**/
	public function is_general_tensor_value_op():Dynamic;
	/**
		Returns true if the output node of convert is quantized
		when is_reference is False, we would return float node when a certain dtype
		combination is not supported (since fbgemm/qnnpack only support certain dtype
		combinations), so the output may be float, but when is_reference is True,
		we support all dtype combinations so the output will always be quantized.
		
		TODO: This is fragile, whether output is quantized should not depend on `is_reference` since
		we want to make sure whether a Tensor is quantized
		should be the same in prepare and convert and is_reference
		is only available in convert currently
	**/
	public function is_output_quantized(qconfig:Dynamic, is_reference:Dynamic):Dynamic;
	/**
		Returns true if an observer should be inserted for the output of
		the pattern matched to this QuantizeHandler instance during the
		prepare step.
	**/
	public function should_insert_observer_for_output(qconfig:Dynamic, model_is_training:Dynamic):Dynamic;
	/**
		Returns true if after convert, the output of the matched pattern is
		quantized iff the first input is also quantized.
	**/
	public function should_mark_output_quantized_from_input_quantized_status(qconfig:Dynamic):Dynamic;
}