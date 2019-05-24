/* This file is generated, do not edit! */
package pandas.core.arrays.categorical;
@:pythonImport("pandas.core.arrays.categorical", "Categorical") extern class Categorical {
	/**
		Return transposed numpy array.
	**/
	public var T : Dynamic;
	/**
		The numpy array interface.
		
		Returns
		-------
		values : numpy array
		    A numpy array of either the specified dtype or,
		    if dtype==None (default), the same dtype as
		    categorical.categories.dtype
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if `key` is in this Categorical.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return an item.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an Iterator over the values of this Categorical.
	**/
	public function __iter__():Dynamic;
	public function __le__(other:Dynamic):Dynamic;
	/**
		The length of this Categorical.
	**/
	public function __len__():Dynamic;
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
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
	/**
		Item assignment.
		
		
		Raises
		------
		ValueError
		    If (one or more) Value is not in categories or if a assigned
		    `Categorical` does not have the same categories
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Necessary for making this object picklable
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
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
	/**
		Unicode representation.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		bool(x) -> bool
		
		Returns True when the argument x is true, False otherwise.
		The builtins True and False are the only two instances of the class bool.
		The class bool is a subclass of the class int, and cannot be subclassed.
	**/
	public var _can_hold_na : Dynamic;
	static public var _codes : Dynamic;
	/**
		Concatenate multiple array
		
		Parameters
		----------
		to_concat : sequence of this type
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _concat_same_type(to_concat:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	static public var _dtype : Dynamic;
	/**
		Formatting function for scalar values.
		
		This is used in the default '__repr__'. The returned formatting
		function receives instances of your scalar type.
		
		Parameters
		----------
		boxed: bool, default False
		    An indicated for whether or not your array is being printed
		    within a Series, DataFrame, or Index (True), or just by
		    itself (False). This may be useful if you want scalar values
		    to appear differently within a Series versus on its own (e.g.
		    quoted or not).
		
		Returns
		-------
		Callable[[Any], str]
		    A callable that gets instances of the scalar type and
		    returns a string. By default, :func:`repr` is used
		    when ``boxed=False`` and :func:`str` is used when
		    ``boxed=True``.
	**/
	public function _formatter(?boxed:Dynamic):Dynamic;
	/**
		An array of values to be printed in, e.g. the Series repr
		
		.. deprecated:: 0.24.0
		
		   Use :meth:`ExtensionArray._formatter` instead.
	**/
	public function _formatting_values():Dynamic;
	/**
		Reconstruct an ExtensionArray after factorization.
		
		Parameters
		----------
		values : ndarray
		    An integer ndarray with the factorized values.
		original : ExtensionArray
		    The original ExtensionArray that factorize was called on.
		
		See Also
		--------
		pandas.factorize
		ExtensionArray.factorize
	**/
	static public function _from_factorized(uniques:Dynamic, original:Dynamic):Dynamic;
	/**
		Construct a Categorical from inferred values.
		
		For inferred categories (`dtype` is None) the categories are sorted.
		For explicit `dtype`, the `inferred_categories` are cast to the
		appropriate type.
		
		Parameters
		----------
		inferred_categories : Index
		inferred_codes : Index
		dtype : CategoricalDtype or 'category'
		true_values : list, optional
		    If none are provided, the default ones are
		    "True", "TRUE", and "true."
		
		Returns
		-------
		Categorical
	**/
	static public function _from_inferred_categories(inferred_categories:Dynamic, inferred_codes:Dynamic, dtype:Dynamic, ?true_values:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of scalars.
		
		Parameters
		----------
		scalars : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : boolean, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence(scalars:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Construct a new ExtensionArray from a sequence of strings.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		strings : Sequence
		    Each element will be an instance of the scalar type for this
		    array, ``cls.dtype.type``.
		dtype : dtype, optional
		    Construct for this particular dtype. This should be a Dtype
		    compatible with the ExtensionArray.
		copy : boolean, default False
		    If True, copy the underlying data.
		
		Returns
		-------
		ExtensionArray
	**/
	static public function _from_sequence_of_strings(strings:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Get the codes.
		
		Returns
		-------
		codes : integer array view
		    A non writable view of the `codes` array.
	**/
	public function _get_codes():Dynamic;
	public function _get_repr(?length:Dynamic, ?na_rep:Dynamic, ?footer:Dynamic):Dynamic;
	/**
		return an indexer coerced to the codes dtype
	**/
	public function _maybe_coerce_indexer(indexer:Dynamic):Dynamic;
	/**
		Internal pandas method for lossy conversion to a NumPy ndarray.
		
		This method is not part of the pandas interface.
		
		The expectation is that this is cheap to compute, and is primarily
		used for interacting with our indexers.
	**/
	public var _ndarray_values : Dynamic;
	/**
		Return a scalar result of performing the reduction operation.
		
		Parameters
		----------
		name : str
		    Name of the function, supported values are:
		    { any, all, min, max, sum, mean, median, prod,
		    std, var, sem, kurt, skew }.
		skipna : bool, default True
		    If True, skip NaN values.
		**kwargs
		    Additional keyword arguments passed to the reduction function.
		    Currently, `ddof` is the only supported kwarg.
		
		Returns
		-------
		scalar
		
		Raises
		------
		TypeError : subclass does not define reductions
	**/
	public function _reduce(name:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the base repr for the categories
	**/
	public function _repr_categories():Dynamic;
	/**
		Returns a string representation of the footer.
	**/
	public function _repr_categories_info():Dynamic;
	public function _repr_footer():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Compute the inverse of a categorical, returning
		a dict of categories -> indexers.
		
		*This is an internal function*
		
		Returns
		-------
		dict of categories -> indexers
		
		Example
		-------
		In [1]: c = pd.Categorical(list('aabca'))
		
		In [2]: c
		Out[2]:
		[a, a, b, c, a]
		Categories (3, object): [a, b, c]
		
		In [3]: c.categories
		Out[3]: Index([u'a', u'b', u'c'], dtype='object')
		
		In [4]: c.codes
		Out[4]: array([0, 0, 1, 2, 0], dtype=int8)
		
		In [5]: c._reverse_indexer()
		Out[5]: {'a': array([0, 1, 4]), 'b': array([2]), 'c': array([3])}
	**/
	public function _reverse_indexer():Dynamic;
	/**
		Sets new categories inplace
		
		Parameters
		----------
		fastpath : boolean (default: False)
		   Don't perform validation of the categories for uniqueness or nulls
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'b'])
		>>> c
		[a, b]
		Categories (2, object): [a, b]
		
		>>> c._set_categories(pd.Index(['a', 'c']))
		>>> c
		[a, c]
		Categories (2, object): [a, c]
	**/
	public function _set_categories(categories:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Not settable by the user directly
	**/
	public function _set_codes(codes:Dynamic):Dynamic;
	/**
		Internal method for directly updating the CategoricalDtype
		
		Parameters
		----------
		dtype : CategoricalDtype
		
		Notes
		-----
		We don't do any validation here. It's assumed that the dtype is
		a (valid) instance of `CategoricalDtype`.
	**/
	public function _set_dtype(dtype:Dynamic):Dynamic;
	/**
		Return a slice of myself.
		
		For internal compatibility with numpy arrays.
	**/
	public function _slice(slicer:Dynamic):Dynamic;
	/**
		a short repr displaying only max_vals and an optional (but default
		footer)
	**/
	public function _tidy_repr(?max_vals:Dynamic, ?footer:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Return values for sorting.
		
		Returns
		-------
		ndarray
		    The transformed values should maintain the ordering between values
		    within the array.
		
		See Also
		--------
		ExtensionArray.argsort
	**/
	public function _values_for_argsort():Dynamic;
	/**
		Return an array and missing value suitable for factorization.
		
		Returns
		-------
		values : ndarray
		
		    An array suitable for factorization. This should maintain order
		    and be a supported dtype (Float64, Int64, UInt64, String, Object).
		    By default, the extension array is cast to object dtype.
		na_value : object
		    The value in `values` to consider missing. This will be treated
		    as NA in the factorization routines, so it will be coded as
		    `na_sentinal` and not included in `uniques`. By default,
		    ``np.nan`` is used.
		
		Notes
		-----
		The values returned by this method are also used in
		:func:`pandas.util.hash_pandas_object`.
	**/
	public function _values_for_factorize():Dynamic;
	/**
		For correctly ranking ordered categorical data. See GH#15420
		
		Ordered categorical data should be ranked on the basis of
		codes with -1 translated to NaN.
		
		Returns
		-------
		numpy array
	**/
	public function _values_for_rank():Dynamic;
	/**
		Add new categories.
		
		`new_categories` will be included at the last/highest place in the
		categories and will be unused directly after this call.
		
		Parameters
		----------
		new_categories : category or list-like of category
		   The new categories to be included.
		inplace : boolean (default: False)
		   Whether or not to add the categories inplace or return a copy of
		   this categorical with added categories.
		
		Returns
		-------
		cat : Categorical with new categories added or None if inplace.
		
		Raises
		------
		ValueError
		    If the new categories include old categories or do not validate as
		    categories
		
		See Also
		--------
		rename_categories
		reorder_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function add_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return the indices that would sort the Categorical.
		
		Parameters
		----------
		ascending : bool, default True
		    Whether the indices should result in an ascending
		    or descending sort.
		kind : {'quicksort', 'mergesort', 'heapsort'}, optional
		    Sorting algorithm.
		*args, **kwargs:
		    passed through to :func:`numpy.argsort`.
		
		Returns
		-------
		argsorted : numpy array
		
		See Also
		--------
		numpy.ndarray.argsort
		
		Notes
		-----
		While an ordering is applied to the category values, arg-sorting
		in this context refers more to organizing and grouping together
		based on matching category values. Thus, this function can be
		called on an unordered Categorical instance unlike the functions
		'Categorical.min' and 'Categorical.max'.
		
		Examples
		--------
		>>> pd.Categorical(['b', 'b', 'a', 'c']).argsort()
		array([2, 0, 1, 3])
		
		>>> cat = pd.Categorical(['b', 'b', 'a', 'c'],
		...                      categories=['c', 'b', 'a'],
		...                      ordered=True)
		>>> cat.argsort()
		array([3, 0, 1, 2])
	**/
	public function argsort(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the Categorical to be ordered.
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy
		   of this categorical with ordered set to True
	**/
	public function as_ordered(?inplace:Dynamic):Dynamic;
	/**
		Set the Categorical to be unordered.
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy
		   of this categorical with ordered set to False
	**/
	public function as_unordered(?inplace:Dynamic):Dynamic;
	/**
		Coerce this type to another dtype
		
		Parameters
		----------
		dtype : numpy dtype or pandas type
		copy : bool, default True
		    By default, astype always returns a newly allocated object.
		    If copy is set to False and dtype is categorical, the original
		    object is returned.
		
		    .. versionadded:: 0.19.0
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		compat, we are always our own object
	**/
	public var base : Dynamic;
	/**
		The categories of this categorical.
		
		Setting assigns new values to each category (effectively a rename of
		each individual category).
		
		The assigned value has to be a list-like object. All items must be
		unique and the number of items in the new categories must be the same
		as the number of items in the old categories.
		
		Assigning to `categories` is a inplace operation!
		
		Raises
		------
		ValueError
		    If the new categories do not validate as categories or if the
		    number of new categories is unequal the number of old categories
		
		See Also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public var categories : Dynamic;
	/**
		assert that we are ordered 
	**/
	public function check_for_ordered(op:Dynamic):Dynamic;
	/**
		The category codes of this categorical.
		
		Level codes are an array if integer which are the positions of the real
		values in the categories array.
		
		There is not setter, use the other categorical methods and the normal item
		setter to change values in the categorical.
	**/
	public var codes : Dynamic;
	/**
		Copy constructor.
	**/
	public function copy():Dynamic;
	/**
		Describes this Categorical
		
		Returns
		-------
		description: `DataFrame`
		    A dataframe with frequency and counts by category.
	**/
	public function describe():Dynamic;
	/**
		Return the Categorical without null values.
		
		Missing values (-1 in .codes) are detected.
		
		Returns
		-------
		valid : Categorical
	**/
	public function dropna():pandas.Categorical;
	/**
		The :class:`~pandas.api.types.CategoricalDtype` for this instance
	**/
	public var dtype : Dynamic;
	/**
		Returns True if categorical arrays are equal.
		
		Parameters
		----------
		other : `Categorical`
		
		Returns
		-------
		are_equal : boolean
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Encode the extension array as an enumerated type.
		
		Parameters
		----------
		na_sentinel : int, default -1
		    Value to use in the `labels` array to indicate missing values.
		
		Returns
		-------
		labels : ndarray
		    An integer NumPy array that's an indexer into the original
		    ExtensionArray.
		uniques : ExtensionArray
		    An ExtensionArray containing the unique values of `self`.
		
		    .. note::
		
		       uniques will *not* contain an entry for the NA value of
		       the ExtensionArray if there are any missing values present
		       in `self`.
		
		See Also
		--------
		pandas.factorize : Top-level factorize method that dispatches here.
		
		Notes
		-----
		:meth:`pandas.factorize` offers a `sort` keyword as well.
	**/
	public function factorize(?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Fill NA/NaN values using the specified method.
		
		Parameters
		----------
		value : scalar, dict, Series
		    If a scalar value is passed it is used to fill all missing values.
		    Alternatively, a Series or dict can be used to fill in different
		    values for each index. The value should not be a list. The
		    value(s) passed should either be in the categories or should be
		    NaN.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		limit : int, default None
		    (Not implemented yet for Categorical!)
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled.
		
		Returns
		-------
		filled : Categorical with NA/NaN filled
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Make a Categorical type from codes and categories or dtype.
		
		This constructor is useful if you already have codes and
		categories/dtype and so do not need the (computation intensive)
		factorization step, which is usually done on the constructor.
		
		If your data does not follow this convention, please use the normal
		constructor.
		
		Parameters
		----------
		codes : array-like, integers
		    An integer array, where each integer points to a category in
		    categories or dtype.categories, or else is -1 for NaN
		categories : index-like, optional
		    The categories for the categorical. Items need to be unique.
		    If the categories are not given here, then they must be provided
		    in `dtype`.
		ordered : bool, optional
		    Whether or not this categorical is treated as an ordered
		    categorical. If not given here or in `dtype`, the resulting
		    categorical will be unordered.
		dtype : CategoricalDtype or the string "category", optional
		    If :class:`CategoricalDtype`, cannot be used together with
		    `categories` or `ordered`.
		
		    .. versionadded:: 0.24.0
		
		       When `dtype` is provided, neither `categories` nor `ordered`
		       should be provided.
		
		Examples
		--------
		>>> dtype = pd.CategoricalDtype(['a', 'b'], ordered=True)
		>>> pd.Categorical.from_codes(codes=[0, 1, 0, 1], dtype=dtype)
		[a, b, a, b]
		Categories (2, object): [a < b]
	**/
	static public function from_codes(codes:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return the values.
		
		For internal compatibility with pandas formatting.
		
		Returns
		-------
		values : numpy array
		    A numpy array of the same dtype as categorical.categories.dtype or
		    Index if datetime / periods
	**/
	public function get_values():Dynamic;
	/**
		Returns True if categoricals are the same dtype
		  same categories, and same ordered
		
		Parameters
		----------
		other : Categorical
		
		Returns
		-------
		are_equal : boolean
	**/
	public function is_dtype_equal(other:Dynamic):Dynamic;
	/**
		Check whether `values` are contained in Categorical.
		
		Return a boolean NumPy Array showing whether each element in
		the Categorical matches an element in the passed sequence of
		`values` exactly.
		
		Parameters
		----------
		values : set or list-like
		    The sequence of values to test. Passing in a single string will
		    raise a ``TypeError``. Instead, turn a single string into a
		    list of one element.
		
		Returns
		-------
		isin : numpy.ndarray (bool dtype)
		
		Raises
		------
		TypeError
		  * If `values` is not a set or list-like
		
		See Also
		--------
		pandas.Series.isin : Equivalent method on Series.
		
		Examples
		--------
		
		>>> s = pd.Categorical(['lama', 'cow', 'lama', 'beetle', 'lama',
		...                'hippo'])
		>>> s.isin(['cow', 'lama'])
		array([ True,  True,  True, False,  True, False])
		
		Passing a single string as ``s.isin('lama')`` will raise an error. Use
		a list of one element instead:
		
		>>> s.isin(['lama'])
		array([ True, False,  True, False,  True, False])
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Detect missing values
		
		Missing values (-1 in .codes) are detected.
		
		Returns
		-------
		a boolean array of whether my values are null
		
		See Also
		--------
		isna : Top-level isna.
		isnull : Alias of isna.
		Categorical.notna : Boolean inverse of Categorical.isna.
	**/
	public function isna():Dynamic;
	/**
		Detect missing values
		
		Missing values (-1 in .codes) are detected.
		
		Returns
		-------
		a boolean array of whether my values are null
		
		See Also
		--------
		isna : Top-level isna.
		isnull : Alias of isna.
		Categorical.notna : Boolean inverse of Categorical.isna.
	**/
	public function isnull():Dynamic;
	/**
		return the size of a single category
	**/
	public var itemsize : Dynamic;
	/**
		Map categories using input correspondence (dict, Series, or function).
		
		Maps the categories to new categories. If the mapping correspondence is
		one-to-one the result is a :class:`~pandas.Categorical` which has the
		same order property as the original, otherwise a :class:`~pandas.Index`
		is returned. NaN values are unaffected.
		
		If a `dict` or :class:`~pandas.Series` is used any unmapped category is
		mapped to `NaN`. Note that if this happens an :class:`~pandas.Index`
		will be returned.
		
		Parameters
		----------
		mapper : function, dict, or Series
		    Mapping correspondence.
		
		Returns
		-------
		pandas.Categorical or pandas.Index
		    Mapped categorical.
		
		See Also
		--------
		CategoricalIndex.map : Apply a mapping correspondence on a
		    :class:`~pandas.CategoricalIndex`.
		Index.map : Apply a mapping correspondence on an
		    :class:`~pandas.Index`.
		Series.map : Apply a mapping correspondence on a
		    :class:`~pandas.Series`.
		Series.apply : Apply more complex functions on a
		    :class:`~pandas.Series`.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'b', 'c'])
		>>> cat
		[a, b, c]
		Categories (3, object): [a, b, c]
		>>> cat.map(lambda x: x.upper())
		[A, B, C]
		Categories (3, object): [A, B, C]
		>>> cat.map({'a': 'first', 'b': 'second', 'c': 'third'})
		[first, second, third]
		Categories (3, object): [first, second, third]
		
		If the mapping is one-to-one the ordering of the categories is
		preserved:
		
		>>> cat = pd.Categorical(['a', 'b', 'c'], ordered=True)
		>>> cat
		[a, b, c]
		Categories (3, object): [a < b < c]
		>>> cat.map({'a': 3, 'b': 2, 'c': 1})
		[3, 2, 1]
		Categories (3, int64): [3 < 2 < 1]
		
		If the mapping is not one-to-one an :class:`~pandas.Index` is returned:
		
		>>> cat.map({'a': 'first', 'b': 'second', 'c': 'first'})
		Index(['first', 'second', 'first'], dtype='object')
		
		If a `dict` is used, all unmapped categories are mapped to `NaN` and
		the result is an :class:`~pandas.Index`:
		
		>>> cat.map({'a': 'first', 'b': 'second'})
		Index(['first', 'second', nan], dtype='object')
	**/
	public function map(mapper:Dynamic):Dynamic;
	/**
		The maximum value of the object.
		
		Only ordered `Categoricals` have a maximum!
		
		Raises
		------
		TypeError
		    If the `Categorical` is not `ordered`.
		
		Returns
		-------
		max : the maximum of this `Categorical`
	**/
	public function max(?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Memory usage of my values
		
		Parameters
		----------
		deep : bool
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption
		
		Returns
		-------
		bytes used
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False
		
		See Also
		--------
		numpy.ndarray.nbytes
	**/
	public function memory_usage(?deep:Dynamic):Dynamic;
	/**
		The minimum value of the object.
		
		Only ordered `Categoricals` have a minimum!
		
		Raises
		------
		TypeError
		    If the `Categorical` is not `ordered`.
		
		Returns
		-------
		min : the minimum of this `Categorical`
	**/
	public function min(?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the mode(s) of the Categorical.
		
		Always returns `Categorical` even if only one value.
		
		Parameters
		----------
		dropna : boolean, default True
		    Don't consider counts of NaN/NaT.
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		modes : `Categorical` (sorted)
	**/
	public function mode(?dropna:Dynamic):Dynamic;
	/**
		The number of bytes needed to store this object in memory.
	**/
	public var nbytes : Dynamic;
	/**
		Number of dimensions of the Categorical
	**/
	public var ndim : Dynamic;
	/**
		Inverse of isna
		
		Both missing values (-1 in .codes) and NA as a category are detected as
		null.
		
		Returns
		-------
		a boolean array of whether my values are not null
		
		See Also
		--------
		notna : Top-level notna.
		notnull : Alias of notna.
		Categorical.isna : Boolean inverse of Categorical.notna.
	**/
	public function notna():Dynamic;
	/**
		Inverse of isna
		
		Both missing values (-1 in .codes) and NA as a category are detected as
		null.
		
		Returns
		-------
		a boolean array of whether my values are not null
		
		See Also
		--------
		notna : Top-level notna.
		notnull : Alias of notna.
		Categorical.isna : Boolean inverse of Categorical.notna.
	**/
	public function notnull():Dynamic;
	/**
		Whether the categories have an ordered relationship.
	**/
	public var ordered : Dynamic;
	/**
		Replace specific elements in the Categorical with given values.
	**/
	public function put(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a flattened (numpy) array.
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		raveled : numpy array
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		Removes the specified categories.
		
		`removals` must be included in the old categories. Values which were in
		the removed categories will be set to NaN
		
		Parameters
		----------
		removals : category or list of categories
		   The categories which should be removed.
		inplace : boolean (default: False)
		   Whether or not to remove the categories inplace or return a copy of
		   this categorical with removed categories.
		
		Returns
		-------
		cat : Categorical with removed categories or None if inplace.
		
		Raises
		------
		ValueError
		    If the removals are not contained in the categories
		
		See Also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_unused_categories
		set_categories
	**/
	public function remove_categories(removals:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Removes categories which are not used.
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to drop unused categories inplace or return a copy of
		   this categorical with unused categories dropped.
		
		Returns
		-------
		cat : Categorical with unused categories dropped or None if inplace.
		
		See Also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		set_categories
	**/
	public function remove_unused_categories(?inplace:Dynamic):Dynamic;
	/**
		Renames categories.
		
		Parameters
		----------
		new_categories : list-like, dict-like or callable
		
		   * list-like: all items must be unique and the number of items in
		     the new categories must match the existing number of categories.
		
		   * dict-like: specifies a mapping from
		     old categories to new. Categories not contained in the mapping
		     are passed through and extra categories in the mapping are
		     ignored.
		
		     .. versionadded:: 0.21.0
		
		   * callable : a callable that is called on all items in the old
		     categories and whose return values comprise the new categories.
		
		     .. versionadded:: 0.23.0
		
		   .. warning::
		
		      Currently, Series are considered list like. In a future version
		      of pandas they'll be considered dict-like.
		
		inplace : boolean (default: False)
		   Whether or not to rename the categories inplace or return a copy of
		   this categorical with renamed categories.
		
		Returns
		-------
		cat : Categorical or None
		   With ``inplace=False``, the new categorical is returned.
		   With ``inplace=True``, there is no return value.
		
		Raises
		------
		ValueError
		    If new categories are list-like and do not have the same number of
		    items than the current categories or do not validate as categories
		
		See Also
		--------
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'a', 'b'])
		>>> c.rename_categories([0, 1])
		[0, 0, 1]
		Categories (2, int64): [0, 1]
		
		For dict-like ``new_categories``, extra keys are ignored and
		categories not in the dictionary are passed through
		
		>>> c.rename_categories({'a': 'A', 'c': 'C'})
		[A, A, b]
		Categories (2, object): [A, b]
		
		You may also provide a callable to create the new categories
		
		>>> c.rename_categories(lambda x: x.upper())
		[A, A, B]
		Categories (2, object): [A, B]
	**/
	public function rename_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Reorders categories as specified in new_categories.
		
		`new_categories` need to include all old categories and no new category
		items.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, optional
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of
		   this categorical with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		Raises
		------
		ValueError
		    If the new categories do not contain all old category items or any
		    new ones
		
		See Also
		--------
		rename_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function reorder_categories(new_categories:Dynamic, ?ordered:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Repeat elements of a Categorical.
		
		Returns a new Categorical where each element of the current Categorical
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    Categorical.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_array : Categorical
		    Newly created Categorical with repeated elements.
		
		See Also
		--------
		Series.repeat : Equivalent function for Series.
		Index.repeat : Equivalent function for Index.
		numpy.repeat : Similar method for :class:`numpy.ndarray`.
		ExtensionArray.take : Take arbitrary positions.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'b', 'c'])
		>>> cat
		[a, b, c]
		Categories (3, object): [a, b, c]
		>>> cat.repeat(2)
		[a, a, b, b, c, c]
		Categories (3, object): [a, b, c]
		>>> cat.repeat([1, 2, 3])
		[a, b, b, c, c, c]
		Categories (3, object): [a, b, c]
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):pandas.Categorical;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted Categorical `self` such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		Parameters
		----------
		value : array_like
		    Values to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		int or array of int
		    A scalar or array of insertion points with the
		    same shape as `value`.
		
		    .. versionchanged :: 0.24.0
		        If `value` is a scalar, an int is now always returned.
		        Previously, scalar inputs returned an 1-item array for
		        :class:`Series` and :class:`Categorical`.
		
		See Also
		--------
		numpy.searchsorted
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		Examples
		--------
		
		>>> x = pd.Series([1, 2, 3])
		>>> x
		0    1
		1    2
		2    3
		dtype: int64
		
		>>> x.searchsorted(4)
		3
		
		>>> x.searchsorted([0, 4])
		array([0, 3])
		
		>>> x.searchsorted([1, 3], side='left')
		array([0, 2])
		
		>>> x.searchsorted([1, 3], side='right')
		array([1, 3])
		
		>>> x = pd.Categorical(['apple', 'bread', 'bread',
		                        'cheese', 'milk'], ordered=True)
		[apple, bread, bread, cheese, milk]
		Categories (4, object): [apple < bread < cheese < milk]
		
		>>> x.searchsorted('bread')
		1
		
		>>> x.searchsorted(['bread'], side='right')
		array([3])
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Sets the categories to the specified new_categories.
		
		`new_categories` can include new categories (which will result in
		unused categories) or remove old categories (which results in values
		set to NaN). If `rename==True`, the categories will simple be renamed
		(less or more items than in old categories will result in values set to
		NaN or in unused categories respectively).
		
		This method can be used to perform more than one action of adding,
		removing, and reordering simultaneously and is therefore faster than
		performing the individual steps via the more specialised methods.
		
		On the other hand this methods does not do checks (e.g., whether the
		old categories are included in the new categories on a reorder), which
		can result in surprising changes, for example when using special string
		dtypes on python3, which does not considers a S1 string equal to a
		single char python string.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, (default: False)
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		rename : boolean (default: False)
		   Whether or not the new_categories should be considered as a rename
		   of the old categories or as reordered categories.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of
		   this categorical with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		Raises
		------
		ValueError
		    If new_categories does not validate as categories
		
		See Also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
	**/
	public function set_categories(new_categories:Dynamic, ?ordered:Dynamic, ?rename:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Sets the ordered attribute to the boolean value
		
		Parameters
		----------
		value : boolean to set whether this categorical is ordered (True) or
		   not (False)
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy
		   of this categorical with ordered set to the value
	**/
	public function set_ordered(value:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Shape of the Categorical.
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		shape : tuple
	**/
	public var shape : python.Tuple<Dynamic>;
	/**
		Shift Categorical by desired number of periods.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		fill_value : object, optional
		    The scalar value to use for newly introduced missing values.
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		shifted : Categorical
	**/
	public function shift(periods:Dynamic, ?fill_value:Dynamic):pandas.Categorical;
	/**
		return the len of myself
	**/
	public var size : Dynamic;
	/**
		Sorts the Categorical by category value returning a new
		Categorical by default.
		
		While an ordering is applied to the category values, sorting in this
		context refers more to organizing and grouping together based on
		matching category values. Thus, this function can be called on an
		unordered Categorical instance unlike the functions 'Categorical.min'
		and 'Categorical.max'.
		
		Parameters
		----------
		inplace : boolean, default False
		    Do operation in place.
		ascending : boolean, default True
		    Order ascending. Passing False orders descending. The
		    ordering parameter provides the method by which the
		    category values are organized.
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Returns
		-------
		y : Categorical or None
		
		See Also
		--------
		Categorical.sort
		Series.sort_values
		
		Examples
		--------
		>>> c = pd.Categorical([1, 2, 2, 1, 5])
		>>> c
		[1, 2, 2, 1, 5]
		Categories (3, int64): [1, 2, 5]
		>>> c.sort_values()
		[1, 1, 2, 2, 5]
		Categories (3, int64): [1, 2, 5]
		>>> c.sort_values(ascending=False)
		[5, 2, 2, 1, 1]
		Categories (3, int64): [1, 2, 5]
		
		Inplace sorting can be done as well:
		
		>>> c.sort_values(inplace=True)
		>>> c
		[1, 1, 2, 2, 5]
		Categories (3, int64): [1, 2, 5]
		>>>
		>>> c = pd.Categorical([1, 2, 2, 1, 5])
		
		'sort_values' behaviour with NaNs. Note that 'na_position'
		is independent of the 'ascending' parameter:
		
		>>> c = pd.Categorical([np.nan, 2, 2, np.nan, 5])
		>>> c
		[NaN, 2.0, 2.0, NaN, 5.0]
		Categories (2, int64): [2, 5]
		>>> c.sort_values()
		[2.0, 2.0, 5.0, NaN, NaN]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(ascending=False)
		[5.0, 2.0, 2.0, NaN, NaN]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(na_position='first')
		[NaN, NaN, 2.0, 2.0, 5.0]
		Categories (2, int64): [2, 5]
		>>> c.sort_values(ascending=False, na_position='first')
		[NaN, NaN, 5.0, 2.0, 2.0]
		Categories (2, int64): [2, 5]
	**/
	public function sort_values(?inplace:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Take elements from the Categorical.
		
		Parameters
		----------
		indexer : sequence of int
		    The indices in `self` to take. The meaning of negative values in
		    `indexer` depends on the value of `allow_fill`.
		allow_fill : bool, default None
		    How to handle negative values in `indexer`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right. This is similar to
		      :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate missing values
		      (the default). These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		    .. versionchanged:: 0.23.0
		
		       Deprecated the default value of `allow_fill`. The deprecated
		       default is ``True``. In the future, this will change to
		       ``False``.
		
		fill_value : object
		    The value to use for `indices` that are missing (-1), when
		    ``allow_fill=True``. This should be the category, i.e. a value
		    in ``self.categories``, not a code.
		
		Returns
		-------
		Categorical
		    This Categorical will have the same categories and ordered as
		    `self`.
		
		See Also
		--------
		Series.take : Similar method for Series.
		numpy.ndarray.take : Similar method for NumPy arrays.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'a', 'b'])
		>>> cat
		[a, a, b]
		Categories (2, object): [a, b]
		
		Specify ``allow_fill==False`` to have negative indices mean indexing
		from the right.
		
		>>> cat.take([0, -1, -2], allow_fill=False)
		[a, b, a]
		Categories (2, object): [a, b]
		
		With ``allow_fill=True``, indices equal to ``-1`` mean "missing"
		values that should be filled with the `fill_value`, which is
		``np.nan`` by default.
		
		>>> cat.take([0, -1, -1], allow_fill=True)
		[a, NaN, NaN]
		Categories (2, object): [a, b]
		
		The fill value can be specified.
		
		>>> cat.take([0, -1, -1], allow_fill=True, fill_value='a')
		[a, a, a]
		Categories (3, object): [a, b]
		
		Specifying a fill value that's not in ``self.categories``
		will raise a ``TypeError``.
	**/
	public function take(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Take elements from the Categorical.
		
		Parameters
		----------
		indexer : sequence of int
		    The indices in `self` to take. The meaning of negative values in
		    `indexer` depends on the value of `allow_fill`.
		allow_fill : bool, default None
		    How to handle negative values in `indexer`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right. This is similar to
		      :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate missing values
		      (the default). These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		    .. versionchanged:: 0.23.0
		
		       Deprecated the default value of `allow_fill`. The deprecated
		       default is ``True``. In the future, this will change to
		       ``False``.
		
		fill_value : object
		    The value to use for `indices` that are missing (-1), when
		    ``allow_fill=True``. This should be the category, i.e. a value
		    in ``self.categories``, not a code.
		
		Returns
		-------
		Categorical
		    This Categorical will have the same categories and ordered as
		    `self`.
		
		See Also
		--------
		Series.take : Similar method for Series.
		numpy.ndarray.take : Similar method for NumPy arrays.
		
		Examples
		--------
		>>> cat = pd.Categorical(['a', 'a', 'b'])
		>>> cat
		[a, a, b]
		Categories (2, object): [a, b]
		
		Specify ``allow_fill==False`` to have negative indices mean indexing
		from the right.
		
		>>> cat.take([0, -1, -2], allow_fill=False)
		[a, b, a]
		Categories (2, object): [a, b]
		
		With ``allow_fill=True``, indices equal to ``-1`` mean "missing"
		values that should be filled with the `fill_value`, which is
		``np.nan`` by default.
		
		>>> cat.take([0, -1, -1], allow_fill=True)
		[a, NaN, NaN]
		Categories (2, object): [a, b]
		
		The fill value can be specified.
		
		>>> cat.take([0, -1, -1], allow_fill=True, fill_value='a')
		[a, a, a]
		Categories (3, object): [a, b]
		
		Specifying a fill value that's not in ``self.categories``
		will raise a ``TypeError``.
	**/
	public function take_nd(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return my 'dense' representation
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		dense : array
	**/
	public function to_dense():Array<Dynamic>;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
	**/
	public function to_list():Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
	**/
	public function tolist():Dynamic;
	/**
		Return the ``Categorical`` which ``categories`` and ``codes`` are
		unique. Unused categories are NOT returned.
		
		- unordered category: values and categories are sorted by appearance
		  order.
		- ordered category: values are sorted by appearance order, categories
		  keeps existing order.
		
		Returns
		-------
		unique values : ``Categorical``
		
		Examples
		--------
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.Categorical(list('baabc'))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.Categorical(list('baabc'), categories=list('abc'))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.Categorical(list('baabc'),
		...                categories=list('abc'),
		...                ordered=True)
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		See Also
		--------
		unique
		CategoricalIndex.unique
		Series.unique
	**/
	public function unique():Dynamic;
	/**
		Returns a Series containing counts of each category.
		
		Every category will have an entry, even those with a count of 0.
		
		Parameters
		----------
		dropna : boolean, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		counts : Series
		
		See Also
		--------
		Series.value_counts
	**/
	public function value_counts(?dropna:Dynamic):pandas.Series;
	/**
		Return a view of myself.
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		view : Categorical
		   Returns `self`!
	**/
	public function view():pandas.Categorical;
}