/* This file is generated, do not edit! */
package tensorflow.python.saved_model.save_options;
@:pythonImport("tensorflow.python.saved_model.save_options", "SaveOptions") extern class SaveOptions {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Creates an object that stores options for SavedModel saving.
		
		Args:
		  namespace_whitelist: List of strings containing op namespaces to whitelist
		    when saving a model. Saving an object that uses namespaced ops must
		    explicitly add all namespaces to the whitelist. The namespaced ops must
		    be registered into the framework when loading the SavedModel. If no
		    whitelist is provided, all namespaced ops will be allowed.
		  save_debug_info: Boolean indicating whether debug information is saved. If
		    True, then a debug/saved_model_debug_info.pb file will be written with
		    the contents of a GraphDebugInfo binary protocol buffer containing stack
		    trace information for all ops and functions that are saved.
		  function_aliases: Python dict. Mapping from string to object returned by
		    @tf.function. A single tf.function can generate many ConcreteFunctions.
		    If a downstream tool wants to refer to all concrete functions generated
		    by a single tf.function you can use the `function_aliases` argument to
		    store a map from the alias name to all concrete function names.
		    E.g.
		
		    >>> class Adder(tf.Module):
		    ...   @tf.function
		    ...   def double(self, x):
		    ...     return x + x
		
		    >>> model = Adder()
		    >>> model.double.get_concrete_function(
		    ...   tf.TensorSpec(shape=[], dtype=tf.float32, name="float_input"))
		    >>> model.double.get_concrete_function(
		    ...   tf.TensorSpec(shape=[], dtype=tf.string, name="string_input"))
		
		    >>> options = tf.saved_model.SaveOptions(
		    ...   function_aliases={'double': model.double})
		    >>> tf.saved_model.save(model, '/tmp/adder', options=options)
		
		  experimental_io_device: string. Applies in a distributed setting.
		    Tensorflow device to use to access the filesystem. If `None` (default)
		    then for each variable the filesystem is accessed from the CPU:0 device
		    of the host where that variable is assigned. If specified, the
		    filesystem is instead accessed from that device for all variables.
		
		    This is for example useful if you want to save to a local directory,
		    such as "/tmp" when running in a distributed setting. In that case pass
		    a device for the host where the "/tmp" directory is accessible.
		  experimental_variable_policy: The policy to apply to variables when
		    saving. This is either a `saved_model.experimental.VariablePolicy` enum
		    instance or one of its value strings (case is not important). See that
		    enum documentation for details. A value of `None` corresponds to the
		    default policy.
		  experimental_custom_gradients: Boolean. When True, will save traced
		    gradient functions for the functions decorated by `tf.custom_gradient`.
		    Defaults to `True`.
	**/
	@:native("__init__")
	public function ___init__(?namespace_whitelist:Dynamic, ?save_debug_info:Dynamic, ?function_aliases:Dynamic, ?experimental_io_device:Dynamic, ?experimental_variable_policy:Dynamic, ?experimental_custom_gradients:Dynamic):Dynamic;
	/**
		Creates an object that stores options for SavedModel saving.
		
		Args:
		  namespace_whitelist: List of strings containing op namespaces to whitelist
		    when saving a model. Saving an object that uses namespaced ops must
		    explicitly add all namespaces to the whitelist. The namespaced ops must
		    be registered into the framework when loading the SavedModel. If no
		    whitelist is provided, all namespaced ops will be allowed.
		  save_debug_info: Boolean indicating whether debug information is saved. If
		    True, then a debug/saved_model_debug_info.pb file will be written with
		    the contents of a GraphDebugInfo binary protocol buffer containing stack
		    trace information for all ops and functions that are saved.
		  function_aliases: Python dict. Mapping from string to object returned by
		    @tf.function. A single tf.function can generate many ConcreteFunctions.
		    If a downstream tool wants to refer to all concrete functions generated
		    by a single tf.function you can use the `function_aliases` argument to
		    store a map from the alias name to all concrete function names.
		    E.g.
		
		    >>> class Adder(tf.Module):
		    ...   @tf.function
		    ...   def double(self, x):
		    ...     return x + x
		
		    >>> model = Adder()
		    >>> model.double.get_concrete_function(
		    ...   tf.TensorSpec(shape=[], dtype=tf.float32, name="float_input"))
		    >>> model.double.get_concrete_function(
		    ...   tf.TensorSpec(shape=[], dtype=tf.string, name="string_input"))
		
		    >>> options = tf.saved_model.SaveOptions(
		    ...   function_aliases={'double': model.double})
		    >>> tf.saved_model.save(model, '/tmp/adder', options=options)
		
		  experimental_io_device: string. Applies in a distributed setting.
		    Tensorflow device to use to access the filesystem. If `None` (default)
		    then for each variable the filesystem is accessed from the CPU:0 device
		    of the host where that variable is assigned. If specified, the
		    filesystem is instead accessed from that device for all variables.
		
		    This is for example useful if you want to save to a local directory,
		    such as "/tmp" when running in a distributed setting. In that case pass
		    a device for the host where the "/tmp" directory is accessible.
		  experimental_variable_policy: The policy to apply to variables when
		    saving. This is either a `saved_model.experimental.VariablePolicy` enum
		    instance or one of its value strings (case is not important). See that
		    enum documentation for details. A value of `None` corresponds to the
		    default policy.
		  experimental_custom_gradients: Boolean. When True, will save traced
		    gradient functions for the functions decorated by `tf.custom_gradient`.
		    Defaults to `True`.
	**/
	public function new(?namespace_whitelist:Dynamic, ?save_debug_info:Dynamic, ?function_aliases:Dynamic, ?experimental_io_device:Dynamic, ?experimental_variable_policy:Dynamic, ?experimental_custom_gradients:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public var experimental_custom_gradients : Dynamic;
	public var experimental_io_device : Dynamic;
	public var experimental_variable_policy : Dynamic;
	public var function_aliases : Dynamic;
	public var namespace_whitelist : Dynamic;
	public var save_debug_info : Dynamic;
}