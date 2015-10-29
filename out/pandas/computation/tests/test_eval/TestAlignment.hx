/* This file is generated, do not edit! */
package pandas.computation.tests.test_eval;
@:pythonImport("pandas.computation.tests.test_eval", "TestAlignment") extern class TestAlignment {
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
	public function __init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function check_align_nested_unary_op(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_basic_frame_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_basic_frame_series_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_basic_series_frame_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_complex_series_frame_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_frame_comparison(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_medium_complex_frame_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_performance_warning_for_poor_alignment(engine:Dynamic, parser:Dynamic):Dynamic;
	public function check_series_frame_commutativity(engine:Dynamic, parser:Dynamic):Dynamic;
	static public var index_types : Dynamic;
	static public var lhs_index_types : Dynamic;
	public function test_align_nested_unary_op():Dynamic;
	public function test_basic_frame_alignment():Dynamic;
	public function test_basic_frame_series_alignment():Dynamic;
	public function test_basic_series_frame_alignment():Dynamic;
	public function test_complex_series_frame_alignment():Dynamic;
	public function test_frame_comparison():Dynamic;
	public function test_medium_complex_frame_alignment():Dynamic;
	public function test_performance_warning_for_poor_alignment():Dynamic;
	public function test_series_frame_commutativity():Dynamic;
}