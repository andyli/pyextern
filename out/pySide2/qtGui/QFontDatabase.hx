/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QFontDatabase") extern class QFontDatabase {
	static public var Any : Dynamic;
	static public var Arabic : Dynamic;
	static public var Armenian : Dynamic;
	static public var Bengali : Dynamic;
	static public var Cyrillic : Dynamic;
	static public var Devanagari : Dynamic;
	static public var FixedFont : Dynamic;
	static public var GeneralFont : Dynamic;
	static public var Georgian : Dynamic;
	static public var Greek : Dynamic;
	static public var Gujarati : Dynamic;
	static public var Gurmukhi : Dynamic;
	static public var Hebrew : Dynamic;
	static public var Japanese : Dynamic;
	static public var Kannada : Dynamic;
	static public var Khmer : Dynamic;
	static public var Korean : Dynamic;
	static public var Lao : Dynamic;
	static public var Latin : Dynamic;
	static public var Malayalam : Dynamic;
	static public var Myanmar : Dynamic;
	static public var Nko : Dynamic;
	static public var Ogham : Dynamic;
	static public var Oriya : Dynamic;
	static public var Other : Dynamic;
	static public var Runic : Dynamic;
	static public var SimplifiedChinese : Dynamic;
	static public var Sinhala : Dynamic;
	static public var SmallestReadableFont : Dynamic;
	static public var Symbol : Dynamic;
	static public var Syriac : Dynamic;
	public function SystemFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Tamil : Dynamic;
	static public var Telugu : Dynamic;
	static public var Thaana : Dynamic;
	static public var Thai : Dynamic;
	static public var Tibetan : Dynamic;
	static public var TitleFont : Dynamic;
	static public var TraditionalChinese : Dynamic;
	static public var Vietnamese : Dynamic;
	public function WritingSystem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var WritingSystemsCount : Dynamic;
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
	static public function addApplicationFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function addApplicationFontFromData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function applicationFontFamilies(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function families(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasFamily(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isBitmapScalable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isFixedPitch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isPrivateFamily(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isScalable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSmoothlyScalable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function italic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pointSizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removeAllApplicationFonts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function removeApplicationFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function smoothSizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function standardSizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function styleString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function styles(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function supportsThreadedFontRendering(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function systemFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function weight(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function writingSystemName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function writingSystemSample(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function writingSystems(args:haxe.extern.Rest<Dynamic>):Dynamic;
}