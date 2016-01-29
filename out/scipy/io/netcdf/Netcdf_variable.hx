/* This file is generated, do not edit! */
package scipy.io.netcdf;
@:pythonImport("scipy.io.netcdf", "netcdf_variable") extern class Netcdf_variable {
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
	public function ___init__(data:Dynamic, typecode:Dynamic, size:Dynamic, shape:Dynamic, dimensions:Dynamic, ?attributes:Dynamic, ?maskandscale:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, typecode:Dynamic, size:Dynamic, shape:Dynamic, dimensions:Dynamic, ?attributes:Dynamic, ?maskandscale:Dynamic):Void;
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
	public function __setattr__(attr:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(index:Dynamic, data:Dynamic):Dynamic;
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
		Assign a scalar value to a `netcdf_variable` of length one.
		
		Parameters
		----------
		value : scalar
		    Scalar value (of compatible type) to assign to a length-one netcdf
		    variable. This value will be written to file.
		
		Raises
		------
		ValueError
		    If the input is not a scalar, or if the destination is not a length-one
		    netcdf variable.
	**/
	public function assignValue(value:Dynamic):Dynamic;
	/**
		Retrieve a scalar value from a `netcdf_variable` of length one.
		
		Raises
		------
		ValueError
		    If the netcdf variable is an array of length greater than one,
		    this exception will be raised.
	**/
	public function getValue():Dynamic;
	/**
		Returns whether the variable has a record dimension or not.
		
		A record dimension is a dimension along which additional data could be
		easily appended in the netcdf data structure without much rewriting of
		the data file. This attribute is a read-only property of the
		`netcdf_variable`.
	**/
	public var isrec : Dynamic;
	/**
		Return the itemsize of the variable.
		
		Returns
		-------
		itemsize : int
		    The element size of the variable (eg, 8 for float64).
	**/
	public function itemsize():Int;
	/**
		Returns the shape tuple of the data variable.
		
		This is a read-only attribute and can not be modified in the
		same manner of other numpy arrays.
	**/
	public var shape : Dynamic;
	/**
		Return the typecode of the variable.
		
		Returns
		-------
		typecode : char
		    The character typecode of the variable (eg, 'i' for int).
	**/
	public function typecode():Dynamic;
}