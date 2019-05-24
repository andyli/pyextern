/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "dtype") extern class Dtype {
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The required alignment (bytes) of this data-type according to the compiler.
		
		More information is available in the C-API section of the manual.
	**/
	public var alignment : Dynamic;
	public var base : Dynamic;
	/**
		A character indicating the byte-order of this data-type object.
		
		One of:
		
		===  ==============
		'='  native
		'<'  little-endian
		'>'  big-endian
		'|'  not applicable
		===  ==============
		
		All built-in data-type objects have byteorder either '=' or '|'.
		
		Examples
		--------
		
		>>> dt = np.dtype('i2')
		>>> dt.byteorder
		'='
		>>> # endian is not relevant for 8 bit numbers
		>>> np.dtype('i1').byteorder
		'|'
		>>> # or ASCII strings
		>>> np.dtype('S2').byteorder
		'|'
		>>> # Even if specific code is given, and it is native
		>>> # '=' is the byteorder
		>>> import sys
		>>> sys_is_le = sys.byteorder == 'little'
		>>> native_code = sys_is_le and '<' or '>'
		>>> swapped_code = sys_is_le and '>' or '<'
		>>> dt = np.dtype(native_code + 'i2')
		>>> dt.byteorder
		'='
		>>> # Swapped code shows up as itself
		>>> dt = np.dtype(swapped_code + 'i2')
		>>> dt.byteorder == swapped_code
		True
	**/
	public var byteorder : Dynamic;
	/**
		A unique character code for each of the 21 different built-in types.
	**/
	public var char : Dynamic;
	/**
		`__array_interface__` description of the data-type.
		
		The format is that required by the 'descr' key in the
		`__array_interface__` attribute.
		
		Warning: This attribute exists specifically for `__array_interface__`,
		and is not a datatype description compatible with `np.dtype`.
	**/
	public var descr : Dynamic;
	/**
		Dictionary of named fields defined for this data type, or ``None``.
		
		The dictionary is indexed by keys that are the names of the fields.
		Each entry in the dictionary is a tuple fully describing the field::
		
		  (dtype, offset[, title])
		
		Offset is limited to C int, which is signed and usually 32 bits.
		If present, the optional title can be any object (if it is a string
		or unicode then it will also be a key in the fields dictionary,
		otherwise it's meta-data). Notice also that the first two elements
		of the tuple can be passed directly as arguments to the ``ndarray.getfield``
		and ``ndarray.setfield`` methods.
		
		See Also
		--------
		ndarray.getfield, ndarray.setfield
		
		Examples
		--------
		>>> dt = np.dtype([('name', np.str_, 16), ('grades', np.float64, (2,))])
		>>> print(dt.fields)
		{'grades': (dtype(('float64',(2,))), 16), 'name': (dtype('|S16'), 0)}
	**/
	public var fields : Dynamic;
	/**
		Bit-flags describing how this data type is to be interpreted.
		
		Bit-masks are in `numpy.core.multiarray` as the constants
		`ITEM_HASOBJECT`, `LIST_PICKLE`, `ITEM_IS_POINTER`, `NEEDS_INIT`,
		`NEEDS_PYAPI`, `USE_GETITEM`, `USE_SETITEM`. A full explanation
		of these flags is in C-API documentation; they are largely useful
		for user-defined data-types.
	**/
	public var flags : Dynamic;
	/**
		Boolean indicating whether this dtype contains any reference-counted
		objects in any fields or sub-dtypes.
		
		Recall that what is actually in the ndarray memory representing
		the Python object is the memory address of that object (a pointer).
		Special handling may be required, and this attribute is useful for
		distinguishing data types that may contain arbitrary Python objects
		and data-types that won't.
	**/
	public var hasobject : Dynamic;
	/**
		Boolean indicating whether the dtype is a struct which maintains
		field alignment. This flag is sticky, so when combining multiple
		structs together, it is preserved and produces new dtypes which
		are also aligned.
	**/
	public var isalignedstruct : Dynamic;
	/**
		Integer indicating how this dtype relates to the built-in dtypes.
		
		Read-only.
		
		=  ========================================================================
		0  if this is a structured array type, with fields
		1  if this is a dtype compiled into numpy (such as ints, floats etc)
		2  if the dtype is for a user-defined numpy type
		   A user-defined type uses the numpy C-API machinery to extend
		   numpy to handle a new array type. See
		   :ref:`user.user-defined-data-types` in the NumPy manual.
		=  ========================================================================
		
		Examples
		--------
		>>> dt = np.dtype('i2')
		>>> dt.isbuiltin
		1
		>>> dt = np.dtype('f8')
		>>> dt.isbuiltin
		1
		>>> dt = np.dtype([('field1', 'f8')])
		>>> dt.isbuiltin
		0
	**/
	public var isbuiltin : Dynamic;
	/**
		Boolean indicating whether the byte order of this dtype is native
		to the platform.
	**/
	public var isnative : Dynamic;
	/**
		The element size of this data-type object.
		
		For 18 of the 21 types this number is fixed by the data-type.
		For the flexible data-types, this number can be anything.
	**/
	public var itemsize : Dynamic;
	/**
		A character code (one of 'biufcmMOSUV') identifying the general kind of data.
		
		=  ======================
		b  boolean
		i  signed integer
		u  unsigned integer
		f  floating-point
		c  complex floating-point
		m  timedelta
		M  datetime
		O  object
		S  (byte-)string
		U  Unicode
		V  void
		=  ======================
	**/
	public var kind : Dynamic;
	public var metadata : Dynamic;
	/**
		A bit-width name for this data-type.
		
		Un-sized flexible data-type objects do not have this attribute.
	**/
	public var name : Dynamic;
	/**
		Ordered list of field names, or ``None`` if there are no fields.
		
		The names are ordered according to increasing byte offset. This can be
		used, for example, to walk through all of the named fields in offset order.
		
		Examples
		--------
		>>> dt = np.dtype([('name', np.str_, 16), ('grades', np.float64, (2,))])
		>>> dt.names
		('name', 'grades')
	**/
	public var names : Dynamic;
	/**
		Number of dimensions of the sub-array if this data type describes a
		sub-array, and ``0`` otherwise.
		
		.. versionadded:: 1.13.0
	**/
	public var ndim : Dynamic;
	/**
		newbyteorder(new_order='S')
		
		Return a new dtype with a different byte order.
		
		Changes are also made in all fields and sub-arrays of the data type.
		
		Parameters
		----------
		new_order : string, optional
		    Byte order to force; a value from the byte order specifications
		    below.  The default value ('S') results in swapping the current
		    byte order.  `new_order` codes can be any of:
		
		    * 'S' - swap dtype from current to opposite endian
		    * {'<', 'L'} - little endian
		    * {'>', 'B'} - big endian
		    * {'=', 'N'} - native order
		    * {'|', 'I'} - ignore (no change to byte order)
		
		    The code does a case-insensitive check on the first letter of
		    `new_order` for these alternatives.  For example, any of '>'
		    or 'B' or 'b' or 'brian' are valid to specify big-endian.
		
		Returns
		-------
		new_dtype : dtype
		    New dtype object with the given change to the byte order.
		
		Notes
		-----
		Changes are also made in all fields and sub-arrays of the data type.
		
		Examples
		--------
		>>> import sys
		>>> sys_is_le = sys.byteorder == 'little'
		>>> native_code = sys_is_le and '<' or '>'
		>>> swapped_code = sys_is_le and '>' or '<'
		>>> native_dt = np.dtype(native_code+'i2')
		>>> swapped_dt = np.dtype(swapped_code+'i2')
		>>> native_dt.newbyteorder('S') == swapped_dt
		True
		>>> native_dt.newbyteorder() == swapped_dt
		True
		>>> native_dt == swapped_dt.newbyteorder('S')
		True
		>>> native_dt == swapped_dt.newbyteorder('=')
		True
		>>> native_dt == swapped_dt.newbyteorder('N')
		True
		>>> native_dt == native_dt.newbyteorder('|')
		True
		>>> np.dtype('<i2') == native_dt.newbyteorder('<')
		True
		>>> np.dtype('<i2') == native_dt.newbyteorder('L')
		True
		>>> np.dtype('>i2') == native_dt.newbyteorder('>')
		True
		>>> np.dtype('>i2') == native_dt.newbyteorder('B')
		True
	**/
	public function newbyteorder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A unique number for each of the 21 different built-in types.
		
		These are roughly ordered from least-to-most precision.
	**/
	public var num : Dynamic;
	/**
		Shape tuple of the sub-array if this data type describes a sub-array,
		and ``()`` otherwise.
	**/
	public var shape : Dynamic;
	/**
		The array-protocol typestring of this data-type object.
	**/
	public var str : Dynamic;
	/**
		Tuple ``(item_dtype, shape)`` if this `dtype` describes a sub-array, and
		None otherwise.
		
		The *shape* is the fixed shape of the sub-array described by this
		data type, and *item_dtype* the data type of the array.
		
		If a field whose dtype object has this attribute is retrieved,
		then the extra dimensions implied by *shape* are tacked on to
		the end of the retrieved array.
	**/
	public var subdtype : Dynamic;
	/**
		The type object used to instantiate a scalar of this data-type.
	**/
	public var type : Dynamic;
}