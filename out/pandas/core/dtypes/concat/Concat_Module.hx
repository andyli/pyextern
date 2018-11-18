/* This file is generated, do not edit! */
package pandas.core.dtypes.concat;
@:pythonImport("pandas.core.dtypes.concat") extern class Concat_Module {
	static public var _NS_DTYPE : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate an object/categorical array of arrays, each of which is a
		single dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : int
		    Axis to provide concatenation in the current implementation this is
		    always 0, e.g. we only have 1D categoricals
		
		Returns
		-------
		Categorical
		    A single array, preserving the combined dtypes
	**/
	static public function _concat_categorical(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_compat(to_concat:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		provide concatenation of an datetimelike array of arrays each of which is a
		single M8[ns], datetimet64[ns, tz] or m8[ns] dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		typs : set of to_concat dtypes
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_datetime(to_concat:Dynamic, ?axis:Dynamic, ?typs:Dynamic):Dynamic;
	/**
		concat DatetimeIndex with the same tz
		all inputs must be DatetimeIndex
		it is used in DatetimeIndex.append also
	**/
	static public function _concat_datetimetz(to_concat:Dynamic, ?name:Dynamic):Dynamic;
	/**
		concat all inputs as object. DatetimeIndex, TimedeltaIndex and
		PeriodIndex are converted to object dtype before concatenation
	**/
	static public function _concat_index_asobject(to_concat:Dynamic, ?name:Dynamic):Dynamic;
	static public function _concat_index_same_dtype(indexes:Dynamic, ?klass:Dynamic):Dynamic;
	/**
		Concatenates multiple RangeIndex instances. All members of "indexes" must
		be of type RangeIndex; result will be RangeIndex if possible, Int64Index
		otherwise. E.g.:
		indexes = [RangeIndex(3), RangeIndex(3, 6)] -> RangeIndex(6)
		indexes = [RangeIndex(3), RangeIndex(4, 6)] -> Int64Index([0,1,2,4,5])
	**/
	static public function _concat_rangeindex_same_dtype(indexes:Dynamic):Dynamic;
	/**
		provide concatenation of an sparse/dense array of arrays each of which is a
		single dtype
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		typs : set of to_concat dtypes
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function _concat_sparse(to_concat:Dynamic, ?axis:Dynamic, ?typs:Dynamic):Dynamic;
	static public function _concatenate_2d(to_concat:Dynamic, axis:Dynamic):Dynamic;
	static public function _convert_datetimelike_to_object(x:Dynamic):Dynamic;
	/**
		return appropriate class of DataFrame-like concat
		if all blocks are SparseBlock, return SparseDataFrame
		otherwise, return 1st obj
	**/
	static public function _get_frame_result_type(result:Dynamic, objs:Dynamic):Dynamic;
	/**
		return appropriate class of Series concat
		input is either dict or array-like
	**/
	static public function _get_series_result_type(result:Dynamic, ?objs:Dynamic):Dynamic;
	/**
		return appropriate class of Series. When data is sparse
		it will return a SparseSeries, otherwise it will return
		the Series.
		
		Parameters
		----------
		data : array-like
		obj : DataFrame
		
		Returns
		-------
		Series or SparseSeries
	**/
	static public function _get_sliced_frame_result_type(data:Dynamic, obj:Dynamic):Dynamic;
	/**
		Parameters
		----------
		l : list of arrays
		
		Returns
		-------
		a set of kinds that exist in this list of arrays
	**/
	static public function get_dtype_kinds(l:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
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
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a datetime array-like with a timezone
		component in its dtype.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime array-like with
		          a timezone component in its dtype.
		
		Examples
		--------
		>>> is_datetimetz([1, 2, 3])
		False
		
		Although the following examples are both DatetimeIndex objects,
		the first one returns False because it has no timezone component
		unlike the second one, which returns True.
		
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		The object need not be a DatetimeIndex object. It just needs to have
		a dtype which has a timezone component.
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimetz(s)
		True
	**/
	static public function is_datetimetz(arr:Dynamic):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		----------
		boolean : Whether or not the two dtypes are equal.
		
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
		>>> is_dtype_equal(DatetimeTZDtype(), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check if an object is a pandas extension array type.
		
		Parameters
		----------
		arr_or_dtype : object
		
		Returns
		-------
		bool
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like is a pandas sparse array.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a pandas sparse array.
		
		Examples
		--------
		>>> is_sparse(np.array([1, 2, 3]))
		False
		>>> is_sparse(pd.SparseArray([1, 2, 3]))
		True
		>>> is_sparse(pd.SparseSeries([1, 2, 3]))
		True
		
		This function checks only for pandas sparse array instances, so
		sparse arrays from other libraries will return False.
		
		>>> from scipy.sparse import bsr_matrix
		>>> is_sparse(bsr_matrix([1, 2, 3]))
		False
	**/
	static public function is_sparse(arr:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Combine list-like of Categorical-like, unioning categories. All
		categories must have the same dtype.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		to_union : list-like of Categorical, CategoricalIndex,
		           or Series with dtype='category'
		sort_categories : boolean, default False
		    If true, resulting categories will be lexsorted, otherwise
		    they will be ordered as they appear in the data.
		ignore_order: boolean, default False
		    If true, the ordered attribute of the Categoricals will be ignored.
		    Results in an unordered categorical.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		result : Categorical
		
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
		<http://pandas.pydata.org/pandas-docs/stable/categorical.html#unioning>`__
		
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
		[b, c, a, b]
		Categories (3, object): [b, c, a]
		
		By default, the resulting categories will be ordered as they appear
		in the `categories` of the data. If you want the categories to be
		lexsorted, use `sort_categories=True` argument.
		
		>>> union_categoricals([a, b], sort_categories=True)
		[b, c, a, b]
		Categories (3, object): [a, b, c]
		
		`union_categoricals` also works with the case of combining two
		categoricals of the same categories and order information (e.g. what
		you could also `append` for).
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "a"], ordered=True)
		>>> union_categoricals([a, b])
		[a, b, a, b, a]
		Categories (2, object): [a < b]
		
		Raises `TypeError` because the categories are ordered and not identical.
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> union_categoricals([a, b])
		TypeError: to union ordered Categoricals, all categories must be the same
		
		New in version 0.20.0
		
		Ordered categoricals with different categories or orderings can be
		combined by using the `ignore_ordered=True` argument.
		
		>>> a = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> b = pd.Categorical(["c", "b", "a"], ordered=True)
		>>> union_categoricals([a, b], ignore_order=True)
		[a, b, c, c, b, a]
		Categories (3, object): [a, b, c]
		
		`union_categoricals` also works with a `CategoricalIndex`, or `Series`
		containing categorical data, but note that the resulting array will
		always be a plain `Categorical`
		
		>>> a = pd.Series(["b", "c"], dtype='category')
		>>> b = pd.Series(["a", "b"], dtype='category')
		>>> union_categoricals([a, b])
		[b, c, a, b]
		Categories (3, object): [b, c, a]
	**/
	static public function union_categoricals(to_union:Dynamic, ?sort_categories:Dynamic, ?ignore_order:Dynamic):pandas.Categorical;
}