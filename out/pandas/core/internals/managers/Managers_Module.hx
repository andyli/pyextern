/* This file is generated, do not edit! */
package pandas.core.internals.managers;
@:pythonImport("pandas.core.internals.managers") extern class Managers_Module {
	static public var _NS_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compare two array_like inputs of the same shape or two scalar values
		
		Calls operator.eq or re.search, depending on regex argument. If regex is
		True, perform an element-wise regex matching.
		
		Parameters
		----------
		a : array_like or scalar
		b : array_like or scalar
		regex : bool, default False
		
		Returns
		-------
		mask : array_like of bool
	**/
	static public function _compare_or_regex_search(a:Dynamic, b:Dynamic, ?regex:Dynamic):Dynamic;
	static public function _concat_indexes(indexes:Dynamic):Dynamic;
	/**
		Merge blocks having same dtype, exclude non-consolidating blocks
	**/
	static public function _consolidate(blocks:Dynamic):Dynamic;
	/**
		return a new extended blocks, givin the result 
	**/
	static public function _extend_blocks(result:Dynamic, ?blocks:Dynamic):Dynamic;
	/**
		Faster version of set(arr) for sequences of small numbers.
	**/
	static public function _fast_count_smallints(arr:Dynamic):Dynamic;
	/**
		Find the common dtype for `blocks`.
		
		Parameters
		----------
		blocks : List[Block]
		
		Returns
		-------
		dtype : Optional[Union[np.dtype, ExtensionDtype]]
		    None is returned when `blocks` is empty.
	**/
	static public function _interleaved_dtype(blocks:Dynamic):Dynamic;
	/**
		array must be SparseSeries or SparseArray
	**/
	static public function _maybe_to_sparse(array:Dynamic):Dynamic;
	static public function _merge_blocks(blocks:Dynamic, ?dtype:Dynamic, ?_can_consolidate:Dynamic):Dynamic;
	/**
		return an array of blocks that potentially have different dtypes 
	**/
	static public function _multi_blockify(tuples:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _preprocess_slice_or_indexer(slice_or_indexer:Dynamic, length:Dynamic, allow_fill:Dynamic):Dynamic;
	/**
		If possible, reshape `arr` to have shape `new_shape`,
		with a couple of exceptions (see gh-13012):
		
		1) If `arr` is a ExtensionArray or Index, `arr` will be
		   returned as is.
		2) If `arr` is a Series, the `_values` attribute will
		   be reshaped and returned.
		
		Parameters
		----------
		arr : array-like, object to be reshaped
		new_shape : int or tuple of ints, the new shape
	**/
	static public function _safe_reshape(arr:Dynamic, new_shape:Dynamic):Dynamic;
	/**
		return a single array of a block that has a single dtype; if dtype is
		not None, coerce to this dtype
	**/
	static public function _simple_blockify(tuples:Dynamic, dtype:Dynamic):Dynamic;
	/**
		return an array of blocks that potentially have different dtypes (and
		are sparse)
	**/
	static public function _sparse_blockify(tuples:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _stack_arrays(tuples:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Apply function to all values found in index.
		
		This includes transforming multiindex entries separately.
		Only apply function to one level of the MultiIndex if level is specified.
	**/
	static public function _transform_index(index:Dynamic, func:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Combine multiple concatenation plans into one.
		
		existing_plan is updated in-place.
	**/
	static public function combine_concat_plans(plans:Dynamic, concat_axis:Dynamic):Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
	**/
	static public function concatenate_block_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		Concatenate values from several join units along selected axis.
	**/
	static public function concatenate_join_units(join_units:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	/**
		raise a helpful message about our construction 
	**/
	static public function construction_error(tot_items:Dynamic, block_shape:Dynamic, axes:Dynamic, ?e:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index : sequence
		    An Index or other sequence
		copy : bool
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex(levels=[['a'], ['b', 'c']],
		           codes=[[0, 0], [0, 1]])
		
		See Also
		--------
		ensure_index_from_sequences
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function form_blocks(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	/**
		Find the appropriate Block subclass to use for the given values and dtype.
		
		Parameters
		----------
		values : ndarray-like
		dtype : numpy or pandas dtype
		
		Returns
		-------
		cls : class, subclass of Block
	**/
	static public function get_block_type(values:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Construct concatenation plan for given block manager and indexers.
		
		Parameters
		----------
		mgr : BlockManager
		indexers : dict of {axis: indexer}
		
		Returns
		-------
		plan : list of (BlockPlacement, JoinUnit) tuples
	**/
	static public function get_mgr_concatenation_plan(mgr:Dynamic, indexers:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check if we are comparing a datetime-like object to a numeric object.
		
		By "numeric," we mean an object that is either of an int or float dtype.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a datetime-like
		          to a numeric object.
		
		Examples
		--------
		>>> dt = np.datetime64(pd.datetime(2017, 1, 1))
		>>>
		>>> is_datetimelike_v_numeric(1, 1)
		False
		>>> is_datetimelike_v_numeric(dt, dt)
		False
		>>> is_datetimelike_v_numeric(1, dt)
		True
		>>> is_datetimelike_v_numeric(dt, 1)  # symmetric check
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), 1)
		True
		>>> is_datetimelike_v_numeric(np.array([1]), dt)
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([1]))
		True
		>>> is_datetimelike_v_numeric(np.array([1]), np.array([2]))
		False
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([dt]))
		False
	**/
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
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
		Check whether an array-like is of a pandas extension class instance.
		
		Extension classes include categoricals, pandas sparse objects (i.e.
		classes represented within the pandas library and not ones external
		to it like scipy sparse matrices), and datetime-like arrays.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is of a pandas
		          extension class instance.
		
		Examples
		--------
		>>> is_extension_type([1, 2, 3])
		False
		>>> is_extension_type(np.array([1, 2, 3]))
		False
		>>>
		>>> cat = pd.Categorical([1, 2, 3])
		>>>
		>>> is_extension_type(cat)
		True
		>>> is_extension_type(pd.Series(cat))
		True
		>>> is_extension_type(pd.SparseArray([1, 2, 3]))
		True
		>>> is_extension_type(pd.SparseSeries([1, 2, 3]))
		True
		>>>
		>>> from scipy.sparse import bsr_matrix
		>>> is_extension_type(bsr_matrix([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_extension_type(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		>>>
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_extension_type(s)
		True
	**/
	static public function is_extension_type(arr:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	/**
		Check if we are comparing a string-like object to a numeric ndarray.
		
		NumPy doesn't like to compare such objects, especially numeric arrays
		and scalar string-likes.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a string-like
		          object to a numeric array.
		
		Examples
		--------
		>>> is_numeric_v_string_like(1, 1)
		False
		>>> is_numeric_v_string_like("foo", "foo")
		False
		>>> is_numeric_v_string_like(1, "foo")  # non-array numeric
		False
		>>> is_numeric_v_string_like(np.array([1]), "foo")
		True
		>>> is_numeric_v_string_like("foo", np.array([1]))  # symmetric check
		True
		>>> is_numeric_v_string_like(np.array([1, 2]), np.array(["foo"]))
		True
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array([1, 2]))
		True
		>>> is_numeric_v_string_like(np.array([1]), np.array([2]))
		False
		>>> is_numeric_v_string_like(np.array(["foo"]), np.array(["foo"]))
		False
	**/
	static public function is_numeric_v_string_like(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Return True if given value is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the join units consist of blocks of uniform type that can
		be concatenated using Block.concat_same_type instead of the generic
		concatenate_join_units (which uses `_concat._concat_compat`).
	**/
	static public function is_uniform_join_units(join_units:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		If two indices overlap, add suffixes to overlapping entries.
		
		If corresponding suffix is empty, the entry is simply converted to string.
	**/
	static public function items_overlap_with_suffix(left:Dynamic, lsuffix:Dynamic, right:Dynamic, rsuffix:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Attempt to convert indices into valid, positive indices.
		
		If we have negative indices, translate to positive here.
		If we have indices that are out-of-bounds, raise an IndexError.
		
		Parameters
		----------
		indices : array-like
		    The array of indices that we are to convert.
		n : int
		    The number of elements in the array that we are indexing.
		
		Returns
		-------
		valid_indices : array-like
		    An array-like of positive indices that correspond to the ones
		    that were passed in initially to this function.
		
		Raises
		------
		IndexError : one of the converted indices either exceeded the number
		    of elements (specified by `n`) OR was still negative.
	**/
	static public function maybe_convert_indices(indices:Dynamic, n:Dynamic):Dynamic;
	/**
		if we have an object dtype, try to coerce dates and/or numbers 
	**/
	static public function maybe_convert_objects(values:Dynamic, ?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	static public function maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Ensures that argument passed in arg_name is of type bool. 
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic):Dynamic;
}