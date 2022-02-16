/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "ArrowStyle") extern class ArrowStyle {
	/**
		An arrow with vertical bars ``|`` at both ends.
	**/
	static public function BarAB(?widthA:Dynamic, ?angleA:Dynamic, ?widthB:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		An arrow with an outward square bracket at its start.
	**/
	static public function BracketA(?widthA:Dynamic, ?lengthA:Dynamic, ?angleA:Dynamic):Dynamic;
	/**
		An arrow with outward square brackets at both ends.
	**/
	static public function BracketAB(?widthA:Dynamic, ?lengthA:Dynamic, ?angleA:Dynamic, ?widthB:Dynamic, ?lengthB:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		An arrow with an outward square bracket at its end.
	**/
	static public function BracketB(?widthB:Dynamic, ?lengthB:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		An arrow with an outward square bracket at its start and a head at
		the end.
	**/
	static public function BracketCurve(?widthA:Dynamic, ?lengthA:Dynamic, ?angleA:Dynamic):Dynamic;
	/**
		A simple curve without any arrow head.
	**/
	static public function Curve():Dynamic;
	/**
		An arrow with a head at its begin point.
	**/
	static public function CurveA(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		An arrow with heads both at the begin and the end point.
	**/
	static public function CurveAB(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		An arrow with a head at its end point.
	**/
	static public function CurveB(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		An arrow with an outward square bracket at its end and a head at
		the start.
	**/
	static public function CurveBracket(?widthB:Dynamic, ?lengthB:Dynamic, ?angleB:Dynamic):Dynamic;
	/**
		An arrow with filled triangle head at the begin.
	**/
	static public function CurveFilledA(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		An arrow with filled triangle heads at both ends.
	**/
	static public function CurveFilledAB(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		An arrow with filled triangle head at the end.
	**/
	static public function CurveFilledB(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
	/**
		A fancy arrow. Only works with a quadratic Bezier curve.
	**/
	static public function Fancy(?head_length:Dynamic, ?head_width:Dynamic, ?tail_width:Dynamic):Dynamic;
	/**
		A simple arrow. Only works with a quadratic Bezier curve.
	**/
	static public function Simple(?head_length:Dynamic, ?head_width:Dynamic, ?tail_width:Dynamic):Dynamic;
	/**
		Wedge(?) shape. Only works with a quadratic Bezier curve.  The
		begin point has a width of the tail_width and the end point has a
		width of 0. At the middle, the width is shrink_factor*tail_width.
	**/
	static public function Wedge(?tail_width:Dynamic, ?shrink_factor:Dynamic):Dynamic;
	/**
		Arrow Transmuter Base class
		
		ArrowTransmuterBase and its derivatives are used to make a fancy
		arrow around a given path. The __call__ method returns a path
		(which will be used to create a PathPatch instance) and a boolean
		value indicating the path is open therefore is not fillable.  This
		class is not an artist and actual drawing of the fancy arrow is
		done by the FancyArrowPatch class.
	**/
	static public function _Base():Dynamic;
	/**
		A simple arrow which will work with any path instance. The
		returned path is the concatenation of the original path, and at
		most two paths representing the arrow head or bracket at the begin
		point and at the end point. The arrow heads can be either open
		or closed.
	**/
	static public function _Curve(?head_length:Dynamic, ?head_width:Dynamic, ?widthA:Dynamic, ?widthB:Dynamic, ?lengthA:Dynamic, ?lengthB:Dynamic, ?angleA:Dynamic, ?angleB:Dynamic, ?scaleA:Dynamic, ?scaleB:Dynamic):Dynamic;
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