/* This file is generated, do not edit! */
package matplotlib.testing.jpl_units.epoch;
@:pythonImport("matplotlib.testing.jpl_units.Epoch", "Epoch") extern class Epoch {
	/**
		Add a duration to an Epoch.
		
		= INPUT VARIABLES
		- rhs    The Epoch to subtract.
		
		= RETURN VALUE
		- Returns the difference of ourselves and the input Epoch.
	**/
	public function __add__(rhs:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare two Epoch's.
		
		= INPUT VARIABLES
		- rhs    The Epoch to compare against.
		
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
		Create a new Epoch object.
		
		Build an epoch 1 of 2 ways:
		
		Using seconds past a Julian date:
		#   Epoch( 'ET', sec=1e8, jd=2451545 )
		
		or using a matplotlib day number
		#   Epoch( 'ET', daynum=730119.5 )
		
		
		= ERROR CONDITIONS
		- If the input units are not in the allowed list, an error is thrown.
		
		= INPUT VARIABLES
		- frame    The frame of the epoch.  Must be 'ET' or 'UTC'
		- sec      The number of seconds past the input JD.
		- jd       The Julian date of the epoch.
		- daynum   The matplotlib day number of the epoch.
		- dt       A python datetime instance.
	**/
	@:native("__init__")
	public function ___init__(frame:Dynamic, ?sec:Dynamic, ?jd:Dynamic, ?daynum:Dynamic, ?dt:Dynamic):Dynamic;
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
		Print the Epoch.
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
		Print the Epoch.
	**/
	public function __str__():Dynamic;
	/**
		Subtract two Epoch's or a Duration from an Epoch.
		
		Valid:
		Duration = Epoch - Epoch
		Epoch = Epoch - Duration
		
		= INPUT VARIABLES
		- rhs    The Epoch to subtract.
		
		= RETURN VALUE
		- Returns either the duration between to Epoch's or the a new
		  Epoch that is the result of subtracting a duration from an epoch.
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
	public function convert(frame:Dynamic):Dynamic;
	public function frame():Dynamic;
	public function julianDate(frame:Dynamic):Dynamic;
	/**
		Generate a range of Epoch objects.
		
		Similar to the Python range() method.  Returns the range [
		start, stop ) at the requested step.  Each element will be a
		Epoch object.
		
		= INPUT VARIABLES
		- start    The starting value of the range.
		- stop     The stop value of the range.
		- step     Step to use.
		
		= RETURN VALUE
		- Returns a list contianing the requested Epoch values.
	**/
	static public function range(start:Dynamic, stop:Dynamic, step:Dynamic):Dynamic;
	public function secondsPast(frame:Dynamic, jd:Dynamic):Dynamic;
}