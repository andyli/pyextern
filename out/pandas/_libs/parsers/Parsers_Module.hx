/* This file is generated, do not edit! */
package pandas._libs.parsers;
@:pythonImport("pandas._libs.parsers") extern class Parsers_Module {
	static public var DEFAULT_CHUNKSIZE : Dynamic;
	static public var ENOENT : Dynamic;
	static public var QUOTE_MINIMAL : Dynamic;
	static public var QUOTE_NONE : Dynamic;
	static public var QUOTE_NONNUMERIC : Dynamic;
	static public var _NA_VALUES : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _compute_na_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _concatenate_chunks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_encoded(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _maybe_encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    
	**/
	static public function _maybe_upcast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
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
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.SparseArray([True, False]))
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
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		.. versionchanged:: 0.24.0
		
		   The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		   as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public var na_values : Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	/**
		Convert specified values, including the given set na_values and empty
		strings if convert_empty is True, to np.nan.
		
		Parameters
		----------
		values : ndarray[object]
		na_values : set
		convert_empty : bool (default True)
	**/
	static public function sanitize_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		ignore_order : boolean, default False
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