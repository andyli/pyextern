/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "ConnectionStyle") extern class ConnectionStyle {
	/**
		Creates a picewise continuous quadratic bezier path between
		two points. The path has a one passing-through point placed at
		the intersecting point of two lines which crosses the start
		(or end) point and has a angle of angleA (or angleB).  The
		connecting edges are rounded with *rad*.
	**/
	static public function Angle(?angleA:Dynamic, ?angleB:Dynamic, ?rad:Dynamic):Dynamic;
	/**
		Creates a simple quadratic bezier curve between two
		points. The middle control points is placed at the
		intersecting point of two lines which crosses the start (or
		end) point and has a angle of angleA (or angleB).
	**/
	static public function Angle3(?angleA:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		Creates a picewise continuous quadratic bezier path between
		two points. The path can have two passing-through points, a
		point placed at the distance of armA and angle of angleA from
		point A, another point with respect to point B. The edges are
		rounded with *rad*.
	**/
	static public function Arc(?angleA:Dynamic, ?angleB:Dynamic, ?armA:Dynamic, ?armB:Dynamic, ?rad:Dynamic):Dynamic;
	/**
		Creates a simple quadratic bezier curve between two
		points. The curve is created so that the middle contol points
		(C1) is located at the same distance from the start (C0) and
		end points(C2) and the distance of the C1 to the line
		connecting C0-C2 is *rad* times the distance of C0-C2.
	**/
	static public function Arc3(?rad:Dynamic):Dynamic;
	/**
		A line with *angle* between A and B with *armA* and
		*armB*. One of the arm is extend so that they are connected in
		a right angle. The length of armA is determined by (*armA*
		+ *fraction* x AB distance). Same for armB.
	**/
	static public function Bar(?armA:Dynamic, ?armB:Dynamic, ?fraction:Dynamic, ?angle:Dynamic):Dynamic;
	/**
		A base class for connectionstyle classes. The dervided needs
		to implement a *connect* methods whose call signature is::
		
		  connect(posA, posB)
		
		where posA and posB are tuples of x, y coordinates to be
		connected.  The methods needs to return a path connecting two
		points. This base class defines a __call__ method, and few
		helper methods.
	**/
	static public function _Base():Dynamic;
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
		return the instance of the subclass with the given style name.
	**/
	static public function __new__(self:Dynamic, stylename:Dynamic, kw:Dynamic):Dynamic;
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
	static public var _style_list : Dynamic;
	/**
		A class method which returns a dictionary of available styles.
	**/
	static public function get_styles():Dynamic;
	/**
		A class method which returns a string of the available styles.
	**/
	static public function pprint_styles():Dynamic;
	/**
		Register a new style.
	**/
	static public function register(name:Dynamic, style:Dynamic):Dynamic;
}