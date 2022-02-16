/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QDir") extern class QDir {
	static public var AccessMask : Dynamic;
	static public var AllDirs : Dynamic;
	static public var AllEntries : Dynamic;
	static public var CaseSensitive : Dynamic;
	static public var Dirs : Dynamic;
	static public var DirsFirst : Dynamic;
	static public var DirsLast : Dynamic;
	static public var Drives : Dynamic;
	static public var Executable : Dynamic;
	static public var Files : Dynamic;
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
	public function Filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QDir.Filters()
		QDir.Filters(Union[QDir.Filters, QDir.Filter])
		QDir.Filters(QDir.Filters)
	**/
	static public function Filters(args:haxe.extern.Rest<Dynamic>):Void;
	static public var Hidden : Dynamic;
	static public var IgnoreCase : Dynamic;
	static public var LocaleAware : Dynamic;
	static public var Modified : Dynamic;
	static public var Name : Dynamic;
	static public var NoDot : Dynamic;
	static public var NoDotAndDotDot : Dynamic;
	static public var NoDotDot : Dynamic;
	static public var NoFilter : Dynamic;
	static public var NoSort : Dynamic;
	static public var NoSymLinks : Dynamic;
	static public var PermissionMask : Dynamic;
	static public var Readable : Dynamic;
	static public var Reversed : Dynamic;
	static public var Size : Dynamic;
	static public var SortByMask : Dynamic;
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
	public function SortFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QDir.SortFlags()
		QDir.SortFlags(Union[QDir.SortFlags, QDir.SortFlag])
		QDir.SortFlags(QDir.SortFlags)
	**/
	static public function SortFlags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var System : Dynamic;
	static public var Time : Dynamic;
	static public var Type : Dynamic;
	static public var TypeMask : Dynamic;
	static public var Unsorted : Dynamic;
	static public var Writable : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		absoluteFilePath(self, str) -> str
	**/
	public function absoluteFilePath(str:String):String;
	/**
		absolutePath(self) -> str
	**/
	public function absolutePath():String;
	/**
		addSearchPath(str, str)
	**/
	static public function addSearchPath(str:String, str:String):Void;
	/**
		canonicalPath(self) -> str
	**/
	public function canonicalPath():String;
	/**
		cd(self, str) -> bool
	**/
	public function cd(str:String):Bool;
	/**
		cdUp(self) -> bool
	**/
	public function cdUp():Bool;
	/**
		cleanPath(str) -> str
	**/
	static public function cleanPath(str:String):String;
	/**
		count(self) -> int
	**/
	public function count():Int;
	/**
		current() -> QDir
	**/
	static public function current():Dynamic;
	/**
		currentPath() -> str
	**/
	static public function currentPath():String;
	/**
		dirName(self) -> str
	**/
	public function dirName():String;
	/**
		drives() -> List[QFileInfo]
	**/
	static public function drives():Dynamic;
	/**
		entryInfoList(self, filters: Union[QDir.Filters, QDir.Filter] = QDir.NoFilter, sort: Union[QDir.SortFlags, QDir.SortFlag] = QDir.NoSort) -> List[QFileInfo]
		entryInfoList(self, Iterable[str], filters: Union[QDir.Filters, QDir.Filter] = QDir.NoFilter, sort: Union[QDir.SortFlags, QDir.SortFlag] = QDir.NoSort) -> List[QFileInfo]
	**/
	public function entryInfoList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		entryList(self, filters: Union[QDir.Filters, QDir.Filter] = QDir.NoFilter, sort: Union[QDir.SortFlags, QDir.SortFlag] = QDir.NoSort) -> List[str]
		entryList(self, Iterable[str], filters: Union[QDir.Filters, QDir.Filter] = QDir.NoFilter, sort: Union[QDir.SortFlags, QDir.SortFlag] = QDir.NoSort) -> List[str]
	**/
	public function entryList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exists(self) -> bool
		exists(self, str) -> bool
	**/
	public function exists(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		filePath(self, str) -> str
	**/
	public function filePath(str:String):String;
	/**
		filter(self) -> QDir.Filters
	**/
	public function filter():Dynamic;
	/**
		fromNativeSeparators(str) -> str
	**/
	static public function fromNativeSeparators(str:String):String;
	/**
		home() -> QDir
	**/
	static public function home():Dynamic;
	/**
		homePath() -> str
	**/
	static public function homePath():String;
	/**
		isAbsolute(self) -> bool
	**/
	public function isAbsolute():Bool;
	/**
		isAbsolutePath(str) -> bool
	**/
	static public function isAbsolutePath(str:String):Bool;
	/**
		isEmpty(self, filters: Union[QDir.Filters, QDir.Filter] = QDir.AllEntries|QDir.NoDotAndDotDot) -> bool
	**/
	public function isEmpty(?filters:Dynamic):Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isRelative(self) -> bool
	**/
	public function isRelative():Bool;
	/**
		isRelativePath(str) -> bool
	**/
	static public function isRelativePath(str:String):Bool;
	/**
		isRoot(self) -> bool
	**/
	public function isRoot():Bool;
	/**
		listSeparator() -> str
	**/
	static public function listSeparator():String;
	/**
		makeAbsolute(self) -> bool
	**/
	public function makeAbsolute():Bool;
	/**
		match(Iterable[str], str) -> bool
		match(str, str) -> bool
	**/
	static public function match(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		mkdir(self, str) -> bool
	**/
	public function mkdir(str:String):Bool;
	/**
		mkpath(self, str) -> bool
	**/
	public function mkpath(str:String):Bool;
	/**
		nameFilters(self) -> List[str]
	**/
	public function nameFilters():Dynamic;
	/**
		nameFiltersFromString(str) -> List[str]
	**/
	static public function nameFiltersFromString(str:String):Dynamic;
	/**
		path(self) -> str
	**/
	public function path():String;
	/**
		refresh(self)
	**/
	public function refresh():Void;
	/**
		relativeFilePath(self, str) -> str
	**/
	public function relativeFilePath(str:String):String;
	/**
		remove(self, str) -> bool
	**/
	public function remove(str:String):Bool;
	/**
		removeRecursively(self) -> bool
	**/
	public function removeRecursively():Bool;
	/**
		rename(self, str, str) -> bool
	**/
	public function rename(str:String, str:String):Bool;
	/**
		rmdir(self, str) -> bool
	**/
	public function rmdir(str:String):Bool;
	/**
		rmpath(self, str) -> bool
	**/
	public function rmpath(str:String):Bool;
	/**
		root() -> QDir
	**/
	static public function root():Dynamic;
	/**
		rootPath() -> str
	**/
	static public function rootPath():String;
	/**
		searchPaths(str) -> List[str]
	**/
	static public function searchPaths(str:String):Dynamic;
	/**
		separator() -> str
	**/
	static public function separator():String;
	/**
		setCurrent(str) -> bool
	**/
	static public function setCurrent(str:String):Bool;
	/**
		setFilter(self, Union[QDir.Filters, QDir.Filter])
	**/
	public function setFilter(Union:Dynamic):Void;
	/**
		setNameFilters(self, Iterable[str])
	**/
	public function setNameFilters(Iterable:Dynamic):Void;
	/**
		setPath(self, str)
	**/
	public function setPath(str:String):Void;
	/**
		setSearchPaths(str, Iterable[str])
	**/
	static public function setSearchPaths(str:String, Iterable:Dynamic):Void;
	/**
		setSorting(self, Union[QDir.SortFlags, QDir.SortFlag])
	**/
	public function setSorting(Union:Dynamic):Void;
	/**
		sorting(self) -> QDir.SortFlags
	**/
	public function sorting():Dynamic;
	/**
		swap(self, QDir)
	**/
	public function swap(QDir:Dynamic):Void;
	/**
		temp() -> QDir
	**/
	static public function temp():Dynamic;
	/**
		tempPath() -> str
	**/
	static public function tempPath():String;
	/**
		toNativeSeparators(str) -> str
	**/
	static public function toNativeSeparators(str:String):String;
}