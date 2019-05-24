/* This file is generated, do not edit! */
package numpy.ma.mrecords;
@:pythonImport("numpy.ma.mrecords") extern class Mrecords_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _byteorderconv : Dynamic;
	/**
		Private function validating the given `fill_value` for the given dtype.
		
		If fill_value is None, it is set to the default corresponding to the dtype.
		
		If fill_value is not None, its value is forced to the given dtype.
		
		The result is always a 0d array.
	**/
	static public function _check_fill_value(fill_value:Dynamic, ndtype:Dynamic):Dynamic;
	/**
		Checks that field names ``descr`` are not reserved keywords.
		
		If this is the case, a default 'f%i' is substituted.  If the argument
		`names` is not None, updates the field names to valid names.
	**/
	static public function _checknames(descr:Dynamic, ?names:Dynamic):Dynamic;
	static public function _get_fieldmask(self:Dynamic):Dynamic;
	/**
		Tries to guess the dtypes of the str_ ndarray `arr`.
		
		Guesses by testing element-wise conversion. Returns a list of dtypes.
		The array is first converted to ndarray. If the array is 2D, the test
		is performed on the first line. An exception is raised if the file is
		3D or more.
	**/
	static public function _guessvartypes(arr:Dynamic):Dynamic;
	/**
		Build a new MaskedArray from the information stored in a pickle.
	**/
	static public function _mrreconstruct(subtype:Dynamic, baseclass:Dynamic, baseshape:Dynamic, basetype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a new field to the masked record array
		
		Uses `newfield` as data and `newfieldname` as name. If `newfieldname`
		is None, the new field name is set to 'fi', where `i` is the number of
		existing fields.
	**/
	static public function addfield(mrecord:Dynamic, newfield:Dynamic, ?newfieldname:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return input as an array with masked data replaced by a fill value.
		
		If `a` is not a `MaskedArray`, `a` itself is returned.
		If `a` is a `MaskedArray` and `fill_value` is None, `fill_value` is set to
		``a.fill_value``.
		
		Parameters
		----------
		a : MaskedArray or array_like
		    An input object.
		fill_value : scalar, optional
		    Filling value. Default is None.
		
		Returns
		-------
		a : ndarray
		    The filled array.
		
		See Also
		--------
		compressed
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(9).reshape(3, 3), mask=[[1, 0, 0],
		...                                                   [1, 0, 0],
		...                                                   [0, 0, 0]])
		>>> x.filled()
		array([[999999,      1,      2],
		       [999999,      4,      5],
		       [     6,      7,      8]])
	**/
	static public function filled(a:Dynamic, ?fill_value:Dynamic):numpy.Ndarray;
	/**
		Creates a mrecarray from a (flat) list of masked arrays.
		
		Parameters
		----------
		arraylist : sequence
		    A list of (masked) arrays. Each element of the sequence is first converted
		    to a masked array if needed. If a 2D array is passed as argument, it is
		    processed line by line
		dtype : {None, dtype}, optional
		    Data type descriptor.
		shape : {None, integer}, optional
		    Number of records. If None, shape is defined from the shape of the
		    first array in the list.
		formats : {None, sequence}, optional
		    Sequence of formats for each individual field. If None, the formats will
		    be autodetected by inspecting the fields and selecting the highest dtype
		    possible.
		names : {None, sequence}, optional
		    Sequence of the names of each field.
		fill_value : {None, sequence}, optional
		    Sequence of data to be used as filling values.
		
		Notes
		-----
		Lists of tuples should be preferred over lists of lists for faster processing.
	**/
	static public function fromarrays(arraylist:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Creates a MaskedRecords from a list of records.
		
		Parameters
		----------
		reclist : sequence
		    A list of records. Each element of the sequence is first converted
		    to a masked array if needed. If a 2D array is passed as argument, it is
		    processed line by line
		dtype : {None, dtype}, optional
		    Data type descriptor.
		shape : {None,int}, optional
		    Number of records. If None, ``shape`` is defined from the shape of the
		    first array in the list.
		formats : {None, sequence}, optional
		    Sequence of formats for each individual field. If None, the formats will
		    be autodetected by inspecting the fields and selecting the highest dtype
		    possible.
		names : {None, sequence}, optional
		    Sequence of the names of each field.
		fill_value : {None, sequence}, optional
		    Sequence of data to be used as filling values.
		mask : {nomask, sequence}, optional.
		    External mask to apply on the data.
		
		Notes
		-----
		Lists of tuples should be preferred over lists of lists for faster processing.
	**/
	static public function fromrecords(reclist:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic, ?fill_value:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Creates a mrecarray from data stored in the file `filename`.
		
		Parameters
		----------
		fname : {file name/handle}
		    Handle of an opened file.
		delimitor : {None, string}, optional
		    Alphanumeric character used to separate columns in the file.
		    If None, any (group of) white spacestring(s) will be used.
		commentchar : {'#', string}, optional
		    Alphanumeric character used to mark the start of a comment.
		missingchar : {'', string}, optional
		    String indicating missing data, and used to create the masks.
		varnames : {None, sequence}, optional
		    Sequence of the variable names. If None, a list will be created from
		    the first non empty line of the file.
		vartypes : {None, sequence}, optional
		    Sequence of the variables dtypes. If None, it will be estimated from
		    the first non-commented line.
		
		
		Ultra simple: the varnames are in the header, one line
	**/
	static public function fromtextfile(fname:Dynamic, ?delimitor:Dynamic, ?commentchar:Dynamic, ?missingchar:Dynamic, ?varnames:Dynamic, ?vartypes:Dynamic):Dynamic;
	/**
		Return the data of a masked array as an ndarray.
		
		Return the data of `a` (if any) as an ndarray if `a` is a ``MaskedArray``,
		else return `a` as a ndarray or subclass (depending on `subok`) if not.
		
		Parameters
		----------
		a : array_like
		    Input ``MaskedArray``, alternatively a ndarray or a subclass thereof.
		subok : bool
		    Whether to force the output to be a `pure` ndarray (False) or to
		    return a subclass of ndarray if appropriate (True, default).
		
		See Also
		--------
		getmask : Return the mask of a masked array, or nomask.
		getmaskarray : Return the mask of a masked array, or full array of False.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.masked_equal([[1,2],[3,4]], 2)
		>>> a
		masked_array(data =
		 [[1 --]
		 [3 4]],
		      mask =
		 [[False  True]
		 [False False]],
		      fill_value=999999)
		>>> ma.getdata(a)
		array([[1, 2],
		       [3, 4]])
		
		Equivalently use the ``MaskedArray`` `data` attribute.
		
		>>> a.data
		array([[1, 2],
		       [3, 4]])
	**/
	static public function getdata(a:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Return the mask of a masked array, or full boolean array of False.
		
		Return the mask of `arr` as an ndarray if `arr` is a `MaskedArray` and
		the mask is not `nomask`, else return a full boolean array of False of
		the same shape as `arr`.
		
		Parameters
		----------
		arr : array_like
		    Input `MaskedArray` for which the mask is required.
		
		See Also
		--------
		getmask : Return the mask of a masked array, or nomask.
		getdata : Return the data of a masked array as an ndarray.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.masked_equal([[1,2],[3,4]], 2)
		>>> a
		masked_array(data =
		 [[1 --]
		 [3 4]],
		      mask =
		 [[False  True]
		 [False False]],
		      fill_value=999999)
		>>> ma.getmaskarray(a)
		array([[False,  True],
		       [False, False]])
		
		Result when mask == ``nomask``
		
		>>> b = ma.masked_array([[1,2],[3,4]])
		>>> b
		masked_array(data =
		 [[1 2]
		 [3 4]],
		      mask =
		 False,
		      fill_value=999999)
		>>> >ma.getmaskarray(b)
		array([[False, False],
		       [False, False]])
	**/
	static public function getmaskarray(arr:Dynamic):Dynamic;
	static public var masked : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function narray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nomask : Dynamic;
	/**
		Opens the file handle of file `fname`.
	**/
	static public function openfile(fname:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		create a record array from a (flat) list of arrays
		
		>>> x1=np.array([1,2,3,4])
		>>> x2=np.array(['a','dd','xyz','12'])
		>>> x3=np.array([1.1,2,3,4])
		>>> r = np.core.records.fromarrays([x1,x2,x3],names='a,b,c')
		>>> print(r[1])
		(2, 'dd', 2.0)
		>>> x1[1]=34
		>>> r.a
		array([1, 2, 3, 4])
	**/
	static public function recfromarrays(arrayList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		create a recarray from a list of records in text form
		
		    The data in the same field can be heterogeneous, they will be promoted
		    to the highest data type.  This method is intended for creating
		    smaller record arrays.  If used to create large array without formats
		    defined
		
		    r=fromrecords([(2,3.,'abc')]*100000)
		
		    it can be slow.
		
		    If formats is None, then this will auto-detect formats. Use list of
		    tuples rather than list of lists for faster processing.
		
		>>> r=np.core.records.fromrecords([(456,'dbe',1.2),(2,'de',1.3)],
		... names='col1,col2,col3')
		>>> print(r[0])
		(456, 'dbe', 1.2)
		>>> r.col1
		array([456,   2])
		>>> r.col2
		array(['dbe', 'de'],
		      dtype='|S3')
		>>> import pickle
		>>> print(pickle.loads(pickle.dumps(r)))
		[(456, 'dbe', 1.2) (2, 'de', 1.3)]
	**/
	static public function recfromrecords(recList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	static public var reserved_fields : Dynamic;
}