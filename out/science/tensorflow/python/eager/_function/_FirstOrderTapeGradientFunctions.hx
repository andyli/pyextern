/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "_FirstOrderTapeGradientFunctions") extern class _FirstOrderTapeGradientFunctions {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(func_graph:Dynamic, attrs:Dynamic, func_graph_deleter:Dynamic, forwardprop_input_indices:Dynamic, delayed_rewrite_functions:Dynamic, need_gradients_for_jvps:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(func_graph:Dynamic, attrs:Dynamic, func_graph_deleter:Dynamic, forwardprop_input_indices:Dynamic, delayed_rewrite_functions:Dynamic, need_gradients_for_jvps:Dynamic):Void;
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
		Forward+backward functions where the backward function sees `outputs`.
	**/
	public function _build_functions_for_outputs(outputs:Dynamic, inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
	/**
		Shortcut for when only first-order gradients are required.
		
		The returned backward function does not accept gradients with respect to
		side output of forward_function. This is fine as long as the user can't
		possibly request second order tape gradients, as when they've used a single
		non-persistent GradientTape. Since we don't need the backward function to
		take gradients with respect to side outputs, we can skip some potentially
		slow graph building.
		
		Args:
		  inference_args: A flat list of Tensors, arguments to the inference
		    function.
		  input_tangents: A flat list of Tensors, jvps associated with
		    `inference_args`.
		
		Returns:
		  A tuple of (forward_function, backward_function):
		    forward_function: Takes the same inputs as the inference function, but
		      returns side outputs used by backward_function in addition to the
		      inference function's outputs.
		    backward_function: Takes side outputs from forward_function and
		      gradients with respect to the "real" outputs of forward_function and
		      returns gradients with respect to the inputs.
	**/
	public function _forward_and_backward_functions(inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
	/**
		Reorders function outputs so captures are last.
	**/
	public function _shuffle_forward_outputs(forward_wrapper:Dynamic):Dynamic;
	/**
		Create a backward function given `outputs` from the forward function.
	**/
	public function _wrap_backward_function(forward_graph:Dynamic, backward:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Wraps `backward_function` to include gradients for JVPs.
	**/
	public function _wrap_backward_function_with_jvp_backprop(backward_function:Dynamic, gradients_wrt_outputs:Dynamic, forward_wrapper:Dynamic):Dynamic;
	/**
		Adds inline JVP computation to a forward function.
	**/
	public function _wrap_forward_function_with_jvps(forward_function:Dynamic, backward_function:Dynamic, inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
	/**
		Construct or fetch a forward function with side-outputs.
		
		When graph building without a tape active, symbolic gradients rely on
		regenerating the backward function for higher-order gradients (to account
		for new side outputs of the rewritten forward function call). Thus there is
		no fixed backward function for this case. However, when a tape is active
		(eager or graph building), we generate fixed backward and forward functions
		at forward function call time.
		
		This difference between the tape and non-tape cases is to avoid building
		unneeded backward functions while graph building (where we may or may not
		eventually need gradients).
		
		Args:
		  inference_args: A flat list of Tensors, arguments to the inference
		    function.
		  input_tangents: A flat list of Tensors, jvps associated with
		    `inference_args`.
		
		Returns:
		  A forward _EagerDefinedFunction.
	**/
	public function forward(inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
	/**
		Record the function call operation.
		
		For backprop, indicates the backward function to use and which new Tensors
		must be watched. For forwardprop from eager, the function call itself will
		have produced tangents which need to be recorded.
		
		Args:
		  flat_outputs: The result of running `forward`.
		  inference_args: A flat list of Tensors with inference inputs to the
		    operation.
		  input_tangents: A flat list of Tensors with input tangents consumed by the
		    operation.
	**/
	public function record(flat_outputs:Dynamic, inference_args:Dynamic, input_tangents:Dynamic):Dynamic;
}