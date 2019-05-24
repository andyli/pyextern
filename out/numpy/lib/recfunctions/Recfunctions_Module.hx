/* This file is generated, do not edit! */
package numpy.lib.recfunctions;
@:pythonImport("numpy.lib.recfunctions") extern class Recfunctions_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _append_fields_dispatcher(base:Dynamic, names:Dynamic, data:Dynamic, ?dtypes:Dynamic, ?fill_value:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	static public function _apply_along_fields_dispatcher(func:Dynamic, arr:Dynamic):Dynamic;
	static public function _assign_fields_by_name_dispatcher(dst:Dynamic, src:Dynamic, ?zero_unassigned:Dynamic):Dynamic;
	/**
		Private function validating the given `fill_value` for the given dtype.
		
		If fill_value is None, it is set to the default corresponding to the dtype.
		
		If fill_value is not None, its value is forced to the given dtype.
		
		The result is always a 0d array.
	**/
	static public function _check_fill_value(fill_value:Dynamic, ndtype:Dynamic):Dynamic;
	static public function _drop_fields_dispatcher(base:Dynamic, drop_names:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	static public function _find_duplicates_dispatcher(a:Dynamic, ?key:Dynamic, ?ignoremask:Dynamic, ?return_index:Dynamic):Dynamic;
	/**
		Update the fill_value and masked data of `output`
		from the default given in a dictionary defaults.
	**/
	static public function _fix_defaults(output:Dynamic, ?defaults:Dynamic):Dynamic;
	/**
		Private function: return a recarray, a ndarray, a MaskedArray
		or a MaskedRecords depending on the input parameters
	**/
	static public function _fix_output(output:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	/**
		Returns a flat list of (dtype, count, offset) tuples of all the
		scalar fields in the dtype "dt", including nested fields, in left
		to right order.
	**/
	static public function _get_fields_and_offsets(dt:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Check whether obj behaves like a string.
	**/
	static public function _is_string_like(obj:Dynamic):Dynamic;
	/**
		Returns an iterator of concatenated fields from a sequence of arrays.
	**/
	static public function _izip_fields(iterable:Dynamic):Dynamic;
	/**
		Returns an iterator of concatenated fields from a sequence of arrays,
		collapsing any nested structure.
	**/
	static public function _izip_fields_flat(iterable:Dynamic):Dynamic;
	static public function _izip_records_dispatcher(seqarrays:Dynamic, ?fill_value:Dynamic, ?flatten:Dynamic):Dynamic;
	static public function _join_by_dispatcher(key:Dynamic, r1:Dynamic, r2:Dynamic, ?jointype:Dynamic, ?r1postfix:Dynamic, ?r2postfix:Dynamic, ?defaults:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	/**
		Return a new array keeping only the fields in `keep_names`,
		and preserving the order of those fields.
		
		Parameters
		----------
		base : array
		    Input array
		keep_names : string or sequence
		    String or sequence of strings corresponding to the names of the
		    fields to keep. Order of the names will be preserved.
		usemask : {False, True}, optional
		    Whether to return a masked array or not.
		asrecarray : string or sequence, optional
		    Whether to return a recarray or a mrecarray (`asrecarray=True`) or
		    a plain ndarray or masked array with flexible dtype. The default
		    is False.
	**/
	static public function _keep_fields(base:Dynamic, keep_names:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	static public function _merge_arrays_dispatcher(seqarrays:Dynamic, ?fill_value:Dynamic, ?flatten:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	static public function _rec_append_fields_dispatcher(base:Dynamic, names:Dynamic, data:Dynamic, ?dtypes:Dynamic):Dynamic;
	static public function _rec_drop_fields_dispatcher(base:Dynamic, drop_names:Dynamic):Dynamic;
	static public function _rec_join_dispatcher(key:Dynamic, r1:Dynamic, r2:Dynamic, ?jointype:Dynamic, ?r1postfix:Dynamic, ?r2postfix:Dynamic, ?defaults:Dynamic):Dynamic;
	static public function _recursive_fill_fields_dispatcher(input:Dynamic, output:Dynamic):Dynamic;
	static public function _rename_fields_dispatcher(base:Dynamic, namemapper:Dynamic):Dynamic;
	static public function _repack_fields_dispatcher(a:Dynamic, ?align:Dynamic, ?recurse:Dynamic):Dynamic;
	static public function _require_fields_dispatcher(array:Dynamic, required_dtype:Dynamic):Dynamic;
	static public function _stack_arrays_dispatcher(arrays:Dynamic, ?defaults:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic, ?autoconvert:Dynamic):Dynamic;
	static public function _structured_to_unstructured_dispatcher(arr:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?casting:Dynamic):Dynamic;
	static public function _unstructured_to_structured_dispatcher(arr:Dynamic, ?dtype:Dynamic, ?names:Dynamic, ?align:Dynamic, ?copy:Dynamic, ?casting:Dynamic):Dynamic;
	static public function _zip_dtype_dispatcher(seqarrays:Dynamic, ?flatten:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add new fields to an existing array.
		
		The names of the fields are given with the `names` arguments,
		the corresponding values with the `data` arguments.
		If a single field is appended, `names`, `data` and `dtypes` do not have
		to be lists but just values.
		
		Parameters
		----------
		base : array
		    Input array to extend.
		names : string, sequence
		    String or sequence of strings corresponding to the names
		    of the new fields.
		data : array or sequence of arrays
		    Array or sequence of arrays storing the fields to add to the base.
		dtypes : sequence of datatypes, optional
		    Datatype or sequence of datatypes.
		    If None, the datatypes are estimated from the `data`.
		fill_value : {float}, optional
		    Filling value used to pad missing data on the shorter arrays.
		usemask : {False, True}, optional
		    Whether to return a masked array or not.
		asrecarray : {False, True}, optional
		    Whether to return a recarray (MaskedRecords) or not.
	**/
	static public function append_fields(base:Dynamic, names:Dynamic, data:Dynamic, ?dtypes:Dynamic, ?fill_value:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	/**
		Apply function 'func' as a reduction across fields of a structured array.
		
		This is similar to `apply_along_axis`, but treats the fields of a
		structured array as an extra axis. The fields are all first cast to a
		common type following the type-promotion rules from `numpy.result_type`
		applied to the field's dtypes.
		
		Parameters
		----------
		func : function
		   Function to apply on the "field" dimension. This function must
		   support an `axis` argument, like np.mean, np.sum, etc.
		arr : ndarray
		   Structured array for which to apply func.
		
		Returns
		-------
		out : ndarray
		   Result of the recution operation
		
		Examples
		--------
		
		>>> b = np.array([(1, 2, 5), (4, 5, 7), (7, 8 ,11), (10, 11, 12)],
		...              dtype=[('x', 'i4'), ('y', 'f4'), ('z', 'f8')])
		>>> apply_along_fields(np.mean, b)
		array([ 2.66666667,  5.33333333,  8.66666667, 11.        ])
		>>> apply_along_fields(np.mean, b[['x', 'z']])
		array([ 3. ,  5.5,  9. , 11. ])
	**/
	static public function apply_along_fields(func:Dynamic, arr:Dynamic):numpy.Ndarray;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Assigns values from one structured array to another by field name.
		
		Normally in numpy >= 1.14, assignment of one structured array to another
		copies fields "by position", meaning that the first field from the src is
		copied to the first field of the dst, and so on, regardless of field name.
		
		This function instead copies "by field name", such that fields in the dst
		are assigned from the identically named field in the src. This applies
		recursively for nested structures. This is how structure assignment worked
		in numpy >= 1.6 to <= 1.13.
		
		Parameters
		----------
		dst : ndarray
		src : ndarray
		    The source and destination arrays during assignment.
		zero_unassigned : bool, optional
		    If True, fields in the dst for which there was no matching
		    field in the src are filled with the value 0 (zero). This
		    was the behavior of numpy <= 1.13. If False, those fields
		    are not modified.
	**/
	static public function assign_fields_by_name(dst:Dynamic, src:Dynamic, ?zero_unassigned:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return a new array with fields in `drop_names` dropped.
		
		Nested fields are supported.
		
		Parameters
		----------
		base : array
		    Input array
		drop_names : string or sequence
		    String or sequence of strings corresponding to the names of the
		    fields to drop.
		usemask : {False, True}, optional
		    Whether to return a masked array or not.
		asrecarray : string or sequence, optional
		    Whether to return a recarray or a mrecarray (`asrecarray=True`) or
		    a plain ndarray or masked array with flexible dtype. The default
		    is False.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> a = np.array([(1, (2, 3.0)), (4, (5, 6.0))],
		...   dtype=[('a', int), ('b', [('ba', float), ('bb', int)])])
		>>> rfn.drop_fields(a, 'a')
		array([((2.0, 3),), ((5.0, 6),)],
		      dtype=[('b', [('ba', '<f8'), ('bb', '<i4')])])
		>>> rfn.drop_fields(a, 'ba')
		array([(1, (3,)), (4, (6,))],
		      dtype=[('a', '<i4'), ('b', [('bb', '<i4')])])
		>>> rfn.drop_fields(a, ['ba', 'bb'])
		array([(1,), (4,)],
		      dtype=[('a', '<i4')])
	**/
	static public function drop_fields(base:Dynamic, drop_names:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	/**
		Find the duplicates in a structured array along a given key
		
		Parameters
		----------
		a : array-like
		    Input array
		key : {string, None}, optional
		    Name of the fields along which to check the duplicates.
		    If None, the search is performed by records
		ignoremask : {True, False}, optional
		    Whether masked data should be discarded or considered as duplicates.
		return_index : {False, True}, optional
		    Whether to return the indices of the duplicated values.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> ndtype = [('a', int)]
		>>> a = np.ma.array([1, 1, 1, 2, 2, 3, 3],
		...         mask=[0, 0, 1, 0, 0, 0, 1]).view(ndtype)
		>>> rfn.find_duplicates(a, ignoremask=True, return_index=True)
		... # XXX: judging by the output, the ignoremask flag has no effect
	**/
	static public function find_duplicates(a:Dynamic, ?key:Dynamic, ?ignoremask:Dynamic, ?return_index:Dynamic):Dynamic;
	/**
		Flatten a structured data-type description.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> ndtype = np.dtype([('a', '<i4'), ('b', [('ba', '<f8'), ('bb', '<i4')])])
		>>> rfn.flatten_descr(ndtype)
		(('a', dtype('int32')), ('ba', dtype('float64')), ('bb', dtype('int32')))
	**/
	static public function flatten_descr(ndtype:Dynamic):Dynamic;
	/**
		Produce a list of name/dtype pairs corresponding to the dtype fields
		
		Similar to dtype.descr, but the second item of each tuple is a dtype, not a
		string. As a result, this handles subarray dtypes
		
		Can be passed to the dtype constructor to reconstruct the dtype, noting that
		this (deliberately) discards field offsets.
		
		Examples
		--------
		>>> dt = np.dtype([(('a', 'A'), int), ('b', float, 3)])
		>>> dt.descr
		[(('a', 'A'), '<i4'), ('b', '<f8', (3,))]
		>>> get_fieldspec(dt)
		[(('a', 'A'), dtype('int32')), ('b', dtype(('<f8', (3,))))]
	**/
	static public function get_fieldspec(dtype:Dynamic):Dynamic;
	/**
		Returns a dictionary with fields indexing lists of their parent fields.
		
		This function is used to simplify access to fields nested in other fields.
		
		Parameters
		----------
		adtype : np.dtype
		    Input datatype
		lastname : optional
		    Last processed field name (used internally during recursion).
		parents : dictionary
		    Dictionary of parent fields (used interbally during recursion).
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> ndtype =  np.dtype([('A', int),
		...                     ('B', [('BA', int),
		...                            ('BB', [('BBA', int), ('BBB', int)])])])
		>>> rfn.get_fieldstructure(ndtype)
		... # XXX: possible regression, order of BBA and BBB is swapped
		{'A': [], 'B': [], 'BA': ['B'], 'BB': ['B'], 'BBA': ['B', 'BB'], 'BBB': ['B', 'BB']}
	**/
	static public function get_fieldstructure(adtype:Dynamic, ?lastname:Dynamic, ?parents:Dynamic):Dynamic;
	/**
		Returns the field names of the input datatype as a tuple.
		
		Parameters
		----------
		adtype : dtype
		    Input datatype
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> rfn.get_names(np.empty((1,), dtype=int)) is None
		True
		>>> rfn.get_names(np.empty((1,), dtype=[('A',int), ('B', float)]))
		('A', 'B')
		>>> adtype = np.dtype([('a', int), ('b', [('ba', int), ('bb', int)])])
		>>> rfn.get_names(adtype)
		('a', ('b', ('ba', 'bb')))
	**/
	static public function get_names(adtype:Dynamic):Dynamic;
	/**
		Returns the field names of the input datatype as a tuple. Nested structure
		are flattend beforehand.
		
		Parameters
		----------
		adtype : dtype
		    Input datatype
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> rfn.get_names_flat(np.empty((1,), dtype=int)) is None
		True
		>>> rfn.get_names_flat(np.empty((1,), dtype=[('A',int), ('B', float)]))
		('A', 'B')
		>>> adtype = np.dtype([('a', int), ('b', [('ba', int), ('bb', int)])])
		>>> rfn.get_names_flat(adtype)
		('a', 'b', 'ba', 'bb')
	**/
	static public function get_names_flat(adtype:Dynamic):Dynamic;
	/**
		Returns an iterator of concatenated items from a sequence of arrays.
		
		Parameters
		----------
		seqarrays : sequence of arrays
		    Sequence of arrays.
		fill_value : {None, integer}
		    Value used to pad shorter iterables.
		flatten : {True, False},
		    Whether to
	**/
	static public function izip_records(seqarrays:Dynamic, ?fill_value:Dynamic, ?flatten:Dynamic):Dynamic;
	/**
		Join arrays `r1` and `r2` on key `key`.
		
		The key should be either a string or a sequence of string corresponding
		to the fields used to join the array.  An exception is raised if the
		`key` field cannot be found in the two input arrays.  Neither `r1` nor
		`r2` should have any duplicates along `key`: the presence of duplicates
		will make the output quite unreliable. Note that duplicates are not
		looked for by the algorithm.
		
		Parameters
		----------
		key : {string, sequence}
		    A string or a sequence of strings corresponding to the fields used
		    for comparison.
		r1, r2 : arrays
		    Structured arrays.
		jointype : {'inner', 'outer', 'leftouter'}, optional
		    If 'inner', returns the elements common to both r1 and r2.
		    If 'outer', returns the common elements as well as the elements of
		    r1 not in r2 and the elements of not in r2.
		    If 'leftouter', returns the common elements and the elements of r1
		    not in r2.
		r1postfix : string, optional
		    String appended to the names of the fields of r1 that are present
		    in r2 but absent of the key.
		r2postfix : string, optional
		    String appended to the names of the fields of r2 that are present
		    in r1 but absent of the key.
		defaults : {dictionary}, optional
		    Dictionary mapping field names to the corresponding default values.
		usemask : {True, False}, optional
		    Whether to return a MaskedArray (or MaskedRecords is
		    `asrecarray==True`) or a ndarray.
		asrecarray : {False, True}, optional
		    Whether to return a recarray (or MaskedRecords if `usemask==True`)
		    or just a flexible-type ndarray.
		
		Notes
		-----
		* The output is sorted along the key.
		* A temporary array is formed by dropping the fields not in the key for
		  the two arrays and concatenating the result. This array is then
		  sorted, and the common entries selected. The output is constructed by
		  filling the fields with the selected entries. Matching is not
		  preserved if there are some duplicates...
	**/
	static public function join_by(key:Dynamic, r1:Dynamic, r2:Dynamic, ?jointype:Dynamic, ?r1postfix:Dynamic, ?r2postfix:Dynamic, ?defaults:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	/**
		Merge arrays field by field.
		
		Parameters
		----------
		seqarrays : sequence of ndarrays
		    Sequence of arrays
		fill_value : {float}, optional
		    Filling value used to pad missing data on the shorter arrays.
		flatten : {False, True}, optional
		    Whether to collapse nested fields.
		usemask : {False, True}, optional
		    Whether to return a masked array or not.
		asrecarray : {False, True}, optional
		    Whether to return a recarray (MaskedRecords) or not.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> rfn.merge_arrays((np.array([1, 2]), np.array([10., 20., 30.])))
		masked_array(data = [(1, 10.0) (2, 20.0) (--, 30.0)],
		             mask = [(False, False) (False, False) (True, False)],
		       fill_value = (999999, 1e+20),
		            dtype = [('f0', '<i4'), ('f1', '<f8')])
		
		>>> rfn.merge_arrays((np.array([1, 2]), np.array([10., 20., 30.])),
		...              usemask=False)
		array([(1, 10.0), (2, 20.0), (-1, 30.0)],
		      dtype=[('f0', '<i4'), ('f1', '<f8')])
		>>> rfn.merge_arrays((np.array([1, 2]).view([('a', int)]),
		...               np.array([10., 20., 30.])),
		...              usemask=False, asrecarray=True)
		rec.array([(1, 10.0), (2, 20.0), (-1, 30.0)],
		          dtype=[('a', '<i4'), ('f1', '<f8')])
		
		Notes
		-----
		* Without a mask, the missing value will be filled with something,
		  depending on what its corresponding type:
		
		  * ``-1``      for integers
		  * ``-1.0``    for floating point numbers
		  * ``'-'``     for characters
		  * ``'-1'``    for strings
		  * ``True``    for boolean values
		* XXX: I just obtained these values empirically
	**/
	static public function merge_arrays(seqarrays:Dynamic, ?fill_value:Dynamic, ?flatten:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Add new fields to an existing array.
		
		The names of the fields are given with the `names` arguments,
		the corresponding values with the `data` arguments.
		If a single field is appended, `names`, `data` and `dtypes` do not have
		to be lists but just values.
		
		Parameters
		----------
		base : array
		    Input array to extend.
		names : string, sequence
		    String or sequence of strings corresponding to the names
		    of the new fields.
		data : array or sequence of arrays
		    Array or sequence of arrays storing the fields to add to the base.
		dtypes : sequence of datatypes, optional
		    Datatype or sequence of datatypes.
		    If None, the datatypes are estimated from the `data`.
		
		See Also
		--------
		append_fields
		
		Returns
		-------
		appended_array : np.recarray
	**/
	static public function rec_append_fields(base:Dynamic, names:Dynamic, data:Dynamic, ?dtypes:Dynamic):Dynamic;
	/**
		Returns a new numpy.recarray with fields in `drop_names` dropped.
	**/
	static public function rec_drop_fields(base:Dynamic, drop_names:Dynamic):Dynamic;
	/**
		Join arrays `r1` and `r2` on keys.
		Alternative to join_by, that always returns a np.recarray.
		
		See Also
		--------
		join_by : equivalent function
	**/
	static public function rec_join(key:Dynamic, r1:Dynamic, r2:Dynamic, ?jointype:Dynamic, ?r1postfix:Dynamic, ?r2postfix:Dynamic, ?defaults:Dynamic):Dynamic;
	/**
		Fills fields from output with fields from input,
		with support for nested structures.
		
		Parameters
		----------
		input : ndarray
		    Input array.
		output : ndarray
		    Output array.
		
		Notes
		-----
		* `output` should be at least the same size as `input`
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> a = np.array([(1, 10.), (2, 20.)], dtype=[('A', int), ('B', float)])
		>>> b = np.zeros((3,), dtype=a.dtype)
		>>> rfn.recursive_fill_fields(a, b)
		array([(1, 10.0), (2, 20.0), (0, 0.0)],
		      dtype=[('A', '<i4'), ('B', '<f8')])
	**/
	static public function recursive_fill_fields(input:Dynamic, output:Dynamic):Dynamic;
	/**
		Rename the fields from a flexible-datatype ndarray or recarray.
		
		Nested fields are supported.
		
		Parameters
		----------
		base : ndarray
		    Input array whose fields must be modified.
		namemapper : dictionary
		    Dictionary mapping old field names to their new version.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> a = np.array([(1, (2, [3.0, 30.])), (4, (5, [6.0, 60.]))],
		...   dtype=[('a', int),('b', [('ba', float), ('bb', (float, 2))])])
		>>> rfn.rename_fields(a, {'a':'A', 'bb':'BB'})
		array([(1, (2.0, [3.0, 30.0])), (4, (5.0, [6.0, 60.0]))],
		      dtype=[('A', '<i4'), ('b', [('ba', '<f8'), ('BB', '<f8', 2)])])
	**/
	static public function rename_fields(base:Dynamic, namemapper:Dynamic):Dynamic;
	/**
		Re-pack the fields of a structured array or dtype in memory.
		
		The memory layout of structured datatypes allows fields at arbitrary
		byte offsets. This means the fields can be separated by padding bytes,
		their offsets can be non-monotonically increasing, and they can overlap.
		
		This method removes any overlaps and reorders the fields in memory so they
		have increasing byte offsets, and adds or removes padding bytes depending
		on the `align` option, which behaves like the `align` option to `np.dtype`.
		
		If `align=False`, this method produces a "packed" memory layout in which
		each field starts at the byte the previous field ended, and any padding
		bytes are removed.
		
		If `align=True`, this methods produces an "aligned" memory layout in which
		each field's offset is a multiple of its alignment, and the total itemsize
		is a multiple of the largest alignment, by adding padding bytes as needed.
		
		Parameters
		----------
		a : ndarray or dtype
		   array or dtype for which to repack the fields.
		align : boolean
		   If true, use an "aligned" memory layout, otherwise use a "packed" layout.
		recurse : boolean
		   If True, also repack nested structures.
		
		Returns
		-------
		repacked : ndarray or dtype
		   Copy of `a` with fields repacked, or `a` itself if no repacking was
		   needed.
		
		Examples
		--------
		
		>>> def print_offsets(d):
		...     print("offsets:", [d.fields[name][1] for name in d.names])
		...     print("itemsize:", d.itemsize)
		...
		>>> dt = np.dtype('u1,i4,f4', align=True)
		>>> dt
		dtype({'names':['f0','f1','f2'], 'formats':['u1','<i4','<f8'], 'offsets':[0,4,8], 'itemsize':16}, align=True)
		>>> print_offsets(dt)
		offsets: [0, 4, 8]
		itemsize: 16
		>>> packed_dt = repack_fields(dt)
		>>> packed_dt
		dtype([('f0', 'u1'), ('f1', '<i4'), ('f2', '<f8')])
		>>> print_offsets(packed_dt)
		offsets: [0, 1, 5]
		itemsize: 13
	**/
	static public function repack_fields(a:Dynamic, ?align:Dynamic, ?recurse:Dynamic):Dynamic;
	/**
		Casts a structured array to a new dtype using assignment by field-name.
		
		This function assigns from the old to the new array by name, so the
		value of a field in the output array is the value of the field with the
		same name in the source array. This has the effect of creating a new
		ndarray containing only the fields "required" by the required_dtype.
		
		If a field name in the required_dtype does not exist in the
		input array, that field is created and set to 0 in the output array.
		
		Parameters
		----------
		a : ndarray
		   array to cast
		required_dtype : dtype
		   datatype for output array
		
		Returns
		-------
		out : ndarray
		    array with the new dtype, with field values copied from the fields in
		    the input array with the same name
		
		Examples
		--------
		
		>>> a = np.ones(4, dtype=[('a', 'i4'), ('b', 'f8'), ('c', 'u1')])
		>>> require_fields(a, [('b', 'f4'), ('c', 'u1')])
		array([(1., 1), (1., 1), (1., 1), (1., 1)],
		  dtype=[('b', '<f4'), ('c', 'u1')])
		>>> require_fields(a, [('b', 'f4'), ('newf', 'u1')])
		array([(1., 0), (1., 0), (1., 0), (1., 0)],
		  dtype=[('b', '<f4'), ('newf', 'u1')])
	**/
	static public function require_fields(array:Dynamic, required_dtype:Dynamic):numpy.Ndarray;
	/**
		Superposes arrays fields by fields
		
		Parameters
		----------
		arrays : array or sequence
		    Sequence of input arrays.
		defaults : dictionary, optional
		    Dictionary mapping field names to the corresponding default values.
		usemask : {True, False}, optional
		    Whether to return a MaskedArray (or MaskedRecords is
		    `asrecarray==True`) or a ndarray.
		asrecarray : {False, True}, optional
		    Whether to return a recarray (or MaskedRecords if `usemask==True`)
		    or just a flexible-type ndarray.
		autoconvert : {False, True}, optional
		    Whether automatically cast the type of the field to the maximum.
		
		Examples
		--------
		>>> from numpy.lib import recfunctions as rfn
		>>> x = np.array([1, 2,])
		>>> rfn.stack_arrays(x) is x
		True
		>>> z = np.array([('A', 1), ('B', 2)], dtype=[('A', '|S3'), ('B', float)])
		>>> zz = np.array([('a', 10., 100.), ('b', 20., 200.), ('c', 30., 300.)],
		...   dtype=[('A', '|S3'), ('B', float), ('C', float)])
		>>> test = rfn.stack_arrays((z,zz))
		>>> test
		masked_array(data = [('A', 1.0, --) ('B', 2.0, --) ('a', 10.0, 100.0) ('b', 20.0, 200.0)
		 ('c', 30.0, 300.0)],
		             mask = [(False, False, True) (False, False, True) (False, False, False)
		 (False, False, False) (False, False, False)],
		       fill_value = ('N/A', 1e+20, 1e+20),
		            dtype = [('A', '|S3'), ('B', '<f8'), ('C', '<f8')])
	**/
	static public function stack_arrays(arrays:Dynamic, ?defaults:Dynamic, ?usemask:Dynamic, ?asrecarray:Dynamic, ?autoconvert:Dynamic):Dynamic;
	/**
		Converts and n-D structured array into an (n+1)-D unstructured array.
		
		The new array will have a new last dimension equal in size to the
		number of field-elements of the input array. If not supplied, the output
		datatype is determined from the numpy type promotion rules applied to all
		the field datatypes.
		
		Nested fields, as well as each element of any subarray fields, all count
		as a single field-elements.
		
		Parameters
		----------
		arr : ndarray
		   Structured array or dtype to convert. Cannot contain object datatype.
		dtype : dtype, optional
		   The dtype of the output unstructured array.
		copy : bool, optional
		    See copy argument to `ndarray.astype`. If true, always return a copy.
		    If false, and `dtype` requirements are satisfied, a view is returned.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    See casting argument of `ndarray.astype`. Controls what kind of data
		    casting may occur.
		
		Returns
		-------
		unstructured : ndarray
		   Unstructured array with one more dimension.
		
		Examples
		--------
		
		>>> a = np.zeros(4, dtype=[('a', 'i4'), ('b', 'f4,u2'), ('c', 'f4', 2)])
		>>> a
		array([(0, (0., 0), [0., 0.]), (0, (0., 0), [0., 0.]),
		       (0, (0., 0), [0., 0.]), (0, (0., 0), [0., 0.])],
		      dtype=[('a', '<i4'), ('b', [('f0', '<f4'), ('f1', '<u2')]), ('c', '<f4', (2,))])
		>>> structured_to_unstructured(arr)
		array([[0., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 0.]])
		
		>>> b = np.array([(1, 2, 5), (4, 5, 7), (7, 8 ,11), (10, 11, 12)],
		...              dtype=[('x', 'i4'), ('y', 'f4'), ('z', 'f8')])
		>>> np.mean(structured_to_unstructured(b[['x', 'z']]), axis=-1)
		array([ 3. ,  5.5,  9. , 11. ])
	**/
	static public function structured_to_unstructured(arr:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?casting:Dynamic):numpy.Ndarray;
	/**
		Converts and n-D unstructured array into an (n-1)-D structured array.
		
		The last dimension of the input array is converted into a structure, with
		number of field-elements equal to the size of the last dimension of the
		input array. By default all output fields have the input array's dtype, but
		an output structured dtype with an equal number of fields-elements can be
		supplied instead.
		
		Nested fields, as well as each element of any subarray fields, all count
		towards the number of field-elements.
		
		Parameters
		----------
		arr : ndarray
		   Unstructured array or dtype to convert.
		dtype : dtype, optional
		   The structured dtype of the output array
		names : list of strings, optional
		   If dtype is not supplied, this specifies the field names for the output
		   dtype, in order. The field dtypes will be the same as the input array.
		align : boolean, optional
		   Whether to create an aligned memory layout.
		copy : bool, optional
		    See copy argument to `ndarray.astype`. If true, always return a copy.
		    If false, and `dtype` requirements are satisfied, a view is returned.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    See casting argument of `ndarray.astype`. Controls what kind of data
		    casting may occur.
		
		Returns
		-------
		structured : ndarray
		   Structured array with fewer dimensions.
		
		Examples
		--------
		
		>>> dt = np.dtype([('a', 'i4'), ('b', 'f4,u2'), ('c', 'f4', 2)])
		>>> a = np.arange(20).reshape((4,5))
		>>> a
		array([[ 0,  1,  2,  3,  4],
		       [ 5,  6,  7,  8,  9],
		       [10, 11, 12, 13, 14],
		       [15, 16, 17, 18, 19]])
		>>> unstructured_to_structured(a, dt)
		array([( 0, ( 1.,  2), [ 3.,  4.]), ( 5, ( 6.,  7), [ 8.,  9.]),
		       (10, (11., 12), [13., 14.]), (15, (16., 17), [18., 19.])],
		      dtype=[('a', '<i4'), ('b', [('f0', '<f4'), ('f1', '<u2')]), ('c', '<f4', (2,))])
	**/
	static public function unstructured_to_structured(arr:Dynamic, ?dtype:Dynamic, ?names:Dynamic, ?align:Dynamic, ?copy:Dynamic, ?casting:Dynamic):numpy.Ndarray;
	/**
		Combine the dtype description of a series of arrays.
		
		Parameters
		----------
		seqarrays : sequence of arrays
		    Sequence of arrays
		flatten : {boolean}, optional
		    Whether to collapse nested descriptions.
	**/
	static public function zip_descr(seqarrays:Dynamic, ?flatten:Dynamic):Dynamic;
	static public function zip_dtype(seqarrays:Dynamic, ?flatten:Dynamic):Dynamic;
}