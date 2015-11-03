/* This file is generated, do not edit! */
package matplotlib.artist;
@:pythonImport("matplotlib.artist", "ArtistInspector") extern class ArtistInspector {
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
		Initialize the artist inspector with an
		:class:`~matplotlib.artist.Artist` or sequence of :class:`Artists`.
		If a sequence is used, we assume it is a homogeneous sequence (all
		:class:`Artists` are of the same type) and it is your responsibility
		to make sure this is so.
	**/
	@:native("__init__")
	public function ___init__(o:Dynamic):Dynamic;
	/**
		Initialize the artist inspector with an
		:class:`~matplotlib.artist.Artist` or sequence of :class:`Artists`.
		If a sequence is used, we assume it is a homogeneous sequence (all
		:class:`Artists` are of the same type) and it is your responsibility
		to make sure this is so.
	**/
	public function new(o:Dynamic):Void;
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
		Get the attribute strings and a full path to where the setter
		is defined for all setters in an object.
	**/
	public function _get_setters_and_targets():Dynamic;
	static public var _get_valid_values_regex : Dynamic;
	/**
		return 'PROPNAME or alias' if *s* has an alias, else return
		PROPNAME.
		
		e.g., for the line markerfacecolor property, which has an
		alias, return 'markerfacecolor or mfc' and for the transform
		property, which does not, return 'transform'
	**/
	public function aliased_name(s:Dynamic):Dynamic;
	/**
		return 'PROPNAME or alias' if *s* has an alias, else return
		PROPNAME formatted for ReST
		
		e.g., for the line markerfacecolor property, which has an
		alias, return 'markerfacecolor or mfc' and for the transform
		property, which does not, return 'transform'
	**/
	public function aliased_name_rest(s:Dynamic, target:Dynamic):Dynamic;
	/**
		Recursively find all :class:`matplotlib.artist.Artist`
		instances contained in *self*.
		
		If *match* is not None, it can be
		
		  - function with signature ``boolean = match(artist)``
		
		  - class instance: e.g., :class:`~matplotlib.lines.Line2D`
		
		used to filter matches.
	**/
	public function findobj(?match:Dynamic):Dynamic;
	/**
		Get a dict mapping *fullname* -> *alias* for each *alias* in
		the :class:`~matplotlib.artist.ArtistInspector`.
		
		e.g., for lines::
		
		  {'markerfacecolor': 'mfc',
		   'linewidth'      : 'lw',
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
		
		This is done by querying the docstring of the function *set_attr*
		for a line that begins with ACCEPTS:
		
		e.g., for a line linestyle, return
		"[ ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'steps'`` | ``'None'``
		]"
	**/
	public function get_valid_values(attr:Dynamic):Dynamic;
	/**
		Return *True* if method object *o* is an alias for another
		function.
	**/
	public function is_alias(o:Dynamic):Dynamic;
	/**
		Return the getters and actual values as list of strings.
	**/
	public function pprint_getters():Dynamic;
	/**
		If *prop* is *None*, return a list of strings of all settable properies
		and their valid values.
		
		If *prop* is not *None*, it is a valid property name and that
		property will be returned as a string of property : valid
		values.
	**/
	public function pprint_setters(?prop:Dynamic, ?leadingspace:Dynamic):Dynamic;
	/**
		If *prop* is *None*, return a list of strings of all settable properies
		and their valid values.  Format the output for ReST
		
		If *prop* is not *None*, it is a valid property name and that
		property will be returned as a string of property : valid
		values.
	**/
	public function pprint_setters_rest(?prop:Dynamic, ?leadingspace:Dynamic):Dynamic;
	/**
		return a dictionary mapping property name -> value
	**/
	public function properties():Dynamic;
}