/* This file is generated, do not edit! */
package tensorflow.python.platform.app;
@:pythonImport("tensorflow.python.platform.app", "_HelpFlag") extern class _HelpFlag {
	static public var NAME : Dynamic;
	static public var SHORT_NAME : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a >= b.  Computed by @total_ordering from (not a < b).
	**/
	public function __ge__(other:Dynamic, ?NotImplemented:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return a > b.  Computed by @total_ordering from (not a < b) and (a != b).
	**/
	public function __gt__(other:Dynamic, ?NotImplemented:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a <= b.  Computed by @total_ordering from (a < b) or (a == b).
	**/
	public function __le__(other:Dynamic, ?NotImplemented:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
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
		Returns an XML element that contains this flag's information.
		
		This is information that is relevant to all flags (e.g., name,
		meaning, etc.).  If you defined a flag that has some other pieces of
		info, then please override _ExtraXMLInfo.
		
		Please do NOT override this method.
		
		Args:
		  doc: minidom.Document, the DOM document it should create nodes from.
		  module_name: str,, the name of the module that defines this flag.
		  is_key: boolean, True iff this flag is key for main module.
		
		Returns:
		  A minidom.Element instance.
	**/
	public function _create_xml_dom_element(doc:Dynamic, module_name:Dynamic, ?is_key:Dynamic):Dynamic;
	/**
		Returns extra info about this flag in XML.
		
		"Extra" means "not already included by _create_xml_dom_element above."
		
		Args:
		  doc: minidom.Document, the DOM document it should create nodes from.
		
		Returns:
		  A list of minidom.Element.
	**/
	public function _extra_xml_dom_elements(doc:Dynamic):Dynamic;
	/**
		Returns parsed flag value as string.
	**/
	public function _get_parsed_value_as_string(value:Dynamic):Dynamic;
	/**
		Internal parse function.
		
		It returns the parsed value, and does not modify class states.
		
		Args:
		  argument: str or the correct flag value type, argument to be parsed.
		
		Returns:
		  The parsed value.
	**/
	public function _parse(argument:Dynamic):Dynamic;
	/**
		Returns the serialized value, for use in an XML help text.
	**/
	public function _serialize_value_for_xml(value:Dynamic):Dynamic;
	/**
		Changes the default value (and current value too) for this Flag.
	**/
	public function _set_default(value:Dynamic):Dynamic;
	/**
		Returns a str that describes the type of the flag.
		
		NOTE: we use strings, and not the types.*Type constants because
		our flags can have more exotic types, e.g., 'comma separated list
		of strings', 'whitespace separated list of strings', etc.
	**/
	public function flag_type():Dynamic;
	/**
		Parses string and sets flag value.
		
		Args:
		  argument: str or the correct flag value type, argument to be parsed.
	**/
	public function parse(arg:Dynamic):Dynamic;
	public function serialize():Dynamic;
	public function unparse():Dynamic;
	public var value : Dynamic;
}