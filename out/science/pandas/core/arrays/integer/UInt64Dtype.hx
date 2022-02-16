/* This file is generated, do not edit! */
package pandas.core.arrays.integer;
@:pythonImport("pandas.core.arrays.integer", "UInt64Dtype") extern class UInt64Dtype {
	static public var __annotations__ : Dynamic;
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
		Check whether 'other' is equal to self.
		
		By default, 'other' is considered equal if either
		
		* it's a string matching 'self.name'.
		* it's an instance of this type and all of the attributes
		  in ``self._metadata`` are equal between `self` and `other`.
		
		Parameters
		----------
		other : Any
		
		Returns
		-------
		bool
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Construct IntegerArray/FloatingArray from pyarrow Array/ChunkedArray.
	**/
	public function __from_arrow__(array:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Can arrays of this dtype hold NA values?
	**/
	public var _can_hold_na : Dynamic;
	/**
		Return the common dtype, if one exists.
		
		Used in `find_common_type` implementation. This is for example used
		to determine the resulting dtype in a concat operation.
		
		If no common dtype exists, return None (which gives the other dtypes
		the chance to determine a common dtype). If all dtypes in the list
		return None, then the common dtype will be "object" dtype (this means
		it is never needed to return "object" dtype from this method itself).
		
		Parameters
		----------
		dtypes : list of dtypes
		    The dtypes for which to determine a common dtype. This is a list
		    of np.dtype or ExtensionDtype instances.
		
		Returns
		-------
		Common dtype (np.dtype or ExtensionDtype) or None
	**/
	public function _get_common_dtype(dtypes:Dynamic):Dynamic;
	/**
		Whether this dtype should be considered boolean.
		
		By default, ExtensionDtypes are assumed to be non-numeric.
		Setting this to True will affect the behavior of several places,
		e.g.
		
		* is_bool
		* boolean indexing
		
		Returns
		-------
		bool
	**/
	public var _is_boolean : Dynamic;
	/**
		Whether columns with this dtype should be considered numeric.
		
		By default ExtensionDtypes are assumed to be non-numeric.
		They'll be excluded from operations that exclude non-numeric
		columns, like (groupby) reductions, plotting, etc.
	**/
	public var _is_numeric : Dynamic;
	static public var _metadata : Dynamic;
	static public var base : Dynamic;
	/**
		Return the array type associated with this dtype.
		
		Returns
		-------
		type
	**/
	static public function construct_array_type():Dynamic;
	/**
		Construct this type from a string.
		
		This is useful mainly for data types that accept parameters.
		For example, a period dtype accepts a frequency parameter that
		can be set as ``period[H]`` (where H means hourly frequency).
		
		By default, in the abstract class, just the name of the type is
		expected. But subclasses can overwrite this method to accept
		parameters.
		
		Parameters
		----------
		string : str
		    The name of the type, for example ``category``.
		
		Returns
		-------
		ExtensionDtype
		    Instance of the dtype.
		
		Raises
		------
		TypeError
		    If a class cannot be constructed from this 'string'.
		
		Examples
		--------
		For extension dtypes with arguments the following may be an
		adequate implementation.
		
		>>> @classmethod
		... def construct_from_string(cls, string):
		...     pattern = re.compile(r"^my_type\[(?P<arg_name>.+)\]$")
		...     match = pattern.match(string)
		...     if match:
		...         return cls(**match.groupdict())
		...     else:
		...         raise TypeError(
		...             f"Cannot construct a '{cls.__name__}' from '{string}'"
		...         )
	**/
	static public function construct_from_string(string:Dynamic):Dynamic;
	/**
		Construct an ExtensionArray of this dtype with the given shape.
		
		Analogous to numpy.empty.
		
		Parameters
		----------
		shape : int or tuple[int]
		
		Returns
		-------
		ExtensionArray
	**/
	public function empty(shape:Dynamic):Dynamic;
	/**
		Check if we match 'dtype'.
		
		Parameters
		----------
		dtype : object
		    The object to check.
		
		Returns
		-------
		bool
		
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
	public var is_signed_integer : Dynamic;
	public var is_unsigned_integer : Dynamic;
	/**
		Return the number of bytes in this dtype
	**/
	public var itemsize : Dynamic;
	public var kind : Dynamic;
	static public var na_value : Dynamic;
	static public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	/**
		Return an instance of our numpy dtype
	**/
	public var numpy_dtype : Dynamic;
	/**
		Unsigned integer type, compatible with C ``unsigned long``.
		
		:Character code: ``'L'``
		:Canonical name: `numpy.uint`
		:Alias on this platform (Linux x86_64): `numpy.uint64`: 64-bit unsigned integer (``0`` to ``18_446_744_073_709_551_615``).
		:Alias on this platform (Linux x86_64): `numpy.uintp`: Unsigned integer large enough to fit pointer, compatible with C ``uintptr_t``.
	**/
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}