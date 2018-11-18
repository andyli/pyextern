/* This file is generated, do not edit! */
package pandas.io.formats.latex;
@:pythonImport("pandas.io.formats.latex", "LatexFormatter") extern class LatexFormatter {
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
	public function ___init__(formatter:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(formatter:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic):Void;
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
		Combine columns belonging to a group to a single multicolumn entry
		according to self.multicolumn_format
		
		e.g.:
		a &  &  & b & c &
		will become
		\multicolumn{3}{l}{a} & b & \multicolumn{2}{l}{c}
	**/
	public function _format_multicolumn(row:Dynamic, ilevels:Dynamic):Dynamic;
	/**
		Check following rows, whether row should be a multirow
		
		e.g.:     becomes:
		a & 0 &   \multirow{2}{*}{a} & 0 &
		  & 1 &     & 1 &
		b & 0 &   \cline{1-2}
		          b & 0 &
	**/
	public function _format_multirow(row:Dynamic, ilevels:Dynamic, i:Dynamic, rows:Dynamic):Dynamic;
	public function _get_formatter(i:Dynamic):Dynamic;
	/**
		Print clines after multirow-blocks are finished
	**/
	public function _print_cline(buf:Dynamic, i:Dynamic, icol:Dynamic):Dynamic;
	static public var is_truncated : Dynamic;
	public var should_show_dimensions : Dynamic;
	static public var show_dimensions : Dynamic;
	/**
		Render a DataFrame to a LaTeX tabular/longtable environment output.
	**/
	public function write_result(buf:Dynamic):Dynamic;
}