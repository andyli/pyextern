/* This file is generated, do not edit! */
package torch.utils.data.communication.iter;
@:pythonImport("torch.utils.data.communication.iter", "NonBlocking") extern class NonBlocking {
	static public var __abstractmethods__ : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Metaclass for `DataPipe`. Add `type` attribute and `__init_subclass__` based
		on the type, and validate the return hint of `__iter__`.
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
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
	public function __getattr__(attribute_name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(index:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function __next__():Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __type_class__ : Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	static public var _is_protocol : Dynamic;
	static public var functions : Dynamic;
	public function nonblocking_next():Dynamic;
	static public function not_available_hook():Dynamic;
	static public var reduce_ex_hook : Dynamic;
	static public function register_datapipe_as_function(function_name:Dynamic, cls_to_register:Dynamic, ?enable_df_api_tracing:Dynamic):Dynamic;
	static public function register_function(function_name:Dynamic, _function:Dynamic):Dynamic;
	static public function register_not_available_hook(hook_function:Dynamic):Dynamic;
	/**
		Reinforce the type for DataPipe instance. And the 'expected_type' is required
		to be a subtype of the original type hint to restrict the type requirement
		of DataPipe instance.
	**/
	public function reinforce_type(expected_type:Dynamic):Dynamic;
	public function reset_iterator():Dynamic;
	static public function set_reduce_ex_hook(hook_fn:Dynamic):Dynamic;
	static public var type : Dynamic;
}