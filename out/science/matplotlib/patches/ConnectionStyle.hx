/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "ConnectionStyle") extern class ConnectionStyle {
	/**
		Creates a piecewise continuous quadratic Bezier path between
		two points. The path has a one passing-through point placed at
		the intersecting point of two lines which cross the start
		and end point, and have a slope of angleA and angleB, respectively.
		The connecting edges are rounded with *rad*.
	**/
	static public function Angle(?angleA:Dynamic, ?angleB:Dynamic, ?rad:Dynamic):Dynamic;
	/**
		Creates a simple quadratic Bezier curve between two
		points. The middle control points is placed at the
		intersecting point of two lines which cross the start and
		end point, and have a slope of angleA and angleB, respectively.
	**/
	static public function Angle3(?angleA:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		Creates a piecewise continuous quadratic Bezier path between
		two points. The path can have two passing-through points, a
		point placed at the distance of armA and angle of angleA from
		point A, another point with respect to point B. The edges are
		rounded with *rad*.
	**/
	static public function Arc(?angleA:Dynamic, ?angleB:Dynamic, ?armA:Dynamic, ?armB:Dynamic, ?rad:Dynamic):Dynamic;
	/**
		Creates a simple quadratic Bezier curve between two
		points. The curve is created so that the middle control point
		(C1) is located at the same distance from the start (C0) and
		end points(C2) and the distance of the C1 to the line
		connecting C0-C2 is *rad* times the distance of C0-C2.
	**/
	static public function Arc3(?rad:Dynamic):Dynamic;
	/**
		A line with *angle* between A and B with *armA* and
		*armB*. One of the arms is extended so that they are connected in
		a right angle. The length of armA is determined by (*armA*
		+ *fraction* x AB distance). Same for armB.
	**/
	static public function Bar(?armA:Dynamic, ?armB:Dynamic, ?fraction:Dynamic, ?angle:Dynamic):Dynamic;
	/**
		A base class for connectionstyle classes. The subclass needs
		to implement a *connect* method whose call signature is::
		
		  connect(posA, posB)
		
		where posA and posB are tuples of x, y coordinates to be
		connected.  The method needs to return a path connecting two
		points. This base class defines a __call__ method, and a few
		helper methods.
	**/
	static public function _Base():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Return the instance of the subclass with the given style name.
	**/
	static public function __new__(cls:Dynamic, stylename:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	static public var _style_list : Dynamic;
	/**
		Return a dictionary of available styles.
	**/
	static public function get_styles():Dynamic;
	/**
		Return the available styles as pretty-printed string.
	**/
	static public function pprint_styles():Dynamic;
	/**
		Register a new style.
	**/
	static public function register(name:Dynamic, style:Dynamic):Dynamic;
}