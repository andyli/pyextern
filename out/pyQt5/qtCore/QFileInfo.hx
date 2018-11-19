/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QFileInfo") extern class QFileInfo {
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
		absoluteDir(self) -> QDir
	**/
	public function absoluteDir():Dynamic;
	/**
		absoluteFilePath(self) -> str
	**/
	public function absoluteFilePath():String;
	/**
		absolutePath(self) -> str
	**/
	public function absolutePath():String;
	/**
		baseName(self) -> str
	**/
	public function baseName():String;
	/**
		bundleName(self) -> str
	**/
	public function bundleName():String;
	/**
		caching(self) -> bool
	**/
	public function caching():Bool;
	/**
		canonicalFilePath(self) -> str
	**/
	public function canonicalFilePath():String;
	/**
		canonicalPath(self) -> str
	**/
	public function canonicalPath():String;
	/**
		completeBaseName(self) -> str
	**/
	public function completeBaseName():String;
	/**
		completeSuffix(self) -> str
	**/
	public function completeSuffix():String;
	/**
		created(self) -> QDateTime
	**/
	public function created():Dynamic;
	/**
		dir(self) -> QDir
	**/
	public function dir():Dynamic;
	/**
		exists(self) -> bool
		exists(str) -> bool
	**/
	static public function exists(args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		fileName(self) -> str
	**/
	public function fileName():String;
	/**
		filePath(self) -> str
	**/
	public function filePath():String;
	/**
		group(self) -> str
	**/
	public function group():String;
	/**
		groupId(self) -> int
	**/
	public function groupId():Int;
	/**
		isAbsolute(self) -> bool
	**/
	public function isAbsolute():Bool;
	/**
		isBundle(self) -> bool
	**/
	public function isBundle():Bool;
	/**
		isDir(self) -> bool
	**/
	public function isDir():Bool;
	/**
		isExecutable(self) -> bool
	**/
	public function isExecutable():Bool;
	/**
		isFile(self) -> bool
	**/
	public function isFile():Bool;
	/**
		isHidden(self) -> bool
	**/
	public function isHidden():Bool;
	/**
		isNativePath(self) -> bool
	**/
	public function isNativePath():Bool;
	/**
		isReadable(self) -> bool
	**/
	public function isReadable():Bool;
	/**
		isRelative(self) -> bool
	**/
	public function isRelative():Bool;
	/**
		isRoot(self) -> bool
	**/
	public function isRoot():Bool;
	/**
		isSymLink(self) -> bool
	**/
	public function isSymLink():Bool;
	/**
		isWritable(self) -> bool
	**/
	public function isWritable():Bool;
	/**
		lastModified(self) -> QDateTime
	**/
	public function lastModified():Dynamic;
	/**
		lastRead(self) -> QDateTime
	**/
	public function lastRead():Dynamic;
	/**
		makeAbsolute(self) -> bool
	**/
	public function makeAbsolute():Bool;
	/**
		owner(self) -> str
	**/
	public function owner():String;
	/**
		ownerId(self) -> int
	**/
	public function ownerId():Int;
	/**
		path(self) -> str
	**/
	public function path():String;
	/**
		permission(self, Union[QFileDevice.Permissions, QFileDevice.Permission]) -> bool
	**/
	public function permission(Union:Dynamic):Bool;
	/**
		permissions(self) -> QFileDevice.Permissions
	**/
	public function permissions():Dynamic;
	/**
		refresh(self)
	**/
	public function refresh():Void;
	/**
		setCaching(self, bool)
	**/
	public function setCaching(bool:Bool):Void;
	/**
		setFile(self, str)
		setFile(self, QFile)
		setFile(self, QDir, str)
	**/
	public function setFile(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		size(self) -> int
	**/
	public function size():Int;
	/**
		suffix(self) -> str
	**/
	public function suffix():String;
	/**
		swap(self, QFileInfo)
	**/
	public function swap(QFileInfo:Dynamic):Void;
	/**
		symLinkTarget(self) -> str
	**/
	public function symLinkTarget():String;
}