/* This file is generated, do not edit! */
package numpy.lib._iotools;
@:pythonImport("numpy.lib._iotools") extern class _Iotools_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bytes_to_complex(s:Dynamic):Dynamic;
	static public function _bytes_to_name(s:Dynamic):Dynamic;
	/**
		Check whether obj behaves like a bytes object.
	**/
	static public function _is_bytes_like(obj:Dynamic):Dynamic;
	/**
		Check whether obj behaves like a string.
	**/
	static public function _is_string_like(obj:Dynamic):Dynamic;
	/**
		Returns the filehandle corresponding to a string or a file.
		If the string ends in '.gz', the file is automatically unzipped.
		
		Parameters
		----------
		fname : string, filehandle
		    Name of the file whose filehandle must be returned.
		flag : string, optional
		    Flag indicating the status of the file ('r' for read, 'w' for write).
		return_opened : boolean, optional
		    Whether to return the opening status of the file.
	**/
	static public function _to_filehandle(fname:Dynamic, ?flag:Dynamic, ?return_opened:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	static public function asbytes_nested(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Convenience function to create a `np.dtype` object.
		
		The function processes the input `dtype` and matches it with the given
		names.
		
		Parameters
		----------
		ndtype : var
		    Definition of the dtype. Can be any string or dictionary recognized
		    by the `np.dtype` function, or a sequence of types.
		names : str or sequence, optional
		    Sequence of strings to use as field names for a structured dtype.
		    For convenience, `names` can be a string of a comma-separated list
		    of names.
		defaultfmt : str, optional
		    Format string used to define missing names, such as ``"f%i"``
		    (default) or ``"fields_%02i"``.
		validationargs : optional
		    A series of optional arguments used to initialize a
		    `NameValidator`.
		
		Examples
		--------
		>>> np.lib._iotools.easy_dtype(float)
		dtype('float64')
		>>> np.lib._iotools.easy_dtype("i4, f8")
		dtype([('f0', '<i4'), ('f1', '<f8')])
		>>> np.lib._iotools.easy_dtype("i4, f8", defaultfmt="field_%03i")
		dtype([('field_000', '<i4'), ('field_001', '<f8')])
		
		>>> np.lib._iotools.easy_dtype((int, float, float), names="a,b,c")
		dtype([('a', '<i8'), ('b', '<f8'), ('c', '<f8')])
		>>> np.lib._iotools.easy_dtype(float, names="a,b,c")
		dtype([('a', '<f8'), ('b', '<f8'), ('c', '<f8')])
	**/
	static public function easy_dtype(ndtype:Dynamic, ?names:Dynamic, ?defaultfmt:Dynamic, validationargs:Dynamic):Dynamic;
	/**
		Unpack a structured data-type by collapsing nested fields and/or fields
		with a shape.
		
		Note that the field names are lost.
		
		Parameters
		----------
		ndtype : dtype
		    The datatype to collapse
		flatten_base : {False, True}, optional
		    Whether to transform a field with a shape into several fields or not.
		
		Examples
		--------
		>>> dt = np.dtype([('name', 'S4'), ('x', float), ('y', float),
		...                ('block', int, (2, 3))])
		>>> np.lib._iotools.flatten_dtype(dt)
		[dtype('|S4'), dtype('float64'), dtype('float64'), dtype('int32')]
		>>> np.lib._iotools.flatten_dtype(dt, flatten_base=True)
		[dtype('|S4'), dtype('float64'), dtype('float64'), dtype('int32'),
		 dtype('int32'), dtype('int32'), dtype('int32'), dtype('int32'),
		 dtype('int32')]
	**/
	static public function flatten_dtype(ndtype:Dynamic, ?flatten_base:Dynamic):Dynamic;
	/**
		Returns whether one or several fields of a dtype are nested.
		
		Parameters
		----------
		ndtype : dtype
		    Data-type of a structured array.
		
		Raises
		------
		AttributeError
		    If `ndtype` does not have a `names` attribute.
		
		Examples
		--------
		>>> dt = np.dtype([('name', 'S4'), ('x', float), ('y', float)])
		>>> np.lib._iotools.has_nested_fields(dt)
		False
	**/
	static public function has_nested_fields(ndtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Tries to transform a string supposed to represent a boolean to a boolean.
		
		Parameters
		----------
		value : str
		    The string that is transformed to a boolean.
		
		Returns
		-------
		boolval : bool
		    The boolean representation of `value`.
		
		Raises
		------
		ValueError
		    If the string is not 'True' or 'False' (case independent)
		
		Examples
		--------
		>>> np.lib._iotools.str2bool('TRUE')
		True
		>>> np.lib._iotools.str2bool('false')
		False
	**/
	static public function str2bool(value:Dynamic):Dynamic;
}