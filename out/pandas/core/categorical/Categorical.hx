/* This file is generated, do not edit! */
package pandas.core.categorical;
@:pythonImport("pandas.core.categorical", "Categorical") extern class Categorical {
	public var T : Dynamic;
	/**
		The numpy array interface.
		
		Returns
		-------
		values : numpy array
		    A numpy array of either the specified dtype or, if dtype==None (default), the same
		    dtype as categorical.categories.dtype
	**/
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(values:Dynamic, ?categories:Dynamic, ?ordered:Dynamic, ?name:Dynamic, ?fastpath:Dynamic, ?levels:Dynamic):Dynamic;
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
		    If (one or more) Value is not in categories or if a assigned `Categorical` has not the
		    same categories
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Necessary for making this object picklable
	**/
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unicode representation. 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _categories : Dynamic;
	static public var _codes : Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Gets the categories 
	**/
	public function _get_categories():Dynamic;
	/**
		Get the codes.
		
		Returns
		-------
		codes : integer array view
		    A non writable view of the `codes` array.
	**/
	public function _get_codes():Dynamic;
	/**
		Get the category labels (deprecated).
		
		Deprecated, use .codes!
	**/
	public function _get_labels():Dynamic;
	/**
		Gets the levels (deprecated, use "categories") 
	**/
	public function _get_levels():Dynamic;
	/**
		Gets the ordered attribute 
	**/
	public function _get_ordered():Dynamic;
	public function _get_repr(?length:Dynamic, ?na_rep:Dynamic, ?footer:Dynamic):Dynamic;
	/**
		return an indexer coerced to the codes dtype 
	**/
	public function _maybe_coerce_indexer(indexer:Dynamic):Dynamic;
	static public var _ordered : Dynamic;
	/**
		perform the reduction type operation 
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Sets new categories
		
		Parameters
		----------
		fastpath : boolean (default: False)
		   Don't perform validation of the categories for uniqueness or nulls
	**/
	public function _set_categories(categories:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Not settable by the user directly
	**/
	public function _set_codes(codes:Dynamic):Dynamic;
	/**
		set new levels (deprecated, use "categories") 
	**/
	public function _set_levels(levels:Dynamic):Dynamic;
	/**
		Sets the ordered attribute to the boolean value 
	**/
	public function _set_ordered(value:Dynamic):Dynamic;
	/**
		Return a slice of myself.
		
		For internal compatibility with numpy arrays.
	**/
	public function _slice(slicer:Dynamic):Dynamic;
	/**
		a short repr displaying only max_vals and an optional (but default footer) 
	**/
	public function _tidy_repr(?max_vals:Dynamic, ?footer:Dynamic):Dynamic;
	static public var _typ : Dynamic;
	/**
		Validates that we have good categories
		
		Parameters
		----------
		fastpath : boolean (default: False)
		   Don't perform validation of the categories for uniqueness or nulls
	**/
	static public function _validate_categories(categories:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Add new categories.
		
		`new_categories` will be included at the last/highest place in the categories and will be
		unused directly after this call.
		
		Raises
		------
		ValueError
		    If the new categories include old categories or do not validate as categories
		
		Parameters
		----------
		new_categories : category or list-like of category
		   The new categories to be included.
		inplace : boolean (default: False)
		   Whether or not to add the categories inplace or return a copy of this categorical
		   with added categories.
		
		Returns
		-------
		cat : Categorical with new categories added or None if inplace.
		
		See also
		--------
		rename_categories
		reorder_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function add_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Implements ndarray.argsort.
		
		For internal compatibility with numpy arrays.
		
		Only ordered Categoricals can be argsorted!
		
		Returns
		-------
		argsorted : numpy array
	**/
	public function argsort(?ascending:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the Categorical to be ordered
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy of this categorical
		   with ordered set to True
	**/
	public function as_ordered(?inplace:Dynamic):Dynamic;
	/**
		Sets the Categorical to be unordered
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy of this categorical
		   with ordered set to False
	**/
	public function as_unordered(?inplace:Dynamic):Dynamic;
	/**
		coerce this type to another dtype 
	**/
	public function astype(dtype:Dynamic):Dynamic;
	/**
		compat, we are always our own object 
	**/
	public var base : Dynamic;
	/**
		The categories of this categorical.
		
		Setting assigns new values to each category (effectively a rename of
		each individual category).
		
		The assigned value has to be a list-like object. All items must be unique and the number of items
		in the new categories must be the same as the number of items in the old categories.
		
		Assigning to `categories` is a inplace operation!
		
		Raises
		------
		ValueError
		    If the new categories do not validate as categories or if the number of new categories is
		    unequal the number of old categories
		
		See also
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
		
		There is not setter, use the other categorical methods and the normal item setter to change
		values in the categorical.
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
		
		Both missing values (-1 in .codes) and NA as a category are detected.
		NA is removed from the categories if present.
		
		Returns
		-------
		valid : Categorical
	**/
	public function dropna():Dynamic;
	static public var dtype : Dynamic;
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
		Fill NA/NaN values using the specified method.
		
		Parameters
		----------
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		value : scalar
		    Value to use to fill holes (e.g. 0)
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
		Make a Categorical type from a single array-like object.
		
		For internal compatibility with numpy arrays.
		
		Parameters
		----------
		data : array-like
		    Can be an Index or array-like. The categories are assumed to be
		    the unique values of `data`.
	**/
	static public function from_array(data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a Categorical type from codes and categories arrays.
		
		This constructor is useful if you already have codes and categories and so do not need the
		(computation intensive) factorization step, which is usually done on the constructor.
		
		If your data does not follow this convention, please use the normal constructor.
		
		Parameters
		----------
		codes : array-like, integers
		    An integer array, where each integer points to a category in categories or -1 for NaN
		categories : index-like
		    The categories for the categorical. Items need to be unique.
		ordered : boolean, (default False)
		    Whether or not this categorical is treated as a ordered categorical. If not given,
		    the resulting categorical will be unordered.
	**/
	static public function from_codes(codes:Dynamic, categories:Dynamic, ?ordered:Dynamic, ?name:Dynamic):Dynamic;
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
		Detect missing values
		
		Both missing values (-1 in .codes) and NA as a category are detected.
		
		Returns
		-------
		a boolean array of whether my values are null
		
		See also
		--------
		pandas.isnull : pandas version
		Categorical.notnull : boolean inverse of Categorical.isnull
	**/
	public function isnull():Dynamic;
	static public var itemsize : Dynamic;
	/**
		Get the category labels (deprecated).
		
		Deprecated, use .codes!
	**/
	public var labels : Dynamic;
	/**
		Gets the levels (deprecated, use "categories") 
	**/
	public var levels : Dynamic;
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
		
		Empty if nothing occurs at least 2 times.  Always returns `Categorical` even
		if only one value.
		
		Returns
		-------
		modes : `Categorical` (sorted)
	**/
	public function mode():Dynamic;
	public var nbytes : Dynamic;
	static public var ndim : Dynamic;
	/**
		Reverse of isnull
		
		Both missing values (-1 in .codes) and NA as a category are detected as null.
		
		Returns
		-------
		a boolean array of whether my values are not null
		
		See also
		--------
		pandas.notnull : pandas version
		Categorical.isnull : boolean inverse of Categorical.notnull
	**/
	public function notnull():Dynamic;
	/**
		DEPRECATED: use :meth:`Categorical.sort_values`
		
		Sorts the Category by category value returning a new Categorical by default.
		
		Only ordered Categoricals can be sorted!
		
		Categorical.sort is the equivalent but sorts the Categorical inplace.
		
		Parameters
		----------
		inplace : boolean, default False
		    Do operation in place.
		ascending : boolean, default True
		    Sort ascending. Passing False sorts descending
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Returns
		-------
		y : Category or None
		
		See Also
		--------
		Category.sort
	**/
	public function order(?inplace:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Gets the ordered attribute 
	**/
	public var ordered : Dynamic;
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
		
		`removals` must be included in the old categories. Values which were in the removed
		categories will be set to NaN
		
		Raises
		------
		ValueError
		    If the removals are not contained in the categories
		
		Parameters
		----------
		removals : category or list of categories
		   The categories which should be removed.
		inplace : boolean (default: False)
		   Whether or not to remove the categories inplace or return a copy of this categorical
		   with removed categories.
		
		Returns
		-------
		cat : Categorical with removed categories or None if inplace.
		
		See also
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
		   Whether or not to drop unused categories inplace or return a copy of this categorical
		   with unused categories dropped.
		
		Returns
		-------
		cat : Categorical with unused categories dropped or None if inplace.
		
		See also
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
		
		The new categories has to be a list-like object. All items must be unique and the number of
		items in the new categories must be the same as the number of items in the old categories.
		
		Raises
		------
		ValueError
		    If the new categories do not have the same number of items than the current categories
		    or do not validate as categories
		
		Parameters
		----------
		new_categories : Index-like
		   The renamed categories.
		inplace : boolean (default: False)
		   Whether or not to rename the categories inplace or return a copy of this categorical
		   with renamed categories.
		
		Returns
		-------
		cat : Categorical with renamed categories added or None if inplace.
		
		See also
		--------
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function rename_categories(new_categories:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Reorders categories as specified in new_categories.
		
		`new_categories` need to include all old categories and no new category items.
		
		Raises
		------
		ValueError
		    If the new categories do not contain all old category items or any new ones
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, optional
		   Whether or not the categorical is treated as a ordered categorical. If not given,
		   do not change the ordered information.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of this categorical
		   with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		See also
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
		
		See also
		--------
		numpy.ndarray.repeat
	**/
	public function repeat(repeats:Dynamic):Dynamic;
	/**
		compat with .reshape 
	**/
	public function reshape(new_shape:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted Categorical `self` such that, if the
		corresponding elements in `v` were inserted before the indices, the
		order of `self` would be preserved.
		
		Parameters
		----------
		v : array_like
		    Array-like values or a scalar value, to insert/search for in `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `a`).
		sorter : 1-D array_like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		indices : array of ints
		    Array of insertion points with the same shape as `v`.
		
		See Also
		--------
		Series.searchsorted
		numpy.searchsorted
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		Examples
		--------
		>>> x = pd.Categorical(['apple', 'bread', 'bread', 'cheese', 'milk' ])
		[apple, bread, bread, cheese, milk]
		Categories (4, object): [apple < bread < cheese < milk]
		>>> x.searchsorted('bread')
		array([1])     # Note: an array, not a scalar
		>>> x.searchsorted(['bread'])
		array([1])
		>>> x.searchsorted(['bread', 'eggs'])
		array([1, 4])
		>>> x.searchsorted(['bread', 'eggs'], side='right')
		array([3, 4])       # eggs before milk
		>>> x = pd.Categorical(['apple', 'bread', 'bread', 'cheese', 'milk', 'donuts' ])
		>>> x.searchsorted(['bread', 'eggs'], side='right', sorter=[0, 1, 2, 3, 5, 4])
		array([3, 5])       # eggs after donuts, after switching milk and donuts
	**/
	public function searchsorted(v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Sets the categories to the specified new_categories.
		
		`new_categories` can include new categories (which will result in unused categories) or
		or remove old categories (which results in values set to NaN). If `rename==True`,
		the categories will simple be renamed (less or more items than in old categories will
		result in values set to NaN or in unused categories respectively).
		
		This method can be used to perform more than one action of adding, removing,
		and reordering simultaneously and is therefore faster than performing the individual steps
		via the more specialised methods.
		
		On the other hand this methods does not do checks (e.g., whether the old categories are
		included in the new categories on a reorder), which can result in surprising changes, for
		example when using special string dtypes on python3, which does not considers a S1 string
		equal to a single char python string.
		
		Raises
		------
		ValueError
		    If new_categories does not validate as categories
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, (default: False)
		   Whether or not the categorical is treated as a ordered categorical. If not given,
		   do not change the ordered information.
		rename : boolean (default: False)
		   Whether or not the new_categories should be considered as a rename of the old
		   categories or as reordered categories.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of this categorical
		   with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		See also
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
		value : boolean to set whether this categorical is ordered (True) or not (False)
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy of this categorical
		   with ordered set to the value
	**/
	public function set_ordered(value:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Shape of the Categorical.
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		shape : tuple
	**/
	public var shape : Dynamic;
	/**
		Shift Categorical by desired number of periods.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		
		Returns
		-------
		shifted : Categorical
	**/
	public function shift(periods:Dynamic):Dynamic;
	static public var size : Dynamic;
	/**
		Sorts the Category inplace by category value.
		
		Only ordered Categoricals can be sorted!
		
		Catgorical.order is the equivalent but returns a new Categorical.
		
		Parameters
		----------
		ascending : boolean, default True
		    Sort ascending. Passing False sorts descending
		inplace : boolean, default False
		    Do operation in place.
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Returns
		-------
		y : Category or None
		
		See Also
		--------
		Category.sort_values
	**/
	public function sort(?inplace:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sorts the Category by category value returning a new Categorical by default.
		
		Only ordered Categoricals can be sorted!
		
		Categorical.sort is the equivalent but sorts the Categorical inplace.
		
		Parameters
		----------
		inplace : boolean, default False
		    Do operation in place.
		ascending : boolean, default True
		    Sort ascending. Passing False sorts descending
		na_position : {'first', 'last'} (optional, default='last')
		    'first' puts NaNs at the beginning
		    'last' puts NaNs at the end
		
		Returns
		-------
		y : Category or None
		
		See Also
		--------
		Category.sort
	**/
	public function sort_values(?inplace:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Take the codes by the indexer, fill with the fill_value.
		
		For internal compatibility with numpy arrays.
	**/
	public function take(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Take the codes by the indexer, fill with the fill_value.
		
		For internal compatibility with numpy arrays.
	**/
	public function take_nd(indexer:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Return my 'dense' representation
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		dense : array
	**/
	public function to_dense():Dynamic;
	/**
		Return the ``Categorical`` which ``categories`` and ``codes`` are unique.
		Unused categories are NOT returned.
		
		- unordered category: values and categories are sorted by appearance
		  order.
		- ordered category: values are sorted by appearance order, categories
		  keeps existing order.
		
		Returns
		-------
		unique values : ``Categorical``
	**/
	public function unique():Dynamic;
	/**
		Returns a Series containing counts of each category.
		
		Every category will have an entry, even those with a count of 0.
		
		Parameters
		----------
		dropna : boolean, default True
		    Don't include counts of NaN, even if NaN is a category.
		
		Returns
		-------
		counts : Series
	**/
	public function value_counts(?dropna:Dynamic):Dynamic;
	/**
		Return a view of myself.
		
		For internal compatibility with numpy arrays.
		
		Returns
		-------
		view : Categorical
		   Returns `self`!
	**/
	public function view():Dynamic;
}