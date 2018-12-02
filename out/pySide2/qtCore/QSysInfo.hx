/* This file is generated, do not edit! */
package pySide2.qtCore;
@:pythonImport("PySide2.QtCore", "QSysInfo") extern class QSysInfo {
	static public var BigEndian : Dynamic;
	static public var ByteOrder : Dynamic;
	public function Endian(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LittleEndian : Dynamic;
	static public var MV_10_0 : Dynamic;
	static public var MV_10_1 : Dynamic;
	static public var MV_10_10 : Dynamic;
	static public var MV_10_11 : Dynamic;
	static public var MV_10_12 : Dynamic;
	static public var MV_10_2 : Dynamic;
	static public var MV_10_3 : Dynamic;
	static public var MV_10_4 : Dynamic;
	static public var MV_10_5 : Dynamic;
	static public var MV_10_6 : Dynamic;
	static public var MV_10_7 : Dynamic;
	static public var MV_10_8 : Dynamic;
	static public var MV_10_9 : Dynamic;
	static public var MV_9 : Dynamic;
	static public var MV_CHEETAH : Dynamic;
	static public var MV_ELCAPITAN : Dynamic;
	static public var MV_IOS : Dynamic;
	static public var MV_IOS_10_0 : Dynamic;
	static public var MV_IOS_4_3 : Dynamic;
	static public var MV_IOS_5_0 : Dynamic;
	static public var MV_IOS_5_1 : Dynamic;
	static public var MV_IOS_6_0 : Dynamic;
	static public var MV_IOS_6_1 : Dynamic;
	static public var MV_IOS_7_0 : Dynamic;
	static public var MV_IOS_7_1 : Dynamic;
	static public var MV_IOS_8_0 : Dynamic;
	static public var MV_IOS_8_1 : Dynamic;
	static public var MV_IOS_8_2 : Dynamic;
	static public var MV_IOS_8_3 : Dynamic;
	static public var MV_IOS_8_4 : Dynamic;
	static public var MV_IOS_9_0 : Dynamic;
	static public var MV_IOS_9_1 : Dynamic;
	static public var MV_IOS_9_2 : Dynamic;
	static public var MV_IOS_9_3 : Dynamic;
	static public var MV_JAGUAR : Dynamic;
	static public var MV_LEOPARD : Dynamic;
	static public var MV_LION : Dynamic;
	static public var MV_MAVERICKS : Dynamic;
	static public var MV_MOUNTAINLION : Dynamic;
	static public var MV_None : Dynamic;
	static public var MV_PANTHER : Dynamic;
	static public var MV_PUMA : Dynamic;
	static public var MV_SIERRA : Dynamic;
	static public var MV_SNOWLEOPARD : Dynamic;
	static public var MV_TIGER : Dynamic;
	static public var MV_Unknown : Dynamic;
	static public var MV_YOSEMITE : Dynamic;
	public function MacVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MacintoshVersion : Dynamic;
	public function Sizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WordSize : Dynamic;
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
	static public function buildAbi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function buildCpuArchitecture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function currentCpuArchitecture(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function kernelType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function kernelVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function macVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function machineHostName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function prettyProductName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function productType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function productVersion(args:haxe.extern.Rest<Dynamic>):Dynamic;
}