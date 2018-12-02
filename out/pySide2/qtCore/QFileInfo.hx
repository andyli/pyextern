/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QFileInfo") extern class QFileInfo {
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
	public function absoluteDir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function absoluteFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function absolutePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bundleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function caching(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canonicalFilePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function canonicalPath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function completeBaseName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function completeSuffix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function created(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function exists(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function filePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function groupId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAbsolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBundle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDir(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isExecutable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isHidden(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNativePath(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRelative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isRoot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSymLink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isWritable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastModified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastRead(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function makeAbsolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function owner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ownerId(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function readLink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function refresh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCaching(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function suffix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function symLinkTarget(args:haxe.extern.Rest<Dynamic>):Dynamic;
}