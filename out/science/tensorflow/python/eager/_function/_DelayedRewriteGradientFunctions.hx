/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "_DelayedRewriteGradientFunctions") extern class _DelayedRewriteGradientFunctions {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Construct an inference function and initialize caches.
	**/
	@:native("__init__")
	public function ___init__(func_graph:Dynamic, attrs:Dynamic, func_graph_deleter:Dynamic):Dynamic;
	/**
		Construct an inference function and initialize caches.
	**/
	public function new(func_graph:Dynamic, attrs:Dynamic, func_graph_deleter:Dynamic):Void;
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
	/**
		Fetch a backward function for `outputs` from the forward function.
	**/
	public function _backward(outputs:Dynamic):Dynamic;
	/**
		Constructs a pair of forward and backward functions.
		
		Args:
		  num_doutputs: The constructed backprop function will take output gradients
		    for the first `num_doutputs` outputs of the forward function. Defaults
		    to the number of outputs for the inference function, but when
		    higher-order gradients are computed this will increase to include side
		    outputs.
		
		Returns:
		  A pair of (forward_function, backward_function):
		    forward_function: A re-generated inference function (an
		      _EagerDefinedFunction) to account for new side outputs, if any extra
		      were required when building the backward pass.
		    backward_function: A ConcreteFunction that Takes `num_doutputs`
		      arguments and returns gradients with respect to inputs of the forward
		      function.
	**/
	public function _construct_forward_backward(num_doutputs:Dynamic):Dynamic;
	/**
		Add outputs to the forward call and feed them to the grad function.
	**/
	public function _rewrite_forward_and_call_backward(op:Dynamic, ?doutputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		A forward function with only user-specified outputs.
		
		The call operation for the returned inference function can be rewritten into
		a forward function. This only happens if the backward function (from the
		`backward` method) ends up being used to compute gradients.
		
		This approach avoids constructing unnecessary graphs, but it only works if
		we are calling this function when not executing eagerly.
		
		Args:
		  inference_args: A flat list of Tensors, arguments to the inference
		    function. Unused, but taken for compatibility with
		    _TapeGradientFunctions.
		  input_tangents: A flat list of Tensors, jvps associated with
		    `inference_args`. Unused; if required, tape functions must be used
		    instead.
		
		Returns:
		  An _EagerDefinedFunction.
	**/
	public function forward(?inference_args:Dynamic, ?input_tangents:Dynamic):Dynamic;
	/**
		A possibly-cached pair of forward and backward functions.
	**/
	public function forward_backward(?num_doutputs:Dynamic):Dynamic;
	/**
		Returns gradient function.
		
		The gradient rewrites an inference call op to a forward call op, but does
		not modify a pre-existing forward call op. It then computes the gradient
		from the output's gradients and the side outputs of the forward op.
	**/
	public function get_gradient_function():Dynamic;
	/**
		Record the function call operation.
		
		_DelayedRewriteGradientFunctions supports only first-order backprop tape
		gradients (and then only when graph building). It does not work with
		higher-order tape gradients or forward autodiff, but does work with
		higher-order symbolic gradients (tf.gradients).
		
		Args:
		  flat_outputs: The result of running `forward`.
		  inference_args: A flat list of Tensors with inference inputs to the
		    operation.
		  input_tangents: A flat list of Tensors with input tangents consumed by the
		    operation.
	**/
	public function record(flat_outputs:Dynamic, inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
}