/* This file is generated, do not edit! */
package pyarrow.vendored.docscrape;
@:pythonImport("pyarrow.vendored.docscrape", "ObjDoc") extern class ObjDoc {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __contains__(key:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(obj:Dynamic, ?doc:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?doc:Dynamic, ?config:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	static public var __reversed__ : Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, val:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__(?func_role:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	static public var _description : Dynamic;
	public function _error_location(msg:Dynamic, ?error:Dynamic):Dynamic;
	static public var _func_rgx : Dynamic;
	static public var _funcbacktick : Dynamic;
	static public var _funcname : Dynamic;
	static public var _funcnamenext : Dynamic;
	static public var _funcplain : Dynamic;
	public function _is_at_section():Dynamic;
	static public var _line_rgx : Dynamic;
	public var _obj : Dynamic;
	public function _parse():Dynamic;
	/**
		.. index: default
		   :refguide: something, else, and more
	**/
	public function _parse_index(section:Dynamic, content:Dynamic):Dynamic;
	public function _parse_param_list(content:Dynamic, ?single_element_is_type:Dynamic):Dynamic;
	/**
		func_name : Descriptive text
		    continued text
		another_func_name : Descriptive text
		func_name1, func_name2, :meth:`func_name`, func_name3
	**/
	public function _parse_see_also(content:Dynamic):Dynamic;
	/**
		Grab signature (if given) and summary
	**/
	public function _parse_summary():Dynamic;
	public function _read_sections():Dynamic;
	public function _read_to_next_section():Dynamic;
	static public var _role : Dynamic;
	public function _str_extended_summary():Dynamic;
	public function _str_header(name:Dynamic, ?symbol:Dynamic):Dynamic;
	public function _str_indent(doc:Dynamic, ?indent:Dynamic):Dynamic;
	public function _str_index():Dynamic;
	public function _str_param_list(name:Dynamic):Dynamic;
	public function _str_section(name:Dynamic):Dynamic;
	public function _str_see_also(func_role:Dynamic):Dynamic;
	public function _str_signature():Dynamic;
	public function _str_summary():Dynamic;
	public function _strip(doc:Dynamic):Dynamic;
	static public var empty_description : Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items():Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys():Dynamic;
	static public var sections : Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values():Dynamic;
}