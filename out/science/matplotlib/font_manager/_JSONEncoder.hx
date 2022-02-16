/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:pythonImport("matplotlib.font_manager", "_JSONEncoder") extern class _JSONEncoder {
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
		Constructor for JSONEncoder, with sensible defaults.
		
		If skipkeys is false, then it is a TypeError to attempt
		encoding of keys that are not str, int, float or None.  If
		skipkeys is True, such items are simply skipped.
		
		If ensure_ascii is true, the output is guaranteed to be str
		objects with all incoming non-ASCII characters escaped.  If
		ensure_ascii is false, the output can contain non-ASCII characters.
		
		If check_circular is true, then lists, dicts, and custom encoded
		objects will be checked for circular references during encoding to
		prevent an infinite recursion (which would cause an OverflowError).
		Otherwise, no such check takes place.
		
		If allow_nan is true, then NaN, Infinity, and -Infinity will be
		encoded as such.  This behavior is not JSON specification compliant,
		but is consistent with most JavaScript based encoders and decoders.
		Otherwise, it will be a ValueError to encode such floats.
		
		If sort_keys is true, then the output of dictionaries will be
		sorted by key; this is useful for regression tests to ensure
		that JSON serializations can be compared on a day-to-day basis.
		
		If indent is a non-negative integer, then JSON array
		elements and object members will be pretty-printed with that
		indent level.  An indent level of 0 will only insert newlines.
		None is the most compact representation.
		
		If specified, separators should be an (item_separator, key_separator)
		tuple.  The default is (', ', ': ') if *indent* is ``None`` and
		(',', ': ') otherwise.  To get the most compact JSON representation,
		you should specify (',', ':') to eliminate whitespace.
		
		If specified, default is a function that gets called for objects
		that can't otherwise be serialized.  It should return a JSON encodable
		version of the object or raise a ``TypeError``.
	**/
	@:native("__init__")
	public function ___init__(?skipkeys:Dynamic, ?ensure_ascii:Dynamic, ?check_circular:Dynamic, ?allow_nan:Dynamic, ?sort_keys:Dynamic, ?indent:Dynamic, ?separators:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Constructor for JSONEncoder, with sensible defaults.
		
		If skipkeys is false, then it is a TypeError to attempt
		encoding of keys that are not str, int, float or None.  If
		skipkeys is True, such items are simply skipped.
		
		If ensure_ascii is true, the output is guaranteed to be str
		objects with all incoming non-ASCII characters escaped.  If
		ensure_ascii is false, the output can contain non-ASCII characters.
		
		If check_circular is true, then lists, dicts, and custom encoded
		objects will be checked for circular references during encoding to
		prevent an infinite recursion (which would cause an OverflowError).
		Otherwise, no such check takes place.
		
		If allow_nan is true, then NaN, Infinity, and -Infinity will be
		encoded as such.  This behavior is not JSON specification compliant,
		but is consistent with most JavaScript based encoders and decoders.
		Otherwise, it will be a ValueError to encode such floats.
		
		If sort_keys is true, then the output of dictionaries will be
		sorted by key; this is useful for regression tests to ensure
		that JSON serializations can be compared on a day-to-day basis.
		
		If indent is a non-negative integer, then JSON array
		elements and object members will be pretty-printed with that
		indent level.  An indent level of 0 will only insert newlines.
		None is the most compact representation.
		
		If specified, separators should be an (item_separator, key_separator)
		tuple.  The default is (', ', ': ') if *indent* is ``None`` and
		(',', ': ') otherwise.  To get the most compact JSON representation,
		you should specify (',', ':') to eliminate whitespace.
		
		If specified, default is a function that gets called for objects
		that can't otherwise be serialized.  It should return a JSON encodable
		version of the object or raise a ``TypeError``.
	**/
	public function new(?skipkeys:Dynamic, ?ensure_ascii:Dynamic, ?check_circular:Dynamic, ?allow_nan:Dynamic, ?sort_keys:Dynamic, ?indent:Dynamic, ?separators:Dynamic, ?_default:Dynamic):Void;
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
		Implement this method in a subclass such that it returns
		a serializable object for ``o``, or calls the base implementation
		(to raise a ``TypeError``).
		
		For example, to support arbitrary iterators, you could
		implement default like this::
		
		    def default(self, o):
		        try:
		            iterable = iter(o)
		        except TypeError:
		            pass
		        else:
		            return list(iterable)
		        # Let the base class default method raise the TypeError
		        return JSONEncoder.default(self, o)
	**/
	@:native("default")
	public function _default(o:Dynamic):Dynamic;
	/**
		Return a JSON string representation of a Python data structure.
		
		>>> from json.encoder import JSONEncoder
		>>> JSONEncoder().encode({"foo": ["bar", "baz"]})
		'{"foo": ["bar", "baz"]}'
	**/
	public function encode(o:Dynamic):Dynamic;
	static public var item_separator : Dynamic;
	/**
		Encode the given object and yield each string
		representation as available.
		
		For example::
		
		    for chunk in JSONEncoder().iterencode(bigobject):
		        mysocket.write(chunk)
	**/
	public function iterencode(o:Dynamic, ?_one_shot:Dynamic):Dynamic;
	static public var key_separator : Dynamic;
}