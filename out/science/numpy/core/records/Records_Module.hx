/* This file is generated, do not edit! */
package numpy.core.records;
@:pythonImport("numpy.core.records") extern class Records_Module {
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
	static public function _deprecate_shape_0_as_None(shape:Dynamic):Dynamic;
	/**
		Return the legacy print mode as an int.
	**/
	static public function _get_legacy_print_mode():Dynamic;
	/**
		Construct a record array from a wide-variety of objects.
		
		A general-purpose record array constructor that dispatches to the
		appropriate `recarray` creation function based on the inputs (see Notes).
		
		Parameters
		----------
		obj : any
		    Input object. See Notes for details on how various input types are
		    treated.
		dtype : data-type, optional
		    Valid dtype for array.
		shape : int or tuple of ints, optional
		    Shape of each array.
		offset : int, optional
		    Position in the file or buffer to start reading from.
		strides : tuple of ints, optional
		    Buffer (`buf`) is interpreted according to these strides (strides
		    define how many bytes each array element, row, column, etc.
		    occupy in memory).
		formats, names, titles, aligned, byteorder :
		    If `dtype` is ``None``, these arguments are passed to
		    `numpy.format_parser` to construct a dtype. See that function for
		    detailed documentation.
		copy : bool, optional
		    Whether to copy the input object (True), or to use a reference instead.
		    This option only applies when the input is an ndarray or recarray.
		    Defaults to True.
		
		Returns
		-------
		np.recarray
		    Record array created from the specified object.
		
		Notes
		-----
		If `obj` is ``None``, then call the `~numpy.recarray` constructor. If
		`obj` is a string, then call the `fromstring` constructor. If `obj` is a
		list or a tuple, then if the first object is an `~numpy.ndarray`, call
		`fromarrays`, otherwise call `fromrecords`. If `obj` is a
		`~numpy.recarray`, then make a copy of the data in the recarray
		(if ``copy=True``) and use the new formats, names, and titles. If `obj`
		is a file, then call `fromfile`. Finally, if obj is an `ndarray`, then
		return ``obj.view(recarray)``, making a copy of the data if ``copy=True``.
		
		Examples
		--------
		>>> a = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		array([[1, 2, 3],
		       [4, 5, 6],
		       [7, 8, 9]])
		
		>>> np.core.records.array(a)
		rec.array([[1, 2, 3],
		           [4, 5, 6],
		           [7, 8, 9]],
		    dtype=int32)
		
		>>> b = [(1, 1), (2, 4), (3, 9)]
		>>> c = np.core.records.array(b, formats = ['i2', 'f2'], names = ('x', 'y'))
		>>> c
		rec.array([(1, 1.0), (2, 4.0), (3, 9.0)],
		          dtype=[('x', '<i2'), ('y', '<f2')])
		
		>>> c.x
		rec.array([1, 2, 3], dtype=int16)
		
		>>> c.y
		rec.array([ 1.0,  4.0,  9.0], dtype=float16)
		
		>>> r = np.rec.array(['abc','def'], names=['col1','col2'])
		>>> print(r.col1)
		abc
		
		>>> r.col1
		array('abc', dtype='<U3')
		
		>>> r.col2
		array('def', dtype='<U3')
	**/
	static public function array(obj:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?strides:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Find duplication in a list, return a list of duplicated elements
	**/
	static public function find_duplicate(list:Dynamic):Dynamic;
	/**
		Create a record array from a (flat) list of arrays
		
		Parameters
		----------
		arrayList : list or tuple
		    List of array-like objects (such as lists, tuples,
		    and ndarrays).
		dtype : data-type, optional
		    valid dtype for all arrays
		shape : int or tuple of ints, optional
		    Shape of the resulting array. If not provided, inferred from
		    ``arrayList[0]``.
		formats, names, titles, aligned, byteorder :
		    If `dtype` is ``None``, these arguments are passed to
		    `numpy.format_parser` to construct a dtype. See that function for
		    detailed documentation.
		
		Returns
		-------
		np.recarray
		    Record array consisting of given arrayList columns.
		
		Examples
		--------
		>>> x1=np.array([1,2,3,4])
		>>> x2=np.array(['a','dd','xyz','12'])
		>>> x3=np.array([1.1,2,3,4])
		>>> r = np.core.records.fromarrays([x1,x2,x3],names='a,b,c')
		>>> print(r[1])
		(2, 'dd', 2.0) # may vary
		>>> x1[1]=34
		>>> r.a
		array([1, 2, 3, 4])
		
		>>> x1 = np.array([1, 2, 3, 4])
		>>> x2 = np.array(['a', 'dd', 'xyz', '12'])
		>>> x3 = np.array([1.1, 2, 3,4])
		>>> r = np.core.records.fromarrays(
		...     [x1, x2, x3],
		...     dtype=np.dtype([('a', np.int32), ('b', 'S3'), ('c', np.float32)]))
		>>> r
		rec.array([(1, b'a', 1.1), (2, b'dd', 2. ), (3, b'xyz', 3. ),
		           (4, b'12', 4. )],
		          dtype=[('a', '<i4'), ('b', 'S3'), ('c', '<f4')])
	**/
	static public function fromarrays(arrayList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		Create an array from binary file data
		
		Parameters
		----------
		fd : str or file type
		    If file is a string or a path-like object then that file is opened,
		    else it is assumed to be a file object. The file object must
		    support random access (i.e. it must have tell and seek methods).
		dtype : data-type, optional
		    valid dtype for all arrays
		shape : int or tuple of ints, optional
		    shape of each array.
		offset : int, optional
		    Position in the file to start reading from.
		formats, names, titles, aligned, byteorder :
		    If `dtype` is ``None``, these arguments are passed to
		    `numpy.format_parser` to construct a dtype. See that function for
		    detailed documentation
		
		Returns
		-------
		np.recarray
		    record array consisting of data enclosed in file.
		
		Examples
		--------
		>>> from tempfile import TemporaryFile
		>>> a = np.empty(10,dtype='f8,i4,a5')
		>>> a[5] = (0.5,10,'abcde')
		>>>
		>>> fd=TemporaryFile()
		>>> a = a.newbyteorder('<')
		>>> a.tofile(fd)
		>>>
		>>> _ = fd.seek(0)
		>>> r=np.core.records.fromfile(fd, formats='f8,i4,a5', shape=10,
		... byteorder='<')
		>>> print(r[5])
		(0.5, 10, 'abcde')
		>>> r.shape
		(10,)
	**/
	static public function fromfile(fd:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		Create a recarray from a list of records in text form.
		
		Parameters
		----------
		recList : sequence
		    data in the same field may be heterogeneous - they will be promoted
		    to the highest data type.
		dtype : data-type, optional
		    valid dtype for all arrays
		shape : int or tuple of ints, optional
		    shape of each array.
		formats, names, titles, aligned, byteorder :
		    If `dtype` is ``None``, these arguments are passed to
		    `numpy.format_parser` to construct a dtype. See that function for
		    detailed documentation.
		
		    If both `formats` and `dtype` are None, then this will auto-detect
		    formats. Use list of tuples rather than list of lists for faster
		    processing.
		
		Returns
		-------
		np.recarray
		    record array consisting of given recList rows.
		
		Examples
		--------
		>>> r=np.core.records.fromrecords([(456,'dbe',1.2),(2,'de',1.3)],
		... names='col1,col2,col3')
		>>> print(r[0])
		(456, 'dbe', 1.2)
		>>> r.col1
		array([456,   2])
		>>> r.col2
		array(['dbe', 'de'], dtype='<U3')
		>>> import pickle
		>>> pickle.loads(pickle.dumps(r))
		rec.array([(456, 'dbe', 1.2), (  2, 'de', 1.3)],
		          dtype=[('col1', '<i8'), ('col2', '<U3'), ('col3', '<f8')])
	**/
	static public function fromrecords(recList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		Create a record array from binary data
		
		Note that despite the name of this function it does not accept `str`
		instances.
		
		Parameters
		----------
		datastring : bytes-like
		    Buffer of binary data
		dtype : data-type, optional
		    Valid dtype for all arrays
		shape : int or tuple of ints, optional
		    Shape of each array.
		offset : int, optional
		    Position in the buffer to start reading from.
		formats, names, titles, aligned, byteorder :
		    If `dtype` is ``None``, these arguments are passed to
		    `numpy.format_parser` to construct a dtype. See that function for
		    detailed documentation.
		
		
		Returns
		-------
		np.recarray
		    Record array view into the data in datastring. This will be readonly
		    if `datastring` is readonly.
		
		See Also
		--------
		numpy.frombuffer
		
		Examples
		--------
		>>> a = b'\x01\x02\x03abc'
		>>> np.core.records.fromstring(a, dtype='u1,u1,u1,S3')
		rec.array([(1, 2, 3, b'abc')],
		        dtype=[('f0', 'u1'), ('f1', 'u1'), ('f2', 'u1'), ('f3', 'S3')])
		
		>>> grades_dtype = [('Name', (np.str_, 10)), ('Marks', np.float64),
		...                 ('GradeLevel', np.int32)]
		>>> grades_array = np.array([('Sam', 33.3, 3), ('Mike', 44.4, 5),
		...                         ('Aadi', 66.6, 6)], dtype=grades_dtype)
		>>> np.core.records.fromstring(grades_array.tobytes(), dtype=grades_dtype)
		rec.array([('Sam', 33.3, 3), ('Mike', 44.4, 5), ('Aadi', 66.6, 6)],
		        dtype=[('Name', '<U10'), ('Marks', '<f8'), ('GradeLevel', '<i4')])
		
		>>> s = '\x01\x02\x03abc'
		>>> np.core.records.fromstring(s, dtype='u1,u1,u1,S3')
		Traceback (most recent call last)
		   ...
		TypeError: a bytes-like object is required, not 'str'
	**/
	static public function fromstring(datastring:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	static public function get_remaining_size(fd:Dynamic):Dynamic;
	static public var numfmt : Dynamic;
	/**
		Return the file system path representation of the object.
		
		If the object is str or bytes, then allow it to pass through as-is. If the
		object defines __fspath__(), then return the result of that method. All other
		types raise a TypeError.
	**/
	static public function os_fspath(path:Dynamic):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
}