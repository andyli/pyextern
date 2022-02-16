/* This file is generated, do not edit! */
package pandas.core.dtypes.concat;
@:pythonImport("pandas.core.dtypes.concat") extern class Concat_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		provide concatenation of an datetimelike array of arrays each of which is a
		single M8[ns], datetime64[ns, tz] or m8[ns] dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_datetime(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _concatenate_2d(to_concat:Dynamic, axis:Dynamic):Dynamic;
	/**
		Cast array (ndarray or ExtensionArray) to the new dtype.
		
		Parameters
		----------
		values : ndarray or ExtensionArray
		dtype : dtype object
		copy : bool, default False
		    copy if indicated
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function astype_array(values:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Helper function for `arr.astype(common_dtype)` but handling all special
		cases.
	**/
	static public function cast_to_common_type(arr:Dynamic, dtype:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		ea_compat_axis : bool, default False
		    For ExtensionArray compat, behave as if axis == 1 when determining
		    whether to drop empty arrays.
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function concat_compat(to_concat:Dynamic, ?axis:Dynamic, ?ea_compat_axis:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check whether an array-like is a 1-D pandas sparse array.
		
		Check that the one-dimensional array-like is a pandas sparse array.
		Returns True if it is a pandas sparse array, not another type of
		sparse array.
		
		Parameters
		----------
		arr : array-like
		    Array-like to check.
		
		Returns
		-------
		bool
		    Whether or not the array-like is a pandas sparse array.
		
		Examples
		--------
		Returns `True` if the parameter is a 1-D pandas sparse array.
		
		>>> is_sparse(pd.arrays.SparseArray([0, 0, 1, 0]))
		True
		>>> is_sparse(pd.Series(pd.arrays.SparseArray([0, 0, 1, 0])))
		True
		
		Returns `False` if the parameter is not sparse.
		
		>>> is_sparse(np.array([0, 0, 1, 0]))
		False
		>>> is_sparse(pd.Series([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter is not a pandas sparse array.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([0, 1, 0, 0]))
		False
		
		Returns `False` if the parameter has more than one dimension.
	**/
	static public function is_sparse(arr:Dynamic):Dynamic;
	/**
		Combine list-like of Categorical-like, unioning categories.
		
		All categories must have the same dtype.
		
		Parameters
		----------
		to_union : list-like
		    Categorical, CategoricalIndex, or Series with dtype='category'.
		sort_categories : bool, default False
		    If true, resulting categories will be lexsorted, otherwise
		    they will be ordered as they appear in the data.
		ignore_order : bool, default False
		    If true, the ordered attribute of the Categoricals will be ignored.
		    Results in an unordered categorical.
		
		Returns
		-------
		Categorical
		
		Raises
		------
		TypeError
		    - all inputs do not have the same dtype
		    - all inputs do not have the same ordered property
		    - all inputs are ordered and their categories are not identical
		    - sort_categories=True and Categoricals are ordered
		ValueError
		    Empty list of categoricals passed
		
		Notes
		-----
		To learn more about categories, see `link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/categorical.html#unioning>`__
		
		Examples
		--------
		>>> from pandas.api.types import union_categoricals
		
		If you want to combine categoricals that do not necessarily have
		the same categories, `union_categoricals` will combine a list-like
		of categoricals. The new categories will be the union of the
		categories being combined.
		
		>>> a = pd.Categorical(["b", "c"])
		>>> b = pd.Categorical(["a", "b"])
		>>> union_categoricals([a, b])
		['b', 'c', 'a', 'b']
		Categories (3, object): ['b', 'c', 'a']
		
		By default, the resulting categories will be ordered as they appear
		in the `categories` of the data. If you want the categories to be
		lexsorted, use `sort_categories=True` argument.
		
		>>> union_categoricals([a, b], sort_categories=True)
		['b', 'c', 'a', 'b']
		Categories (3, object): ['a', 'b', 'c']
		
		`union_categoricals` also works with the case of combining two
		categoricals of the same categories and order information (e.g. what
		you could also `append` for).
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "a"], ordered=True)
		>>> union_categoricals([a, b])
		['a', 'b', 'a', 'b', 'a']
		Categories (2, object): ['a' < 'b']
		
		Raises `TypeError` because the categories are ordered and not identical.
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> union_categoricals([a, b])
		Traceback (most recent call last):
		    ...
		TypeError: to union ordered Categoricals, all categories must be the same
		
		New in version 0.20.0
		
		Ordered categoricals with different categories or orderings can be
		combined by using the `ignore_ordered=True` argument.
		
		>>> a = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> b = pd.Categorical(["c", "b", "a"], ordered=True)
		>>> union_categoricals([a, b], ignore_order=True)
		['a', 'b', 'c', 'c', 'b', 'a']
		Categories (3, object): ['a', 'b', 'c']
		
		`union_categoricals` also works with a `CategoricalIndex`, or `Series`
		containing categorical data, but note that the resulting array will
		always be a plain `Categorical`
		
		>>> a = pd.Series(["b", "c"], dtype='category')
		>>> b = pd.Series(["a", "b"], dtype='category')
		>>> union_categoricals([a, b])
		['b', 'c', 'a', 'b']
		Categories (3, object): ['b', 'c', 'a']
	**/
	static public function union_categoricals(to_union:Dynamic, ?sort_categories:Dynamic, ?ignore_order:Dynamic):Dynamic;
}