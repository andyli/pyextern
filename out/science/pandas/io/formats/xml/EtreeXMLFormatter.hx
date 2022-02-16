/* This file is generated, do not edit! */
package pandas.io.formats.xml;
@:pythonImport("pandas.io.formats.xml", "EtreeXMLFormatter") extern class EtreeXMLFormatter {
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
	public function ___init__(frame:Dynamic, ?path_or_buffer:Dynamic, ?index:Dynamic, ?root_name:Dynamic, ?row_name:Dynamic, ?na_rep:Dynamic, ?attr_cols:Dynamic, ?elem_cols:Dynamic, ?namespaces:Dynamic, ?prefix:Dynamic, ?encoding:Dynamic, ?xml_declaration:Dynamic, ?pretty_print:Dynamic, ?stylesheet:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(frame:Dynamic, ?path_or_buffer:Dynamic, ?index:Dynamic, ?root_name:Dynamic, ?row_name:Dynamic, ?na_rep:Dynamic, ?attr_cols:Dynamic, ?elem_cols:Dynamic, ?namespaces:Dynamic, ?prefix:Dynamic, ?encoding:Dynamic, ?xml_declaration:Dynamic, ?pretty_print:Dynamic, ?stylesheet:Dynamic, ?compression:Dynamic, ?storage_options:Dynamic):Void;
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
	public function _build_elems(sub_element_cls:Dynamic, d:Dynamic, elem_row:Dynamic):Dynamic;
	static public var _docstring_components : Dynamic;
	public function _get_flat_col_name(col:Dynamic):Dynamic;
	/**
		Add xml declaration.
		
		This method will add xml declaration of working tree. Currently,
		xml_declaration is supported in etree starting in Python 3.8.
	**/
	public function add_declaration():Dynamic;
	/**
		Create attributes of row.
		
		This method adds attributes using attr_cols to row element and
		works with tuples for multindex or hierarchical columns.
	**/
	public function build_attribs(d:Dynamic, elem_row:Dynamic):Dynamic;
	/**
		Create child elements of row.
		
		This method adds child elements using elem_cols to row element and
		works with tuples for multindex or hierarchical columns.
	**/
	public function build_elems(d:Dynamic, elem_row:Dynamic):Dynamic;
	/**
		Build tree from  data.
		
		This method initializes the root and builds attributes and elements
		with optional namespaces.
	**/
	public function build_tree():Dynamic;
	/**
		Get uri of namespace prefix.
		
		This method retrieves corresponding URI to prefix in namespaces.
		
		Raises
		------
		KeyError
		    *If prefix is not included in namespace dict.
	**/
	public function get_prefix_uri():Dynamic;
	/**
		Handle indexes.
		
		This method will add indexes into attr_cols or elem_cols.
	**/
	public function handle_indexes():Dynamic;
	/**
		Define other namespaces.
		
		This method will build dictionary of namespaces attributes
		for root element, conditionally with optional namespaces and
		prefix.
	**/
	public function other_namespaces():Dynamic;
	/**
		Output tree for pretty print format.
		
		This method will pretty print xml with line breaks and indentation.
	**/
	public function prettify_tree():Dynamic;
	/**
		Adjust Data Frame to fit xml output.
		
		This method will adjust underlying data frame for xml output,
		including optionally replacing missing values and including indexes.
	**/
	public function process_dataframe():Dynamic;
	/**
		Remove xml declaration.
		
		This method will remove xml declaration of working tree. Currently,
		pretty_print is not supported in etree.
	**/
	public function remove_declaration():Dynamic;
	/**
		Validate elems_cols and attrs_cols.
		
		This method will check if columns is list-like.
		
		Raises
		------
		ValueError
		    * If value is not a list and less then length of nodes.
	**/
	public function validate_columns():Dynamic;
	/**
		Validate encoding.
		
		This method will check if encoding is among listed under codecs.
		
		Raises
		------
		LookupError
		    * If encoding is not available in codecs.
	**/
	public function validate_encoding():Dynamic;
	public function write_output():Dynamic;
}