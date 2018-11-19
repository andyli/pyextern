/* This file is generated, do not edit! */
package pyQt5.uic.properties;
@:pythonImport("PyQt5.uic.properties", "Properties") extern class Properties {
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(factory:Dynamic, qtcore_module:Dynamic, qtgui_module:Dynamic, qtwidgets_module:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(factory:Dynamic, qtcore_module:Dynamic, qtgui_module:Dynamic, qtwidgets_module:Dynamic):Void;
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
	public function _bool(prop:Dynamic):Dynamic;
	public function _brush(prop:Dynamic):Dynamic;
	public function _char(prop:Dynamic, ?notr:Dynamic):Dynamic;
	public function _color(prop:Dynamic):Dynamic;
	public function _cstring(prop:Dynamic):Dynamic;
	public function _cursor(prop:Dynamic):Dynamic;
	public function _cursorShape(prop:Dynamic):Dynamic;
	public function _date(prop:Dynamic):Dynamic;
	public function _datetime(prop:Dynamic):Dynamic;
	public function _delayed_property(widget:Dynamic, prop:Dynamic):Dynamic;
	public function _double(prop:Dynamic):Dynamic;
	public function _enum(prop:Dynamic):Dynamic;
	public function _font(prop:Dynamic):Dynamic;
	static public var _font_attributes : Dynamic;
	public function _getChild(elem_tag:Dynamic, elem:Dynamic, name:Dynamic, ?_default:Dynamic):Dynamic;
	public function _gradient(prop:Dynamic):Dynamic;
	public function _iconset(prop:Dynamic):Dynamic;
	public function _ignore(widget:Dynamic, prop:Dynamic):Dynamic;
	public function _locale(prop:Dynamic):Dynamic;
	public function _longLong(prop:Dynamic):Dynamic;
	public function _number(prop:Dynamic):Dynamic;
	public function _palette(prop:Dynamic):Dynamic;
	public function _pixmap(prop:Dynamic):Dynamic;
	public function _point(prop:Dynamic):Dynamic;
	public function _pointf(prop:Dynamic):Dynamic;
	public function _pyEnumMember(cpp_name:Dynamic):Dynamic;
	public function _rect(prop:Dynamic):Dynamic;
	public function _rectf(prop:Dynamic):Dynamic;
	public function _set(prop:Dynamic):Dynamic;
	public function _setViaSetProperty(widget:Dynamic, prop:Dynamic):Dynamic;
	public function _size(prop:Dynamic):Dynamic;
	public function _sizef(prop:Dynamic):Dynamic;
	public function _sizepolicy(prop:Dynamic, widget:Dynamic):Dynamic;
	public function _string(prop:Dynamic, ?notr:Dynamic):Dynamic;
	public function _stringlist(prop:Dynamic):Dynamic;
	public function _time(prop:Dynamic):Dynamic;
	public function _uInt(prop:Dynamic):Dynamic;
	public function _uLongLong(prop:Dynamic):Dynamic;
	public function _url(prop:Dynamic):Dynamic;
	public function bottomMargin(widget:Dynamic, prop:Dynamic):Dynamic;
	public function buddy(widget:Dynamic, prop:Dynamic):Dynamic;
	public function convert(prop:Dynamic, ?widget:Dynamic):Dynamic;
	public function currentIndex(widget:Dynamic, prop:Dynamic):Dynamic;
	public function currentRow(widget:Dynamic, prop:Dynamic):Dynamic;
	public function geometry(widget:Dynamic, prop:Dynamic):Dynamic;
	public function getAttribute(elem:Dynamic, name:Dynamic, ?_default:Dynamic):Dynamic;
	public function getProperty(elem:Dynamic, name:Dynamic, ?_default:Dynamic):Dynamic;
	public function horizontalSpacing(widget:Dynamic, prop:Dynamic):Dynamic;
	public function intValue(widget:Dynamic, prop:Dynamic):Dynamic;
	public function isWrapping(widget:Dynamic, prop:Dynamic):Dynamic;
	public function leftMargin(widget:Dynamic, prop:Dynamic):Dynamic;
	public function margin(widget:Dynamic, prop:Dynamic):Dynamic;
	public function objectName(widget:Dynamic, prop:Dynamic):Dynamic;
	public function orientation(widget:Dynamic, prop:Dynamic):Dynamic;
	public function pyuicMargins(widget:Dynamic, prop:Dynamic):Dynamic;
	public function pyuicSpacing(widget:Dynamic, prop:Dynamic):Dynamic;
	public function reset():Dynamic;
	public function rightMargin(widget:Dynamic, prop:Dynamic):Dynamic;
	public function setProperties(widget:Dynamic, elem:Dynamic):Dynamic;
	/**
		Set the base directory to be used for all relative filenames. 
	**/
	public function set_base_dir(base_dir:Dynamic):Dynamic;
	public function showDropIndicator(widget:Dynamic, prop:Dynamic):Dynamic;
	public function spacing(widget:Dynamic, prop:Dynamic):Dynamic;
	public function tabSpacing(widget:Dynamic, prop:Dynamic):Dynamic;
	public function topMargin(widget:Dynamic, prop:Dynamic):Dynamic;
	public function value(widget:Dynamic, prop:Dynamic):Dynamic;
	public function verticalSpacing(widget:Dynamic, prop:Dynamic):Dynamic;
}