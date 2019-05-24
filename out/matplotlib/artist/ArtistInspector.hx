/* This file is generated, do not edit! */
package matplotlib.artist;
@:pythonImport("matplotlib.artist", "ArtistInspector") extern class ArtistInspector {
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
		Initialize the artist inspector with an `Artist` or an iterable of
		`Artist`\s.  If an iterable is used, we assume it is a homogeneous
		sequence (all `Artists` are of the same type) and it is your
		responsibility to make sure this is so.
	**/
	@:native("__init__")
	public function ___init__(o:Dynamic):Dynamic;
	/**
		Initialize the artist inspector with an `Artist` or an iterable of
		`Artist`\s.  If an iterable is used, we assume it is a homogeneous
		sequence (all `Artists` are of the same type) and it is your
		responsibility to make sure this is so.
	**/
	public function new(o:Dynamic):Void;
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
		Get the attribute strings and a full path to where the setter
		is defined for all setters in an object.
	**/
	public function _get_setters_and_targets():Dynamic;
	static public var _get_valid_values_regex : Dynamic;
	/**
		Changes the full path to the public API path that is used
		in sphinx. This is needed for links to work.
	**/
	public function _replace_path(source_class:Dynamic):Dynamic;
	/**
		Return 'PROPNAME or alias' if *s* has an alias, else return 'PROPNAME'.
		
		e.g., for the line markerfacecolor property, which has an
		alias, return 'markerfacecolor or mfc' and for the transform
		property, which does not, return 'transform'.
	**/
	public function aliased_name(s:Dynamic):Dynamic;
	/**
		Return 'PROPNAME or alias' if *s* has an alias, else return 'PROPNAME',
		formatted for ReST.
		
		e.g., for the line markerfacecolor property, which has an
		alias, return 'markerfacecolor or mfc' and for the transform
		property, which does not, return 'transform'.
	**/
	public function aliased_name_rest(s:Dynamic, target:Dynamic):Dynamic;
	/**
		Get a dict mapping property fullnames to sets of aliases for each alias
		in the :class:`~matplotlib.artist.ArtistInspector`.
		
		e.g., for lines::
		
		  {'markerfacecolor': {'mfc'},
		   'linewidth'      : {'lw'},
		  }
	**/
	public function get_aliases():Dynamic;
	/**
		Get the attribute strings with setters for object.  e.g., for a line,
		return ``['markerfacecolor', 'linewidth', ....]``.
	**/
	public function get_setters():Dynamic;
	/**
		Get the legal arguments for the setter associated with *attr*.
		
		This is done by querying the docstring of the setter for a line that
		begins with "ACCEPTS:" or ".. ACCEPTS:", and then by looking for a
		numpydoc-style documentation for the setter's first argument.
	**/
	public function get_valid_values(attr:Dynamic):Dynamic;
	/**
		Return whether method object *o* is an alias for another method.
	**/
	public function is_alias(o:Dynamic):Dynamic;
	/**
		Return the getters and actual values as list of strings.
	**/
	public function pprint_getters():Dynamic;
	/**
		If *prop* is *None*, return a list of strings of all settable
		properties and their valid values.
		
		If *prop* is not *None*, it is a valid property name and that
		property will be returned as a string of property : valid
		values.
	**/
	public function pprint_setters(?prop:Dynamic, ?leadingspace:Dynamic):Dynamic;
	/**
		If *prop* is *None*, return a list of strings of all settable
		properties and their valid values.  Format the output for ReST
		
		If *prop* is not *None*, it is a valid property name and that
		property will be returned as a string of property : valid
		values.
	**/
	public function pprint_setters_rest(?prop:Dynamic, ?leadingspace:Dynamic):Dynamic;
	/**
		Return a dictionary mapping property name -> value.
	**/
	public function properties():Dynamic;
}