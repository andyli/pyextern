/* This file is generated, do not edit! */
package docutils.writers.latex2e;
@:pythonImport("docutils.writers.latex2e", "Table") extern class Table {
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
	public function ___init__(translator:Dynamic, latex_type:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(translator:Dynamic, latex_type:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function close():Dynamic;
	public function depart_row():Dynamic;
	public function depart_thead():Dynamic;
	public function get(attr:Dynamic):Dynamic;
	public function get_caption():Dynamic;
	public function get_closing():Dynamic;
	/**
		Return column specification for longtable.
		
		Assumes reST line length being 80 characters.
		Table width is hairy.
		
		=== ===
		ABC DEF
		=== ===
		
		usually gets to narrow, therefore we add 1 (fiddlefactor).
	**/
	public function get_colspecs(node:Dynamic):Dynamic;
	/**
		Return columnwidth for current cell (not multicell).
	**/
	public function get_column_width():Dynamic;
	public function get_entry_number():Dynamic;
	public function get_latex_type():Dynamic;
	/**
		Return sum of columnwidths for multicell.
	**/
	public function get_multicolumn_width(start:Dynamic, len_:Dynamic):Dynamic;
	public function get_opening():Dynamic;
	public function get_rowspan(cell:Dynamic):Dynamic;
	public function get_vertical_bar():Dynamic;
	public function is_open():Dynamic;
	public function is_stub_column():Dynamic;
	public function need_recurse():Dynamic;
	public function open():Dynamic;
	public function set(attr:Dynamic, value:Dynamic):Dynamic;
	public function set_rowspan(cell:Dynamic, value:Dynamic):Dynamic;
	public function set_table_style(table_style:Dynamic, classes:Dynamic):Dynamic;
	public function visit_colspec(node:Dynamic):Dynamic;
	public function visit_entry():Dynamic;
	public function visit_row():Dynamic;
	public function visit_thead():Dynamic;
}