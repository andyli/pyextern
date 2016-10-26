/* This file is generated, do not edit! */
package tensorflow.python.client.session;
@:pythonImport("tensorflow.python.client.session", "_DictFetchMapper") extern class _DictFetchMapper {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a _DictFetchMapper.
		
		Args:
		  fetches: Dict of fetches.
	**/
	@:native("__init__")
	public function ___init__(fetches:Dynamic):Dynamic;
	/**
		Creates a _DictFetchMapper.
		
		Args:
		  fetches: Dict of fetches.
	**/
	public function new(fetches:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Build results that match the original shape of the fetch.
		
		Args:
		  values: List of values returned by run(). The values correspond
		    exactly to the list tensors or ops returned by unique_fetches().
		
		Returns:
		  A struct of the same shape as the original fetch object handled by
		  this fetch mapper.  In the returned struct, the original fetches are
		  replaced by their fetched values.
	**/
	public function build_results(values:Dynamic):Dynamic;
	/**
		Creates fetch mapper that handles the structure of `fetch`.
		
		The default graph must be the one from which we want to fetch values when
		this function is called.
		
		Args:
		  fetch: An arbitrary fetch structure: singleton, list, tuple,
		    namedtuple, or dict.
		
		Returns:
		  An instance of a subclass of `_FetchMapper` that handles the shape.
	**/
	static public function for_fetch(fetch:Dynamic):Dynamic;
	/**
		Return the list of unique tensors or ops needed by this fetch mapper.
		
		Returns:
		  A list of tensors or ops.
	**/
	public function unique_fetches():Dynamic;
}