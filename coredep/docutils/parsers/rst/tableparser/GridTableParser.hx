/* This file is generated, do not edit! */
package docutils.parsers.rst.tableparser;
@:pythonImport("docutils.parsers.rst.tableparser", "GridTableParser") extern class GridTableParser {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Each text column should have been completely seen.
	**/
	public function check_parse_complete():Dynamic;
	static public var double_width_pad_char : Dynamic;
	/**
		Look for a head/body row separator line; store the line index.
	**/
	public function find_head_body_sep():Dynamic;
	static public var head_body_separator_pat : Dynamic;
	/**
		For keeping track of how much of each text column has been seen.
	**/
	public function mark_done(top:Dynamic, left:Dynamic, bottom:Dynamic, right:Dynamic):Dynamic;
	/**
		Analyze the text `block` and return a table data structure.
		
		Given a plaintext-graphic table in `block` (list of lines of text; no
		whitespace padding), parse the table, construct and return the data
		necessary to construct a CALS table or equivalent.
		
		Raise `TableMarkupError` if there is any problem with the markup.
	**/
	public function parse(block:Dynamic):Dynamic;
	/**
		Start with a queue of upper-left corners, containing the upper-left
		corner of the table itself. Trace out one rectangular cell, remember
		it, and add its upper-right and lower-left corners to the queue of
		potential upper-left corners of further cells. Process the queue in
		top-to-bottom order, keeping track of how much of each text column has
		been seen.
		
		We'll end up knowing all the row and column boundaries, cell positions
		and their dimensions.
	**/
	public function parse_table():Dynamic;
	/**
		Starting at the top-left corner, start tracing out a cell.
	**/
	public function scan_cell(top:Dynamic, left:Dynamic):Dynamic;
	/**
		Look for the bottom-right corner of the cell, making note of all row
		boundaries.
	**/
	public function scan_down(top:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	/**
		Noting column boundaries, look for the bottom-left corner of the cell.
		It must line up with the starting point.
	**/
	public function scan_left(top:Dynamic, left:Dynamic, bottom:Dynamic, right:Dynamic):Dynamic;
	/**
		Look for the top-right corner of the cell, and make note of all column
		boundaries ('+').
	**/
	public function scan_right(top:Dynamic, left:Dynamic):Dynamic;
	/**
		Noting row boundaries, see if we can return to the starting point.
	**/
	public function scan_up(top:Dynamic, left:Dynamic, bottom:Dynamic, right:Dynamic):Dynamic;
	public function setup(block:Dynamic):Dynamic;
	/**
		From the data collected by `scan_cell()`, convert to the final data
		structure.
	**/
	public function structure_from_cells():Dynamic;
}