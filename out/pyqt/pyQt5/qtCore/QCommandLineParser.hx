/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QCommandLineParser") extern class QCommandLineParser {
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
	public function OptionsAfterPositionalArgumentsMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ParseAsCompactedShortOptions : Dynamic;
	static public var ParseAsLongOptions : Dynamic;
	static public var ParseAsOptions : Dynamic;
	static public var ParseAsPositionalArguments : Dynamic;
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
	public function SingleDashWordOptionMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		addHelpOption(self) -> QCommandLineOption
	**/
	public function addHelpOption():Dynamic;
	/**
		addOption(self, QCommandLineOption) -> bool
	**/
	public function addOption(QCommandLineOption:Dynamic):Bool;
	/**
		addOptions(self, Iterable[QCommandLineOption]) -> bool
	**/
	public function addOptions(Iterable:Dynamic):Bool;
	/**
		addPositionalArgument(self, str, str, syntax: str = '')
	**/
	public function addPositionalArgument(str:String, str:String, ?syntax:Dynamic):Void;
	/**
		addVersionOption(self) -> QCommandLineOption
	**/
	public function addVersionOption():Dynamic;
	/**
		applicationDescription(self) -> str
	**/
	public function applicationDescription():String;
	/**
		clearPositionalArguments(self)
	**/
	public function clearPositionalArguments():Void;
	/**
		errorText(self) -> str
	**/
	public function errorText():String;
	/**
		helpText(self) -> str
	**/
	public function helpText():String;
	/**
		isSet(self, str) -> bool
		isSet(self, QCommandLineOption) -> bool
	**/
	public function isSet(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		optionNames(self) -> List[str]
	**/
	public function optionNames():Dynamic;
	/**
		parse(self, Iterable[str]) -> bool
	**/
	public function parse(Iterable:Dynamic):Bool;
	/**
		positionalArguments(self) -> List[str]
	**/
	public function positionalArguments():Dynamic;
	/**
		process(self, Iterable[str])
		process(self, QCoreApplication)
	**/
	public function process(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		setApplicationDescription(self, str)
	**/
	public function setApplicationDescription(str:String):Void;
	/**
		setOptionsAfterPositionalArgumentsMode(self, QCommandLineParser.OptionsAfterPositionalArgumentsMode)
	**/
	public function setOptionsAfterPositionalArgumentsMode(QCommandLineParser:Dynamic):Void;
	/**
		setSingleDashWordOptionMode(self, QCommandLineParser.SingleDashWordOptionMode)
	**/
	public function setSingleDashWordOptionMode(QCommandLineParser:Dynamic):Void;
	/**
		showHelp(self, exitCode: int = 0)
	**/
	public function showHelp(?exitCode:Dynamic):Void;
	/**
		showVersion(self)
	**/
	public function showVersion():Void;
	/**
		unknownOptionNames(self) -> List[str]
	**/
	public function unknownOptionNames():Dynamic;
	/**
		value(self, str) -> str
		value(self, QCommandLineOption) -> str
	**/
	public function value(args:haxe.extern.Rest<Dynamic>):String;
	/**
		values(self, str) -> List[str]
		values(self, QCommandLineOption) -> List[str]
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}