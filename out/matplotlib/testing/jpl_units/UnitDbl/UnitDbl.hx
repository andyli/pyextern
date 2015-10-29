/* This file is generated, do not edit! */
package matplotlib.testing.jpl_units.unitDbl;
@:pythonImport("matplotlib.testing.jpl_units.UnitDbl", "UnitDbl") extern class UnitDbl {
	/**
		Return the absolute value of this UnitDbl.
	**/
	public function __abs__():Dynamic;
	/**
		Add two UnitDbl's.
		
		= ERROR CONDITIONS
		- If the input rhs units are not the same as our units,
		  an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The UnitDbl to add.
		
		= RETURN VALUE
		- Returns the sum of ourselves and the input UnitDbl.
	**/
	public function __add__(rhs:Dynamic):Dynamic;
	/**
		Test a UnitDbl for a non-zero value.
		
		= RETURN VALUE
		- Returns true if the value is non-zero.
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare two UnitDbl's.
		
		= ERROR CONDITIONS
		- If the input rhs units are not the same as our units,
		  an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The UnitDbl to compare against.
		
		= RETURN VALUE
		- Returns -1 if self < rhs, 0 if self == rhs, +1 if self > rhs.
	**/
	public function __cmp__(rhs:Dynamic):Dynamic;
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
	/**
		Divide a UnitDbl by a value.
		
		= INPUT VARIABLES
		- rhs    The scalar to divide by.
		
		= RETURN VALUE
		- Returns the scaled UnitDbl.
	**/
	public function __div__(rhs:Dynamic):Dynamic;
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
		Create a new UnitDbl object.
		
		Units are internally converted to km, rad, and sec.  The only
		valid inputs for units are [ m, km, mile, rad, deg, sec, min, hour ].
		
		The field UnitDbl.value will contain the converted value.  Use
		the convert() method to get a specific type of units back.
		
		= ERROR CONDITIONS
		- If the input units are not in the allowed list, an error is thrown.
		
		= INPUT VARIABLES
		- value    The numeric value of the UnitDbl.
		- units    The string name of the units the value is in.
	**/
	@:native("__init__")
	public function ___init__(value:Dynamic, units:Dynamic):Dynamic;
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
		Scale a UnitDbl by a value.
		
		= INPUT VARIABLES
		- rhs    The scalar to multiply by.
		
		= RETURN VALUE
		- Returns the scaled UnitDbl.
	**/
	public function __mul__(rhs:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Return the negative value of this UnitDbl.
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Test a UnitDbl for a non-zero value.
		
		= RETURN VALUE
		- Returns true if the value is non-zero.
	**/
	public function __nonzero__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Print the UnitDbl.
	**/
	public function __repr__():Dynamic;
	/**
		Scale a UnitDbl by a value.
		
		= INPUT VARIABLES
		- lhs    The scalar to multiply by.
		
		= RETURN VALUE
		- Returns the scaled UnitDbl.
	**/
	public function __rmul__(lhs:Dynamic):Dynamic;
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
		Print the UnitDbl.
	**/
	public function __str__():Dynamic;
	/**
		Subtract two UnitDbl's.
		
		= ERROR CONDITIONS
		- If the input rhs units are not the same as our units,
		  an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The UnitDbl to subtract.
		
		= RETURN VALUE
		- Returns the difference of ourselves and the input UnitDbl.
	**/
	public function __sub__(rhs:Dynamic):Dynamic;
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
	static public var _types : Dynamic;
	static public var allowed : Dynamic;
	/**
		Check to see if units are the same.
		
		= ERROR CONDITIONS
		- If the units of the rhs UnitDbl are not the same as our units,
		  an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The UnitDbl to check for the same units
		- func   The name of the function doing the check.
	**/
	public function checkSameUnits(rhs:Dynamic, func:Dynamic):Dynamic;
	/**
		Check to see if some units are valid.
		
		= ERROR CONDITIONS
		- If the input units are not in the allowed list, an error is thrown.
		
		= INPUT VARIABLES
		- units    The string name of the units to check.
	**/
	public function checkUnits(units:Dynamic):Dynamic;
	/**
		Convert the UnitDbl to a specific set of units.
		
		= ERROR CONDITIONS
		- If the input units are not in the allowed list, an error is thrown.
		
		= INPUT VARIABLES
		- units    The string name of the units to convert to.
		
		= RETURN VALUE
		- Returns the value of the UnitDbl in the requested units as a floating
		  point number.
	**/
	public function convert(units:Dynamic):Dynamic;
	/**
		Generate a range of UnitDbl objects.
		
		Similar to the Python range() method.  Returns the range [
		start, stop ) at the requested step.  Each element will be a
		UnitDbl object.
		
		= INPUT VARIABLES
		- start    The starting value of the range.
		- stop     The stop value of the range.
		- step     Optional step to use.  If set to None, then a UnitDbl of
		           value 1 w/ the units of the start is used.
		
		= RETURN VALUE
		- Returns a list contianing the requested UnitDbl values.
	**/
	static public function range(start:Dynamic, stop:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Return the type of UnitDbl data.
	**/
	public function type():Dynamic;
}