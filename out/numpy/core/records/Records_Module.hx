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
	static public var absolute_import : Dynamic;
	/**
		Construct a record array from a wide-variety of objects.
		    
	**/
	static public function array(obj:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?strides:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic, ?copy:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find duplication in a list, return a list of duplicated elements
	**/
	static public function find_duplicate(list:Dynamic):Dynamic;
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
	static public function fromarrays(arrayList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		Create an array from binary file data
		
		If file is a string then that file is opened, else it is assumed
		to be a file object.
		
		>>> from tempfile import TemporaryFile
		>>> a = np.empty(10,dtype='f8,i4,a5')
		>>> a[5] = (0.5,10,'abcde')
		>>>
		>>> fd=TemporaryFile()
		>>> a = a.newbyteorder('<')
		>>> a.tofile(fd)
		>>>
		>>> fd.seek(0)
		>>> r=np.core.records.fromfile(fd, formats='f8,i4,a5', shape=10,
		... byteorder='<')
		>>> print(r[5])
		(0.5, 10, 'abcde')
		>>> r.shape
		(10,)
	**/
	static public function fromfile(fd:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
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
	static public function fromrecords(recList:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		create a (read-only) record array from binary data contained in
		a string
	**/
	static public function fromstring(datastring:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?offset:Dynamic, ?formats:Dynamic, ?names:Dynamic, ?titles:Dynamic, ?aligned:Dynamic, ?byteorder:Dynamic):Dynamic;
	static public function get_remaining_size(fd:Dynamic):Dynamic;
	static public function isfileobj(f:Dynamic):Dynamic;
	static public var numfmt : Dynamic;
	static public var print_function : Dynamic;
}