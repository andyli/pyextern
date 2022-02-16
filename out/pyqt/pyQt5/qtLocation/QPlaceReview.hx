/* This file is generated, do not edit! */
package pyQt5.qtLocation;
@:pythonImport("PyQt5.QtLocation", "QPlaceReview") extern class QPlaceReview {
	static public var CustomType : Dynamic;
	static public var EditorialType : Dynamic;
	static public var ImageType : Dynamic;
	static public var NoType : Dynamic;
	static public var ReviewType : Dynamic;
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
		attribution(self) -> str
	**/
	public function attribution():String;
	/**
		dateTime(self) -> QDateTime
	**/
	public function dateTime():Dynamic;
	/**
		language(self) -> str
	**/
	public function language():String;
	/**
		rating(self) -> float
	**/
	public function rating():Float;
	/**
		reviewId(self) -> str
	**/
	public function reviewId():String;
	/**
		setAttribution(self, str)
	**/
	public function setAttribution(str:String):Void;
	/**
		setDateTime(self, Union[QDateTime, datetime.datetime])
	**/
	public function setDateTime(Union:Dynamic):Void;
	/**
		setLanguage(self, str)
	**/
	public function setLanguage(str:String):Void;
	/**
		setRating(self, float)
	**/
	public function setRating(float:Float):Void;
	/**
		setReviewId(self, str)
	**/
	public function setReviewId(str:String):Void;
	/**
		setSupplier(self, QPlaceSupplier)
	**/
	public function setSupplier(QPlaceSupplier:Dynamic):Void;
	/**
		setText(self, str)
	**/
	public function setText(str:String):Void;
	/**
		setTitle(self, str)
	**/
	public function setTitle(str:String):Void;
	/**
		setUser(self, QPlaceUser)
	**/
	public function setUser(QPlaceUser:Dynamic):Void;
	/**
		supplier(self) -> QPlaceSupplier
	**/
	public function supplier():Dynamic;
	/**
		text(self) -> str
	**/
	public function text():String;
	/**
		title(self) -> str
	**/
	public function title():String;
	/**
		type(self) -> QPlaceContent.Type
	**/
	public function type():Dynamic;
	/**
		user(self) -> QPlaceUser
	**/
	public function user():Dynamic;
}