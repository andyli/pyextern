/* This file is generated, do not edit! */
package pandas.core.arrays.datetimelike;
@:pythonImport("pandas.core.arrays.datetimelike", "AttributesMixin") extern class AttributesMixin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _attributes : Dynamic;
	/**
		Verify that `self` and `other` are compatible.
		
		* DatetimeArray verifies that the timezones (if any) match
		* PeriodArray verifies that the freq matches
		* Timedelta has no verification
		
		In each case, NaT is considered compatible.
		
		Parameters
		----------
		other
		
		Raises
		------
		Exception
	**/
	public function _check_compatible_with(other:Dynamic):Dynamic;
	/**
		return an attributes dict for my class
	**/
	public function _get_attributes_dict():Dynamic;
	/**
		Construct a scalar type from a string.
		
		Parameters
		----------
		value : str
		
		Returns
		-------
		Period, Timestamp, or Timedelta, or NaT
		    Whatever the type of ``self._scalar_type`` is.
		
		Notes
		-----
		This should call ``self._check_compatible_with`` before
		unboxing the result.
	**/
	public function _scalar_from_string(value:Dynamic):Dynamic;
	/**
		The scalar associated with this datelike
		
		* PeriodArray : Period
		* DatetimeArray : Timestamp
		* TimedeltaArray : Timedelta
	**/
	public var _scalar_type : Dynamic;
	static public function _simple_new(values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unbox the integer value of a scalar `value`.
		
		Parameters
		----------
		value : Union[Period, Timestamp, Timedelta]
		
		Returns
		-------
		int
		
		Examples
		--------
		>>> self._unbox_scalar(Timedelta('10s'))  # DOCTEST: +SKIP
		10000000000
	**/
	public function _unbox_scalar(value:Dynamic):Dynamic;
}