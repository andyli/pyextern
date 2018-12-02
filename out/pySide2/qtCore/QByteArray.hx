/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QByteArray") extern class QByteArray {
	static public var Base64Encoding : Dynamic;
	public function Base64Option(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Base64Options(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Base64UrlEncoding : Dynamic;
	static public var KeepTrailingEquals : Dynamic;
	static public var OmitTrailingEquals : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function at(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function capacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cbegin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function chop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function endsWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromBase64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromHex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromPercentEncoding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromRawData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSharedWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lastIndexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function left(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function leftJustified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function number(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prepend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function repeated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function reserve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function right(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rightJustified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRawData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function simplified(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function startsWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toBase64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toDouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toFloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toHex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toLong(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toLongLong(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toLower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toPercentEncoding(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toShort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUInt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toULong(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toULongLong(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUShort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toUpper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function trimmed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function truncate(args:haxe.extern.Rest<Dynamic>):Dynamic;
}