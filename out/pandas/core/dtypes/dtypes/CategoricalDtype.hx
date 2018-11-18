/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes", "CategoricalDtype") extern class CategoricalDtype {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
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
		Rules for CDT equality:
		1) Any CDT is equal to the string 'category'
		2) Any CDT is equal to a CDT with categories=None regardless of ordered
		3) A CDT with ordered=True is only equal to another CDT with
		   ordered=True and identical categories in the same order
		4) A CDT with ordered={False, None} is only equal to another CDT with
		   ordered={False, None} and identical categories, but same order is
		   not required. There is no distinction between False/None.
		5) Any other comparison returns False
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __getstate__():Dynamic;
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
	public function ___init__(?categories:Dynamic, ?ordered:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?categories:Dynamic, ?ordered:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _cache : Dynamic;
	public function _finalize(categories:Dynamic, ordered:Dynamic, ?fastpath:Dynamic):Dynamic;
	static public function _from_categorical_dtype(dtype:Dynamic, ?categories:Dynamic, ?ordered:Dynamic):Dynamic;
	static public function _from_fastpath(?categories:Dynamic, ?ordered:Dynamic):Dynamic;
	static public function _hash_categories(categories:Dynamic, ?ordered:Dynamic):Dynamic;
	static public var _metadata : Dynamic;
	static public var base : Dynamic;
	/**
		An ``Index`` containing the unique categories allowed.
	**/
	public var categories : Dynamic;
	/**
		attempt to construct this type from a string, raise a TypeError if
		it's not possible 
	**/
	static public function construct_from_string(string:Dynamic):Dynamic;
	/**
		Check if we match 'dtype'.
		
		Parameters
		----------
		dtype : object
		    The object to check.
		
		Returns
		-------
		is_dtype : bool
		
		Notes
		-----
		The default implementation is True if
		
		1. ``cls.construct_from_string(dtype)`` is an instance
		   of ``cls``.
		2. ``dtype`` is an object and is an instance of ``cls``
		3. ``dtype`` has a ``dtype`` attribute, and any of the above
		   conditions is true for ``dtype.dtype``.
	**/
	static public function is_dtype(dtype:Dynamic):Dynamic;
	static public var isbuiltin : Dynamic;
	static public var isnative : Dynamic;
	static public var itemsize : Dynamic;
	static public var kind : Dynamic;
	static public var na_value : Dynamic;
	static public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	static public var num : Dynamic;
	/**
		Whether the categories have an ordered relationship
	**/
	public var ordered : Dynamic;
	/**
		clear the cache 
	**/
	static public function reset_cache():Dynamic;
	static public var shape : Dynamic;
	static public var str : Dynamic;
	static public var subdtype : Dynamic;
	/**
		the type of CategoricalDtype, this metaclass determines subclass ability
	**/
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a CategoricalDtype with categories and ordered taken from dtype
		if specified, otherwise falling back to self if unspecified
		
		Parameters
		----------
		dtype : CategoricalDtype
		
		Returns
		-------
		new_dtype : CategoricalDtype
	**/
	public function update_dtype(dtype:Dynamic):Dynamic;
	/**
		Validates that we have good categories
		
		Parameters
		----------
		categories : array-like
		fastpath : bool
		    Whether to skip nan and uniqueness checks
		
		Returns
		-------
		categories : Index
	**/
	static public function validate_categories(categories:Dynamic, ?fastpath:Dynamic):pandas.Index;
	/**
		Validates that we have a valid ordered parameter. If
		it is not a boolean, a TypeError will be raised.
		
		Parameters
		----------
		ordered : object
		    The parameter to be verified.
		
		Raises
		------
		TypeError
		    If 'ordered' is not a boolean.
	**/
	static public function validate_ordered(ordered:Dynamic):Dynamic;
}