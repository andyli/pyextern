/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QRegularExpression") extern class QRegularExpression {
	static public var AnchoredMatchOption : Dynamic;
	static public var CaseInsensitiveOption : Dynamic;
	static public var DontAutomaticallyOptimizeOption : Dynamic;
	static public var DontCaptureOption : Dynamic;
	static public var DontCheckSubjectStringMatchOption : Dynamic;
	static public var DotMatchesEverythingOption : Dynamic;
	static public var ExtendedPatternSyntaxOption : Dynamic;
	static public var InvertedGreedinessOption : Dynamic;
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
	public function MatchOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QRegularExpression.MatchOptions()
		QRegularExpression.MatchOptions(Union[QRegularExpression.MatchOptions, QRegularExpression.MatchOption])
		QRegularExpression.MatchOptions(QRegularExpression.MatchOptions)
	**/
	static public function MatchOptions(args:haxe.extern.Rest<Dynamic>):Void;
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
	public function MatchType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MultilineOption : Dynamic;
	static public var NoMatch : Dynamic;
	static public var NoMatchOption : Dynamic;
	static public var NoPatternOption : Dynamic;
	static public var NormalMatch : Dynamic;
	static public var OptimizeOnFirstUsageOption : Dynamic;
	static public var PartialPreferCompleteMatch : Dynamic;
	static public var PartialPreferFirstMatch : Dynamic;
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
	public function PatternOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QRegularExpression.PatternOptions()
		QRegularExpression.PatternOptions(Union[QRegularExpression.PatternOptions, QRegularExpression.PatternOption])
		QRegularExpression.PatternOptions(QRegularExpression.PatternOptions)
	**/
	static public function PatternOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var UseUnicodePropertiesOption : Dynamic;
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
		anchoredPattern(str) -> str
	**/
	static public function anchoredPattern(str:String):String;
	/**
		captureCount(self) -> int
	**/
	public function captureCount():Int;
	/**
		errorString(self) -> str
	**/
	public function errorString():String;
	/**
		escape(str) -> str
	**/
	static public function escape(str:String):String;
	/**
		globalMatch(self, str, offset: int = 0, matchType: QRegularExpression.MatchType = QRegularExpression.NormalMatch, matchOptions: Union[QRegularExpression.MatchOptions, QRegularExpression.MatchOption] = QRegularExpression.NoMatchOption) -> QRegularExpressionMatchIterator
	**/
	public function globalMatch(str:String, ?offset:Dynamic, ?matchType:Dynamic, ?matchOptions:Dynamic):Dynamic;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		match(self, str, offset: int = 0, matchType: QRegularExpression.MatchType = QRegularExpression.NormalMatch, matchOptions: Union[QRegularExpression.MatchOptions, QRegularExpression.MatchOption] = QRegularExpression.NoMatchOption) -> QRegularExpressionMatch
	**/
	public function match(str:String, ?offset:Dynamic, ?matchType:Dynamic, ?matchOptions:Dynamic):Dynamic;
	/**
		namedCaptureGroups(self) -> List[str]
	**/
	public function namedCaptureGroups():Dynamic;
	/**
		optimize(self)
	**/
	public function optimize():Void;
	/**
		pattern(self) -> str
	**/
	public function pattern():String;
	/**
		patternErrorOffset(self) -> int
	**/
	public function patternErrorOffset():Int;
	/**
		patternOptions(self) -> QRegularExpression.PatternOptions
	**/
	public function patternOptions():Dynamic;
	/**
		setPattern(self, str)
	**/
	public function setPattern(str:String):Void;
	/**
		setPatternOptions(self, Union[QRegularExpression.PatternOptions, QRegularExpression.PatternOption])
	**/
	public function setPatternOptions(Union:Dynamic):Void;
	/**
		swap(self, QRegularExpression)
	**/
	public function swap(QRegularExpression:Dynamic):Void;
	/**
		wildcardToRegularExpression(str) -> str
	**/
	static public function wildcardToRegularExpression(str:String):String;
}