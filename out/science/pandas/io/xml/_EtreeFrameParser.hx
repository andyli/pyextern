/* This file is generated, do not edit! */
package pandas.io.xml;
@:pythonImport("pandas.io.xml", "_EtreeFrameParser") extern class _EtreeFrameParser {
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
	public function ___init__(path_or_buffer:Dynamic, xpath:Dynamic, namespaces:Dynamic, elems_only:Dynamic, attrs_only:Dynamic, names:Dynamic, encoding:Dynamic, stylesheet:Dynamic, compression:Dynamic, storage_options:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_buffer:Dynamic, xpath:Dynamic, namespaces:Dynamic, elems_only:Dynamic, attrs_only:Dynamic, names:Dynamic, encoding:Dynamic, stylesheet:Dynamic, compression:Dynamic, storage_options:Dynamic):Void;
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
	static public var _docstring_components : Dynamic;
	/**
		Build tree from path_or_buffer.
		
		This method will parse XML object into tree
		either from string/bytes or file location.
	**/
	public function _parse_doc(raw_doc:Dynamic):Dynamic;
	/**
		Parse xml nodes.
		
		This method will parse the children and attributes of elements
		in xpath, conditionally for only elements, only attributes
		or both while optionally renaming node names.
		
		Raises
		------
		ValueError
		    * If only elements and only attributes are specified.
		
		Notes
		-----
		Namespace URIs will be removed from return node values.Also,
		elements with missing children or attributes compared to siblings
		will have optional keys filled withi None values.
	**/
	public function _parse_nodes():Dynamic;
	/**
		Validate names.
		
		This method will check if names is a list-like and aligns
		with length of parse nodes.
		
		Raises
		------
		ValueError
		    * If value is not a list and less then length of nodes.
	**/
	public function _validate_names():Dynamic;
	/**
		Notes
		-----
		`etree` supports limited XPath. If user attempts a more complex
		expression syntax error will raise.
	**/
	public function _validate_path():Dynamic;
	/**
		Parse xml data.
		
		This method will call the other internal methods to
		validate xpath, names, parse and return specific nodes.
	**/
	public function parse_data():Dynamic;
}