/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QRawFont") extern class QRawFont {
	public function AntialiasingType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var KernedAdvances : Dynamic;
	public function LayoutFlag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function LayoutFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var PixelAntialiasing : Dynamic;
	static public var SeparateAdvances : Dynamic;
	static public var SubPixelAntialiasing : Dynamic;
	static public var UseDesignMetrics : Dynamic;
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
	public function advancesForGlyphIndexes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function alphaMapForGlyph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ascent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function averageCharWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function boundingRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function descent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function familyName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fontTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function glyphIndexesForString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hintingPreference(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isValid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function leading(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lineThickness(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadFromData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function loadFromFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function maxCharWidth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pathForGlyph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pixelSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setPixelSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function style(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function styleName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportedWritingSystems(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function supportsCharacter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function underlinePosition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unitsPerEm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function weight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function xHeight(args:haxe.extern.Rest<Dynamic>):Dynamic;
}