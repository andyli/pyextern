/* This file is generated, do not edit! */
package pandas.core.ops;
@:pythonImport("pandas.core.ops", "_TimeOp") extern class _TimeOp {
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
	public function ___init__(left:Dynamic, right:Dynamic, name:Dynamic, na_op:Dynamic):Dynamic;
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
	public function _convert_for_datetime(lvalues:Dynamic, rvalues:Dynamic):Dynamic;
	/**
		converts values to ndarray
	**/
	public function _convert_to_array(values:Dynamic, ?name:Dynamic, ?other:Dynamic):Dynamic;
	/**
		check if obj or all elements of list-like is DateOffset 
	**/
	public function _is_offset(arr_or_obj:Dynamic):Dynamic;
	public function _validate(lvalues:Dynamic, rvalues:Dynamic, name:Dynamic):Dynamic;
	static public var dtype : Dynamic;
	static public var fill_value : Dynamic;
	/**
		if ``left`` and ``right`` are appropriate for datetime arithmetic with
		operation ``name``, processes them and returns a ``_TimeOp`` object
		that stores all the required values.  Otherwise, it will generate
		either a ``NotImplementedError`` or ``None``, indicating that the
		operation is unsupported for datetimes (e.g., an unsupported r_op) or
		that the data is not the right type for time ops.
	**/
	static public function maybe_convert_for_time_op(left:Dynamic, right:Dynamic, name:Dynamic, na_op:Dynamic):Dynamic;
	static public function wrap_results(x:Dynamic):Dynamic;
}