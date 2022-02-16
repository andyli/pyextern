/* This file is generated, do not edit! */
package tensorflow.lite.python.authoring.authoring;
@:pythonImport("tensorflow.lite.python.authoring.authoring", "_Compatible") extern class _Compatible {
	/**
		Calls decorated function object.
		
		Also verifies if the function is compatible with TFLite.
		
		Returns:
		  A execution result of the decorated function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		A Python descriptor interface.
	**/
	public function __get__(instance:Dynamic, cls:Dynamic):Dynamic;
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
		Initialize the decorator object.
		
		Here is the description of the object variables.
		- _func     : decorated function.
		- _obj_func : for class object, we need to use this object to provide `self`
		              instance as 1 first argument.
		- _verified : whether the compatibility is checked or not.
		
		Args:
		  target: decorated function.
		  converter_target_spec : target_spec of TFLite converter parameter.
		  converter_allow_custom_ops : allow_custom_ops of TFLite converter
		      parameter.
		  raise_exception : to raise an exception on compatibility issues.
		      User need to use get_compatibility_log() to check details.
	**/
	@:native("__init__")
	public function ___init__(target:Dynamic, ?converter_target_spec:Dynamic, ?converter_allow_custom_ops:Dynamic, ?raise_exception:Dynamic):Dynamic;
	/**
		Initialize the decorator object.
		
		Here is the description of the object variables.
		- _func     : decorated function.
		- _obj_func : for class object, we need to use this object to provide `self`
		              instance as 1 first argument.
		- _verified : whether the compatibility is checked or not.
		
		Args:
		  target: decorated function.
		  converter_target_spec : target_spec of TFLite converter parameter.
		  converter_allow_custom_ops : allow_custom_ops of TFLite converter
		      parameter.
		  raise_exception : to raise an exception on compatibility issues.
		      User need to use get_compatibility_log() to check details.
	**/
	public function new(target:Dynamic, ?converter_target_spec:Dynamic, ?converter_allow_custom_ops:Dynamic, ?raise_exception:Dynamic):Void;
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
		Parses the given ConverterError which has detailed error information.
	**/
	public function _decode_converter_error(err:Dynamic):Dynamic;
	/**
		Parses the given ConverterError and generates compatibility warnings.
	**/
	public function _decode_error(err:Dynamic):Dynamic;
	/**
		Parses the given legacy ConverterError for OSS.
	**/
	public function _decode_error_legacy(err:Dynamic):Dynamic;
	/**
		Dump the list of ops and locations.
	**/
	public function _dump_error_details(ops:Dynamic, locations:Dynamic):Dynamic;
	/**
		Returns decorated function object.
		
		For a class method, use self._obj_func to provide `self` instance.
	**/
	public function _get_func():Dynamic;
	/**
		Dump location of ConveterError.errors.location.
	**/
	public function _get_location_string(location:Dynamic):Dynamic;
	/**
		Log and print authoring warning / error message.
	**/
	public function _log(message:Dynamic):Dynamic;
	/**
		Returns list of compatibility log messages.
		
		WARNING: This method should only be used for unit tests.
		
		Returns:
		  The list of log messages by the recent compatibility check.
		Raises:
		  RuntimeError: when the compatibility was NOT checked.
	**/
	public function get_compatibility_log():Dynamic;
	/**
		Returns a concrete function of the decorated function.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}