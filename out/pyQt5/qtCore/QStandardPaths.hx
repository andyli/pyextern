/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QStandardPaths") extern class QStandardPaths {
	static public var AppConfigLocation : Dynamic;
	static public var AppDataLocation : Dynamic;
	static public var AppLocalDataLocation : Dynamic;
	static public var ApplicationsLocation : Dynamic;
	static public var CacheLocation : Dynamic;
	static public var ConfigLocation : Dynamic;
	static public var DataLocation : Dynamic;
	static public var DesktopLocation : Dynamic;
	static public var DocumentsLocation : Dynamic;
	static public var DownloadLocation : Dynamic;
	static public var FontsLocation : Dynamic;
	static public var GenericCacheLocation : Dynamic;
	static public var GenericConfigLocation : Dynamic;
	static public var GenericDataLocation : Dynamic;
	static public var HomeLocation : Dynamic;
	static public var LocateDirectory : Dynamic;
	static public var LocateFile : Dynamic;
	/**
		int(x=0) -> integer
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
	public function LocateOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QStandardPaths.LocateOptions()
		QStandardPaths.LocateOptions(Union[QStandardPaths.LocateOptions, QStandardPaths.LocateOption])
		QStandardPaths.LocateOptions(QStandardPaths.LocateOptions)
	**/
	static public function LocateOptions(args:haxe.extern.Rest<Dynamic>):Void;
	static public var MoviesLocation : Dynamic;
	static public var MusicLocation : Dynamic;
	static public var PicturesLocation : Dynamic;
	static public var RuntimeLocation : Dynamic;
	/**
		int(x=0) -> integer
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
	public function StandardLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TempLocation : Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		displayName(QStandardPaths.StandardLocation) -> str
	**/
	static public function displayName(QStandardPaths:Dynamic):String;
	/**
		enableTestMode(bool)
	**/
	static public function enableTestMode(bool:Bool):Void;
	/**
		findExecutable(str, paths: Iterable[str] = []) -> str
	**/
	static public function findExecutable(str:String, ?paths:Dynamic):String;
	/**
		locate(QStandardPaths.StandardLocation, str, options: QStandardPaths.LocateOptions = QStandardPaths.LocateFile) -> str
	**/
	static public function locate(QStandardPaths:Dynamic, str:String, ?options:Dynamic):String;
	/**
		locateAll(QStandardPaths.StandardLocation, str, options: QStandardPaths.LocateOptions = QStandardPaths.LocateFile) -> List[str]
	**/
	static public function locateAll(QStandardPaths:Dynamic, str:String, ?options:Dynamic):Dynamic;
	/**
		setTestModeEnabled(bool)
	**/
	static public function setTestModeEnabled(bool:Bool):Void;
	/**
		standardLocations(QStandardPaths.StandardLocation) -> List[str]
	**/
	static public function standardLocations(QStandardPaths:Dynamic):Dynamic;
	/**
		writableLocation(QStandardPaths.StandardLocation) -> str
	**/
	static public function writableLocation(QStandardPaths:Dynamic):String;
}