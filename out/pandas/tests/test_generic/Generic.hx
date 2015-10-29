/* This file is generated, do not edit! */
package pandas.tests.test_generic;
@:pythonImport("pandas.tests.test_generic", "Generic") extern class Generic {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		return the axes for my object typ 
	**/
	public function _axes():Dynamic;
	public function _compare(result:Dynamic, expected:Dynamic):Dynamic;
	/**
		construct an object for the given shape
		if value is specified use that if its a scalar
		if value is an array, repeat it as needed 
	**/
	public function _construct(shape:Dynamic, ?value:Dynamic, ?dtype:Dynamic, kwargs:Dynamic):Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	static public var _ndim : Dynamic;
	public function check_metadata(x:Dynamic, ?y:Dynamic):Dynamic;
	public function setUp():Dynamic;
	public function test_constructor_compound_dtypes():Dynamic;
	public function test_downcast():Dynamic;
	public function test_get_default():Dynamic;
	public function test_get_numeric_data():Dynamic;
	public function test_head_tail():Dynamic;
	public function test_metadata_propagation():Dynamic;
	public function test_nonzero():Dynamic;
	public function test_numpy_1_7_compat_numeric_methods():Dynamic;
	public function test_rename():Dynamic;
	public function test_sample():Dynamic;
	public function test_size_compat():Dynamic;
	public function test_split_compat():Dynamic;
	public function test_unexpected_keyword():Dynamic;
}