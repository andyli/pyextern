/* This file is generated, do not edit! */
package docutils.parsers.rst.tableparser;
@:pythonImport("docutils.parsers.rst.tableparser", "SimpleTableParser") extern class SimpleTableParser {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Check for text in column margins and text overflow in the last column.
		Raise TableMarkupError if anything but whitespace is in column margins.
		Adjust the end value for the last column if there is text overflow.
	**/
	public function check_columns(lines:Dynamic, first_line:Dynamic, columns:Dynamic):Dynamic;
	static public var double_width_pad_char : Dynamic;
	/**
		Look for a head/body row separator line; store the line index.
	**/
	public function find_head_body_sep():Dynamic;
	static public var head_body_separator_pat : Dynamic;
	public function init_row(colspec:Dynamic, offset:Dynamic):Dynamic;
	/**
		Analyze the text `block` and return a table data structure.
		
		Given a plaintext-graphic table in `block` (list of lines of text; no
		whitespace padding), parse the table, construct and return the data
		necessary to construct a CALS table or equivalent.
		
		Raise `TableMarkupError` if there is any problem with the markup.
	**/
	public function parse(block:Dynamic):Dynamic;
	/**
		Given a column span underline, return a list of (begin, end) pairs.
	**/
	public function parse_columns(line:Dynamic, offset:Dynamic):Dynamic;
	/**
		Given the text `lines` of a row, parse it and append to `self.table`.
		
		The row is parsed according to the current column spec (either
		`spanline` if provided or `self.columns`).  For each column, extract
		text from each line, and check for text in column margins.  Finally,
		adjust for insignificant whitespace.
	**/
	public function parse_row(lines:Dynamic, start:Dynamic, ?spanline:Dynamic):Dynamic;
	/**
		First determine the column boundaries from the top border, then
		process rows.  Each row may consist of multiple lines; accumulate
		lines until a row is complete.  Call `self.parse_row` to finish the
		job.
	**/
	public function parse_table():Dynamic;
	public function setup(block:Dynamic):Dynamic;
	static public var span_pat : Dynamic;
	public function structure_from_cells():Dynamic;
}