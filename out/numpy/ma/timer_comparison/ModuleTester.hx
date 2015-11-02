/* This file is generated, do not edit! */
package numpy.ma.timer_comparison;
@:pythonImport("numpy.ma.timer_comparison", "ModuleTester") extern class ModuleTester {
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
	public function ___init__(module:Dynamic):Dynamic;
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
		Assert that a comparison of two masked arrays is satisfied elementwise.
	**/
	public function assert_array_compare(comparison:Dynamic, x:Dynamic, y:Dynamic, ?err_msg:Dynamic, ?header:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Checks the elementwise equality of two masked arrays.
	**/
	public function assert_array_equal(x:Dynamic, y:Dynamic, ?err_msg:Dynamic):Dynamic;
	/**
		Tests creation
	**/
	public function test_0():Dynamic;
	/**
		Tests creation
	**/
	public function test_1():Dynamic;
	/**
		Tests conversions and indexing.
	**/
	public function test_2():Dynamic;
	/**
		Tests resize/repeat
	**/
	public function test_3():Dynamic;
	/**
		Test of take, transpose, inner, outer products.
	**/
	public function test_4():Dynamic;
	/**
		Tests inplace w/ scalar
	**/
	public function test_5():Dynamic;
	/**
		Tests inplace w/ array
	**/
	public function test_6():Dynamic;
	/**
		Tests ufunc
	**/
	public function test_7():Dynamic;
	public function test_99():Dynamic;
	public function test_A():Dynamic;
}