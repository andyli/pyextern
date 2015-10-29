/* This file is generated, do not edit! */
package matplotlib.testing.jpl_units.duration;
@:pythonImport("matplotlib.testing.jpl_units.Duration", "Duration") extern class Duration {
	/**
		Return the absolute value of the duration.
	**/
	public function __abs__():Dynamic;
	/**
		Add two Durations.
		
		= ERROR CONDITIONS
		- If the input rhs is not in the same frame, an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The Duration to add.
		
		= RETURN VALUE
		- Returns the sum of ourselves and the input Duration.
	**/
	public function __add__(rhs:Dynamic):Dynamic;
	/**
		Compare two Durations.
		
		= INPUT VARIABLES
		- rhs    The Duration to compare against.
		
		= RETURN VALUE
		- Returns -1 if self < rhs, 0 if self == rhs, +1 if self > rhs.
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare two Durations.
		
		= ERROR CONDITIONS
		- If the input rhs is not in the same frame, an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The Duration to compare against.
		
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
		Divide a Duration by a value.
		
		= INPUT VARIABLES
		- rhs    The scalar to divide by.
		
		= RETURN VALUE
		- Returns the scaled Duration.
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
		Create a new Duration object.
		
		= ERROR CONDITIONS
		- If the input frame is not in the allowed list, an error is thrown.
		
		= INPUT VARIABLES
		- frame    The frame of the duration.  Must be 'ET' or 'UTC'
		- seconds  The number of seconds in the Duration.
	**/
	@:native("__init__")
	public function ___init__(frame:Dynamic, seconds:Dynamic):Dynamic;
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
		- Returns the scaled Duration.
	**/
	public function __mul__(rhs:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Return the negative value of this Duration.
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Compare two Durations.
		
		= INPUT VARIABLES
		- rhs    The Duration to compare against.
		
		= RETURN VALUE
		- Returns -1 if self < rhs, 0 if self == rhs, +1 if self > rhs.
	**/
	public function __nonzero__():Dynamic;
	/**
		Divide a Duration by a value.
		
		= INPUT VARIABLES
		- rhs    The scalar to divide by.
		
		= RETURN VALUE
		- Returns the scaled Duration.
	**/
	public function __rdiv__(rhs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Print the Duration.
	**/
	public function __repr__():Dynamic;
	/**
		Scale a Duration by a value.
		
		= INPUT VARIABLES
		- lhs    The scalar to multiply by.
		
		= RETURN VALUE
		- Returns the scaled Duration.
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
		Print the Duration.
	**/
	public function __str__():Dynamic;
	/**
		Subtract two Durations.
		
		= ERROR CONDITIONS
		- If the input rhs is not in the same frame, an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The Duration to subtract.
		
		= RETURN VALUE
		- Returns the difference of ourselves and the input Duration.
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
	static public var allowed : Dynamic;
	/**
		Check to see if frames are the same.
		
		= ERROR CONDITIONS
		- If the frame of the rhs Duration is not the same as our frame,
		  an error is thrown.
		
		= INPUT VARIABLES
		- rhs    The Duration to check for the same frame
		- func   The name of the function doing the check.
	**/
	public function checkSameFrame(rhs:Dynamic, func:Dynamic):Dynamic;
	/**
		Return the frame the duration is in.
	**/
	public function frame():Dynamic;
	/**
		Return the number of seconds in the Duration.
	**/
	public function seconds():Dynamic;
}