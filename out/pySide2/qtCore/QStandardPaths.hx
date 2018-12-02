/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QStandardPaths") extern class QStandardPaths {
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
	public function LocateOption(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function LocateOptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MoviesLocation : Dynamic;
	static public var MusicLocation : Dynamic;
	static public var PicturesLocation : Dynamic;
	static public var RuntimeLocation : Dynamic;
	public function StandardLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var TempLocation : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function displayName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function enableTestMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function findExecutable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isTestModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function locate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function locateAll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function setTestModeEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function standardLocations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function writableLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
}