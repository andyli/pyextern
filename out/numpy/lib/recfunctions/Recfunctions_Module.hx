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
	/**
		Private function validating the given `fill_value` for the given dtype.
		
		If fill_value is None, it is set to the default corresponding to the dtype
		if this latter is standard (no fields). If the datatype is flexible (named
		fields), fill_value is set to a tuple whose elements are the default fill
		values corresponding to each field.
		
		If fill_value is not None, its value is forced to the given dtype.
	**/
	static public function _check_fill_value(fill_value:Dynamic, ndtype:Dynamic):Dynamic;
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
		* depending on what its corresponding type:
		        -1      for integers
		        -1.0    for floating point numbers
		        '-'     for characters
		        '-1'    for strings
		        True    for boolean values
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
		Combine the dtype description of a series of arrays.
		
		Parameters
		----------
		seqarrays : sequence of arrays
		    Sequence of arrays
		flatten : {boolean}, optional
		    Whether to collapse nested descriptions.
	**/
	static public function zip_descr(seqarrays:Dynamic, ?flatten:Dynamic):Dynamic;
}