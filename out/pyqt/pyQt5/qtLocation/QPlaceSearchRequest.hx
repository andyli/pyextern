/* This file is generated, do not edit! */
package pyQt5.qtLocation;
@:pythonImport("PyQt5.QtLocation", "QPlaceSearchRequest") extern class QPlaceSearchRequest {
	static public var DistanceHint : Dynamic;
	static public var LexicalPlaceNameHint : Dynamic;
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
	public function RelevanceHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var UnspecifiedHint : Dynamic;
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
		categories(self) -> List[QPlaceCategory]
	**/
	public function categories():Dynamic;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		limit(self) -> int
	**/
	public function limit():Int;
	/**
		recommendationId(self) -> str
	**/
	public function recommendationId():String;
	/**
		relevanceHint(self) -> QPlaceSearchRequest.RelevanceHint
	**/
	public function relevanceHint():Dynamic;
	/**
		searchArea(self) -> QGeoShape
	**/
	public function searchArea():Dynamic;
	/**
		searchContext(self) -> Any
	**/
	public function searchContext():Dynamic;
	/**
		searchTerm(self) -> str
	**/
	public function searchTerm():String;
	/**
		setCategories(self, Iterable[QPlaceCategory])
	**/
	public function setCategories(Iterable:Dynamic):Void;
	/**
		setCategory(self, QPlaceCategory)
	**/
	public function setCategory(QPlaceCategory:Dynamic):Void;
	/**
		setLimit(self, int)
	**/
	public function setLimit(int:Int):Void;
	/**
		setRecommendationId(self, str)
	**/
	public function setRecommendationId(str:String):Void;
	/**
		setRelevanceHint(self, QPlaceSearchRequest.RelevanceHint)
	**/
	public function setRelevanceHint(QPlaceSearchRequest:Dynamic):Void;
	/**
		setSearchArea(self, QGeoShape)
	**/
	public function setSearchArea(QGeoShape:Dynamic):Void;
	/**
		setSearchContext(self, Any)
	**/
	public function setSearchContext(Any:Dynamic):Void;
	/**
		setSearchTerm(self, str)
	**/
	public function setSearchTerm(str:String):Void;
	/**
		setVisibilityScope(self, Union[QLocation.VisibilityScope, QLocation.Visibility])
	**/
	public function setVisibilityScope(Union:Dynamic):Void;
	/**
		visibilityScope(self) -> QLocation.VisibilityScope
	**/
	public function visibilityScope():Dynamic;
}