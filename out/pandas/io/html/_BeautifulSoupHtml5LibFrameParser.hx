/* This file is generated, do not edit! */
package pandas.io.html;
@:pythonImport("pandas.io.html", "_BeautifulSoupHtml5LibFrameParser") extern class _BeautifulSoupHtml5LibFrameParser {
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Return a tree-like object that can be used to iterate over the DOM.
		
		Returns
		-------
		obj : tree-like
	**/
	public function _build_doc():Dynamic;
	public function _build_table(table:Dynamic):Dynamic;
	/**
		Parse the raw data into a list of lists.
		
		Parameters
		----------
		rows : iterable of node-like
		    A list of row elements.
		
		text_getter : callable
		    A callable that gets the text from an individual node. This must be
		    defined by subclasses.
		
		column_finder : callable
		    A callable that takes a row node as input and returns a list of the
		    column node in that row. This must be defined by subclasses.
		
		Returns
		-------
		data : list of list of strings
	**/
	public function _parse_raw_data(rows:Dynamic):Dynamic;
	public function _parse_raw_tbody(table:Dynamic):Dynamic;
	public function _parse_raw_tfoot(table:Dynamic):Dynamic;
	public function _parse_raw_thead(table:Dynamic):Dynamic;
	/**
		Return all tables from the parsed DOM.
		
		Parameters
		----------
		doc : tree-like
		    The DOM from which to parse the table element.
		
		match : str or regular expression
		    The text to search for in the DOM tree.
		
		attrs : dict
		    A dictionary of table attributes that can be used to disambiguate
		    mutliple tables on a page.
		
		Raises
		------
		ValueError
		    * If `match` does not match any text in the document.
		
		Returns
		-------
		tables : list of node-like
		    A list of <table> elements to be parsed into raw data.
	**/
	public function _parse_tables(doc:Dynamic, match:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Return the body of the table.
		
		Parameters
		----------
		table : node-like
		    A table element that contains row elements.
		
		Returns
		-------
		tbody : node-like
		    A <tbody>...</tbody> element.
	**/
	public function _parse_tbody(table:Dynamic):Dynamic;
	/**
		Return the td elements from a row element.
		
		Parameters
		----------
		obj : node-like
		
		Returns
		-------
		columns : list of node-like
		    These are the elements of each row, i.e., the columns.
	**/
	public function _parse_td(row:Dynamic):Dynamic;
	/**
		Return the footer of the table if any.
		
		Parameters
		----------
		table : node-like
		    A table element that contains row elements.
		
		Returns
		-------
		tfoot : node-like
		    A <tfoot>...</tfoot> element.
	**/
	public function _parse_tfoot(table:Dynamic):Dynamic;
	public function _parse_th(element:Dynamic):Dynamic;
	/**
		Return the header of a table.
		
		Parameters
		----------
		table : node-like
		    A table element that contains row elements.
		
		Returns
		-------
		thead : node-like
		    A <thead>...</thead> element.
	**/
	public function _parse_thead(table:Dynamic):Dynamic;
	/**
		Return the list of row elements from the parsed table element.
		
		Parameters
		----------
		table : node-like
		    A table element that contains row elements.
		
		Returns
		-------
		rows : list of node-like
		    A list row elements of a table, usually <tr> or <th> elements.
	**/
	public function _parse_tr(element:Dynamic):Dynamic;
	public function _setup_build_doc():Dynamic;
	/**
		Return the text of an individual DOM node.
		
		Parameters
		----------
		obj : node-like
		    A DOM node.
		
		Returns
		-------
		text : str or unicode
		    The text from an individual DOM node.
	**/
	public function _text_getter(obj:Dynamic):Dynamic;
	public function parse_tables():Dynamic;
}