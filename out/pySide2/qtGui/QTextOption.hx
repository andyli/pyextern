/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QTextOption") extern class QTextOption {
	static public var AddSpaceForLineAndParagraphSeparators : Dynamic;
	static public var CenterTab : Dynamic;
	static public var DelimiterTab : Dynamic;
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var IncludeTrailingSpaces : Dynamic;
	static public var LeftTab : Dynamic;
	static public var ManualWrap : Dynamic;
	static public var NoWrap : Dynamic;
	static public var RightTab : Dynamic;
	static public var ShowLineAndParagraphSeparators : Dynamic;
	static public var ShowTabsAndSpaces : Dynamic;
	static public var SuppressColors : Dynamic;
	public function Tab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function TabType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WordWrap : Dynamic;
	static public var WrapAnywhere : Dynamic;
	static public var WrapAtWordBoundaryOrAnywhere : Dynamic;
	public function WrapMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function alignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTabArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTabStop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUseDesignMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWrapMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabArray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabStop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textDirection(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function useDesignMetrics(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function wrapMode(args:haxe.extern.Rest<Dynamic>):Dynamic;
}