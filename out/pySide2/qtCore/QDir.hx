/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QDir") extern class QDir {
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
	public function Filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Filters(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function SortFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SortFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var System : Dynamic;
	static public var Time : Dynamic;
	static public var Type : Dynamic;
	static public var TypeMask : Dynamic;
	static public var Unsorted : Dynamic;
	static public var Writable : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function absoluteFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function absolutePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function addResourceSearchPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function addSearchPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canonicalPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cdUp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function cleanPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function current(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dirName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function drives(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function entryInfoList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function entryList(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function exists(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromNativeSeparators(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function home(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function homePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAbsolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isAbsolutePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRelative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isRelativePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRoot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function listSeparator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function makeAbsolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function match(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mkdir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mkpath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nameFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nameFiltersFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function refresh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function relativeFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeRecursively(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rename(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rmdir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rmpath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function root(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function rootPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function searchPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function separator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setCurrent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFilter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNameFilters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setSearchPaths(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSorting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sorting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function temp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function tempPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function toNativeSeparators(args:haxe.extern.Rest<Dynamic>):Dynamic;
}