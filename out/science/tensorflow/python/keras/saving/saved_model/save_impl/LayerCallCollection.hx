/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.save_impl;
@:pythonImport("tensorflow.python.keras.saving.saved_model.save_impl", "LayerCallCollection") extern class LayerCallCollection {
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
	public function ___init__(layer:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(layer:Dynamic):Void;
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
		Inspects layer object and returns the inferred input signature.
		
		Args:
		  layer: Layer object.
		
		Returns:
		  List of possibly nested TensorSpecs of the layer call function inputs.
		  The list does not contain the `training` argument.
	**/
	public function _generate_input_signature(layer:Dynamic):Dynamic;
	/**
		Wraps call function with added training argument if necessary.
	**/
	public function _maybe_wrap_with_training_arg(call_fn:Dynamic, match_layer_training_arg:Dynamic):Dynamic;
	/**
		Adds a layer call function to the collection.
		
		Args:
		  call_fn: a python function
		  name: Name of call function
		  match_layer_training_arg: If True, removes the `training` from the
		    function arguments when calling `call_fn`.
		
		Returns:
		  LayerCall (tf.function)
	**/
	public function add_function(call_fn:Dynamic, name:Dynamic, match_layer_training_arg:Dynamic):Dynamic;
	/**
		Traces all functions with the same args and kwargs.
		
		Args:
		  *args: Positional args passed to the original function.
		  **kwargs: Keyword args passed to the original function.
	**/
	public function add_trace(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns input signature for the wrapped layer call function.
	**/
	public var fn_input_signature : Dynamic;
	public function get_input_arg_value(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function get_training_arg_value(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Trace with the layer/models inferred input signature if possible.
	**/
	public function trace_with_input_signature():Dynamic;
	public function training_arg_was_passed(args:Dynamic, kwargs:Dynamic):Dynamic;
}