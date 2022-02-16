/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QEasingCurve") extern class QEasingCurve {
	static public var BezierSpline : Dynamic;
	static public var CosineCurve : Dynamic;
	static public var Custom : Dynamic;
	static public var InBack : Dynamic;
	static public var InBounce : Dynamic;
	static public var InCirc : Dynamic;
	static public var InCubic : Dynamic;
	static public var InCurve : Dynamic;
	static public var InElastic : Dynamic;
	static public var InExpo : Dynamic;
	static public var InOutBack : Dynamic;
	static public var InOutBounce : Dynamic;
	static public var InOutCirc : Dynamic;
	static public var InOutCubic : Dynamic;
	static public var InOutElastic : Dynamic;
	static public var InOutExpo : Dynamic;
	static public var InOutQuad : Dynamic;
	static public var InOutQuart : Dynamic;
	static public var InOutQuint : Dynamic;
	static public var InOutSine : Dynamic;
	static public var InQuad : Dynamic;
	static public var InQuart : Dynamic;
	static public var InQuint : Dynamic;
	static public var InSine : Dynamic;
	static public var Linear : Dynamic;
	static public var OutBack : Dynamic;
	static public var OutBounce : Dynamic;
	static public var OutCirc : Dynamic;
	static public var OutCubic : Dynamic;
	static public var OutCurve : Dynamic;
	static public var OutElastic : Dynamic;
	static public var OutExpo : Dynamic;
	static public var OutInBack : Dynamic;
	static public var OutInBounce : Dynamic;
	static public var OutInCirc : Dynamic;
	static public var OutInCubic : Dynamic;
	static public var OutInElastic : Dynamic;
	static public var OutInExpo : Dynamic;
	static public var OutInQuad : Dynamic;
	static public var OutInQuart : Dynamic;
	static public var OutInQuint : Dynamic;
	static public var OutInSine : Dynamic;
	static public var OutQuad : Dynamic;
	static public var OutQuart : Dynamic;
	static public var OutQuint : Dynamic;
	static public var OutSine : Dynamic;
	static public var SineCurve : Dynamic;
	static public var TCBSpline : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function Type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
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
	/**
		addCubicBezierSegment(self, Union[QPointF, QPoint], Union[QPointF, QPoint], Union[QPointF, QPoint])
	**/
	public function addCubicBezierSegment(Union:Dynamic, Union:Dynamic, Union:Dynamic):Void;
	/**
		addTCBSegment(self, Union[QPointF, QPoint], float, float, float)
	**/
	public function addTCBSegment(Union:Dynamic, float:Float, float:Float, float:Float):Void;
	/**
		amplitude(self) -> float
	**/
	public function amplitude():Float;
	/**
		customType(self) -> Callable[[float], float]
	**/
	public function customType():Dynamic;
	/**
		overshoot(self) -> float
	**/
	public function overshoot():Float;
	/**
		period(self) -> float
	**/
	public function period():Float;
	/**
		setAmplitude(self, float)
	**/
	public function setAmplitude(float:Float):Void;
	/**
		setCustomType(self, Callable[[float], float])
	**/
	public function setCustomType(Callable:Dynamic):Void;
	/**
		setOvershoot(self, float)
	**/
	public function setOvershoot(float:Float):Void;
	/**
		setPeriod(self, float)
	**/
	public function setPeriod(float:Float):Void;
	/**
		setType(self, QEasingCurve.Type)
	**/
	public function setType(QEasingCurve:Dynamic):Void;
	/**
		swap(self, QEasingCurve)
	**/
	public function swap(QEasingCurve:Dynamic):Void;
	/**
		toCubicSpline(self) -> List[QPointF]
	**/
	public function toCubicSpline():Dynamic;
	/**
		type(self) -> QEasingCurve.Type
	**/
	public function type():Dynamic;
	/**
		valueForProgress(self, float) -> float
	**/
	public function valueForProgress(float:Float):Float;
}