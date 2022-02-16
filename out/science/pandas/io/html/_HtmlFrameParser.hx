/* This file is generated, do not edit! */
package pandas.io.html;
@:pythonImport("pandas.io.html", "_HtmlFrameParser") extern class _HtmlFrameParser {
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
	public function ___init__(io:Dynamic, match:Dynamic, attrs:Dynamic, encoding:Dynamic, displayed_only:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(io:Dynamic, match:Dynamic, attrs:Dynamic, encoding:Dynamic, displayed_only:Dynamic):Void;
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
		Return the attribute value of an individual DOM node.
		
		Parameters
		----------
		obj : node-like
		    A DOM node.
		
		attr : str or unicode
		    The attribute, such as "colspan"
		
		Returns
		-------
		str or unicode
		    The attribute value.
	**/
	public function _attr_getter(obj:Dynamic, attr:Dynamic):Dynamic;
	/**
		Return a tree-like object that can be used to iterate over the DOM.
		
		Returns
		-------
		node-like
		    The DOM from which to parse the table element.
	**/
	public function _build_doc():Dynamic;
	/**
		Return whether an individual DOM node matches a tag
		
		Parameters
		----------
		obj : node-like
		    A DOM node.
		
		tag : str
		    Tag name to be checked for equality.
		
		Returns
		-------
		boolean
		    Whether `obj`'s tag name is `tag`
	**/
	public function _equals_tag(obj:Dynamic, tag:Dynamic):Dynamic;
	/**
		Given a list of <tr>s, return a list of text rows.
		
		Parameters
		----------
		rows : list of node-like
		    List of <tr>s
		
		Returns
		-------
		list of list
		    Each returned row is a list of str text.
		
		Notes
		-----
		Any cell with ``rowspan`` or ``colspan`` will have its contents copied
		to subsequent cells.
	**/
	public function _expand_colspan_rowspan(rows:Dynamic):Dynamic;
	/**
		Return list of tables, potentially removing hidden elements
		
		Parameters
		----------
		tbl_list : list of node-like
		    Type of list elements will vary depending upon parser used
		attr_name : str
		    Name of the accessor for retrieving HTML attributes
		
		Returns
		-------
		list of node-like
		    Return type matches `tbl_list`
	**/
	public function _handle_hidden_tables(tbl_list:Dynamic, attr_name:Dynamic):Dynamic;
	/**
		Return all tables from the parsed DOM.
		
		Parameters
		----------
		doc : the DOM from which to parse the table element.
		
		match : str or regular expression
		    The text to search for in the DOM tree.
		
		attrs : dict
		    A dictionary of table attributes that can be used to disambiguate
		    multiple tables on a page.
		
		Raises
		------
		ValueError : `match` does not match any text in the document.
		
		Returns
		-------
		list of node-like
		    HTML <table> elements to be parsed into raw data.
	**/
	public function _parse_tables(doc:Dynamic, match:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Return the list of tbody row elements from the parsed table element.
		
		HTML5 table bodies consist of either 0 or more <tbody> elements (which
		only contain <tr> elements) or 0 or more <tr> elements. This method
		checks for both structures.
		
		Parameters
		----------
		table : a table element that contains row elements.
		
		Returns
		-------
		list of node-like
		    These are the <tr> row elements of a table.
	**/
	public function _parse_tbody_tr(table:Dynamic):Dynamic;
	/**
		Return the td elements from a row element.
		
		Parameters
		----------
		obj : node-like
		    A DOM <tr> node.
		
		Returns
		-------
		list of node-like
		    These are the elements of each row, i.e., the columns.
	**/
	public function _parse_td(obj:Dynamic):Dynamic;
	/**
		Return the list of tfoot row elements from the parsed table element.
		
		Parameters
		----------
		table : a table element that contains row elements.
		
		Returns
		-------
		list of node-like
		    These are the <tr> row elements of a table.
	**/
	public function _parse_tfoot_tr(table:Dynamic):Dynamic;
	/**
		Given a table, return parsed header, body, and foot.
		
		Parameters
		----------
		table_html : node-like
		
		Returns
		-------
		tuple of (header, body, footer), each a list of list-of-text rows.
		
		Notes
		-----
		Header and body are lists-of-lists. Top level list is a list of
		rows. Each row is a list of str text.
		
		Logic: Use <thead>, <tbody>, <tfoot> elements to identify
		       header, body, and footer, otherwise:
		       - Put all rows into body
		       - Move rows from top of body to header only if
		         all elements inside row are <th>
		       - Move rows from bottom of body to footer only if
		         all elements inside row are <th>
	**/
	public function _parse_thead_tbody_tfoot(table_html:Dynamic):Dynamic;
	/**
		Return the list of thead row elements from the parsed table element.
		
		Parameters
		----------
		table : a table element that contains zero or more thead elements.
		
		Returns
		-------
		list of node-like
		    These are the <tr> row elements of a table.
	**/
	public function _parse_thead_tr(table:Dynamic):Dynamic;
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
	/**
		Parse and return all tables from the DOM.
		
		Returns
		-------
		list of parsed (header, body, footer) tuples from tables.
	**/
	public function parse_tables():Dynamic;
}