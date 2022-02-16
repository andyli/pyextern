/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes", "CategoricalDtype") extern class CategoricalDtype {
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
		Rules for CDT equality:
		1) Any CDT is equal to the string 'category'
		2) Any CDT is equal to itself
		3) Any CDT is equal to a CDT with categories=None regardless of ordered
		4) A CDT with ordered=True is only equal to another CDT with
		   ordered=True and identical categories in the same order
		5) A CDT with ordered={False, None} is only equal to another CDT with
		   ordered={False, None} and identical categories, but same order is
		   not required. There is no distinction between False/None.
		6) Any other comparison returns False
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
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
	static public var _cache_dtypes : Dynamic;
	/**
		Can arrays of this dtype hold NA values?
	**/
	public var _can_hold_na : Dynamic;
	public function _finalize(categories:Dynamic, ordered:Dynamic, ?fastpath:Dynamic):Dynamic;
	static public function _from_categorical_dtype(dtype:Dynamic, ?categories:Dynamic, ?ordered:Dynamic):Dynamic;
	static public function _from_fastpath(?categories:Dynamic, ?ordered:Dynamic):Dynamic;
	/**
		Construct dtype from the input parameters used in :class:`Categorical`.
		
		This constructor method specifically does not do the factorization
		step, if that is needed to find the categories. This constructor may
		therefore return ``CategoricalDtype(categories=None, ordered=None)``,
		which may not be useful. Additional steps may therefore have to be
		taken to create the final dtype.
		
		The return dtype is specified from the inputs in this prioritized
		order:
		1. if dtype is a CategoricalDtype, return dtype
		2. if dtype is the string 'category', create a CategoricalDtype from
		   the supplied categories and ordered parameters, and return that.
		3. if values is a categorical, use value.dtype, but override it with
		   categories and ordered if either/both of those are not None.
		4. if dtype is None and values is not a categorical, construct the
		   dtype from categories and ordered, even if either of those is None.
		
		Parameters
		----------
		values : list-like, optional
		    The list-like must be 1-dimensional.
		categories : list-like, optional
		    Categories for the CategoricalDtype.
		ordered : bool, optional
		    Designating if the categories are ordered.
		dtype : CategoricalDtype or the string "category", optional
		    If ``CategoricalDtype``, cannot be used together with
		    `categories` or `ordered`.
		
		Returns
		-------
		CategoricalDtype
		
		Examples
		--------
		>>> pd.CategoricalDtype._from_values_or_dtype()
		CategoricalDtype(categories=None, ordered=None)
		>>> pd.CategoricalDtype._from_values_or_dtype(
		...     categories=['a', 'b'], ordered=True
		... )
		CategoricalDtype(categories=['a', 'b'], ordered=True)
		>>> dtype1 = pd.CategoricalDtype(['a', 'b'], ordered=True)
		>>> dtype2 = pd.CategoricalDtype(['x', 'y'], ordered=False)
		>>> c = pd.Categorical([0, 1], dtype=dtype1, fastpath=True)
		>>> pd.CategoricalDtype._from_values_or_dtype(
		...     c, ['x', 'y'], ordered=True, dtype=dtype2
		... )
		Traceback (most recent call last):
		    ...
		ValueError: Cannot specify `categories` or `ordered` together with
		`dtype`.
		
		The supplied dtype takes precedence over values' dtype:
		
		>>> pd.CategoricalDtype._from_values_or_dtype(c, dtype=dtype2)
		CategoricalDtype(categories=['x', 'y'], ordered=False)
	**/
	static public function _from_values_or_dtype(?values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic):Dynamic;
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
	public var _hash_categories : Dynamic;
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
		An ``Index`` containing the unique categories allowed.
	**/
	public var categories : Dynamic;
	/**
		Return the array type associated with this dtype.
		
		Returns
		-------
		type
	**/
	static public function construct_array_type():Dynamic;
	/**
		Construct a CategoricalDtype from a string.
		
		Parameters
		----------
		string : str
		    Must be the string "category" in order to be successfully constructed.
		
		Returns
		-------
		CategoricalDtype
		    Instance of the dtype.
		
		Raises
		------
		TypeError
		    If a CategoricalDtype cannot be constructed from the input.
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
	static public var isbuiltin : Dynamic;
	static public var isnative : Dynamic;
	static public var itemsize : Dynamic;
	static public var kind : Dynamic;
	/**
		Default NA value to use for this type.
		
		This is used in e.g. ExtensionArray.take. This should be the
		user-facing "boxed" version of the NA value, not the physical NA value
		for storage.  e.g. for JSONArray, this is an empty dictionary.
	**/
	public var na_value : Dynamic;
	static public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	static public var num : Dynamic;
	/**
		Whether the categories have an ordered relationship.
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