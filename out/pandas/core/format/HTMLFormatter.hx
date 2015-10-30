/* This file is generated, do not edit! */
package pandas.core.format;
@:pythonImport("pandas.core.format", "HTMLFormatter") extern class HTMLFormatter {
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
	public function ___init__(formatter:Dynamic, ?classes:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?notebook:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _get_formatter(i:Dynamic):Dynamic;
	public function _write_body(indent:Dynamic):Dynamic;
	public function _write_cell(s:Dynamic, ?kind:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	public function _write_header(indent:Dynamic):Dynamic;
	public function _write_hierarchical_rows(fmt_values:Dynamic, indent:Dynamic):Dynamic;
	public function _write_regular_rows(fmt_values:Dynamic, indent:Dynamic):Dynamic;
	static public var indent_delta : Dynamic;
	static public var is_truncated : Dynamic;
	public var should_show_dimensions : Dynamic;
	static public var show_dimensions : Dynamic;
	public function write(s:Dynamic, ?indent:Dynamic):Dynamic;
	public function write_result(buf:Dynamic):Dynamic;
	public function write_td(s:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	public function write_th(s:Dynamic, ?indent:Dynamic, ?tags:Dynamic):Dynamic;
	public function write_tr(line:Dynamic, ?indent:Dynamic, ?indent_delta:Dynamic, ?header:Dynamic, ?align:Dynamic, ?tags:Dynamic, ?nindex_levels:Dynamic):Dynamic;
}