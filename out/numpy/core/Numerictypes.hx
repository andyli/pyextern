/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core.numerictypes") extern class Numerictypes {
	static public var LOWER_TABLE : Dynamic;
	static public var ScalarType : Dynamic;
	static public var UPPER_TABLE : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __len_test_types : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test_types : Dynamic;
	static public function _add_aliases():Dynamic;
	static public function _add_array_type(typename:Dynamic, bits:Dynamic):Dynamic;
	static public function _add_integer_aliases():Dynamic;
	static public function _add_types():Dynamic;
	static public var _alignment : Dynamic;
	static public var _all_chars : Dynamic;
	static public var _ascii_lower : Dynamic;
	static public var _ascii_upper : Dynamic;
	static public function _can_coerce_all(dtypelist:Dynamic, ?start:Dynamic):Dynamic;
	static public function _construct_char_code_lookup():Dynamic;
	static public function _construct_lookups():Dynamic;
	static public function _evalname(name:Dynamic):Dynamic;
	static public function _find_common_coerce(a:Dynamic, b:Dynamic):Dynamic;
	static public var _kind_list : Dynamic;
	static public var _maxvals : Dynamic;
	static public var _minvals : Dynamic;
	/**
		returns the type corresponding to a certain Python type
	**/
	static public function _python_type(t:Dynamic):Dynamic;
	static public var _python_types : Dynamic;
	static public function _register_types():Dynamic;
	static public var _sctype2char_dict : Dynamic;
	static public function _set_array_types():Dynamic;
	static public function _set_up_aliases():Dynamic;
	static public var _typestr : Dynamic;
	static public var absolute_import : Dynamic;
	static public var allTypes : Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a bit-width name for a given type object
	**/
	static public function bitname(obj:Dynamic):Dynamic;
	/**
		busday_count(begindates, enddates, weekmask='1111100', holidays=[], busdaycal=None, out=None)
		
		Counts the number of valid days between `begindates` and
		`enddates`, not including the day of `enddates`.
		
		If ``enddates`` specifies a date value that is earlier than the
		corresponding ``begindates`` date value, the count will be negative.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		begindates : array_like of datetime64[D]
		    The array of the first dates for counting.
		enddates : array_like of datetime64[D]
		    The array of the end dates for counting, which are excluded
		    from the count themselves.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of int, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of int
		    An array with a shape from broadcasting ``begindates`` and ``enddates``
		    together, containing the number of valid days between
		    the begin and end dates.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_offset : Applies an offset counted in valid days.
		
		Examples
		--------
		>>> # Number of weekdays in January 2011
		... np.busday_count('2011-01', '2011-02')
		21
		>>> # Number of weekdays in 2011
		...  np.busday_count('2011', '2012')
		260
		>>> # Number of Saturdays in 2011
		... np.busday_count('2011', '2012', weekmask='Sat')
		53
	**/
	static public function busday_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		busday_offset(dates, offsets, roll='raise', weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		First adjusts the date to fall on a valid day according to
		the ``roll`` rule, then applies offsets to the given dates
		counted in valid days.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		offsets : array_like of int
		    The array of offsets, which is broadcast with ``dates``.
		roll : {'raise', 'nat', 'forward', 'following', 'backward', 'preceding', 'modifiedfollowing', 'modifiedpreceding'}, optional
		    How to treat dates that do not fall on a valid day. The default
		    is 'raise'.
		
		      * 'raise' means to raise an exception for an invalid day.
		      * 'nat' means to return a NaT (not-a-time) for an invalid day.
		      * 'forward' and 'following' mean to take the first valid day
		        later in time.
		      * 'backward' and 'preceding' mean to take the first valid day
		        earlier in time.
		      * 'modifiedfollowing' means to take the first valid day
		        later in time unless it is across a Month boundary, in which
		        case to take the first valid day earlier in time.
		      * 'modifiedpreceding' means to take the first valid day
		        earlier in time unless it is across a Month boundary, in which
		        case to take the first valid day later in time.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of datetime64[D], optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of datetime64[D]
		    An array with a shape from broadcasting ``dates`` and ``offsets``
		    together, containing the dates with offsets applied.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		is_busday : Returns a boolean array indicating valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # First business day in October 2011 (not accounting for holidays)
		... np.busday_offset('2011-10', 0, roll='forward')
		numpy.datetime64('2011-10-03','D')
		>>> # Last business day in February 2012 (not accounting for holidays)
		... np.busday_offset('2012-03', -1, roll='forward')
		numpy.datetime64('2012-02-29','D')
		>>> # Third Wednesday in January 2011
		... np.busday_offset('2011-01', 2, roll='forward', weekmask='Wed')
		numpy.datetime64('2011-01-19','D')
		>>> # 2012 Mother's Day in Canada and the U.S.
		... np.busday_offset('2012-05', 1, roll='forward', weekmask='Sun')
		numpy.datetime64('2012-05-13','D')
		
		>>> # First business day on or after a date
		... np.busday_offset('2011-03-20', 0, roll='forward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 0, roll='forward')
		numpy.datetime64('2011-03-22','D')
		>>> # First business day after a date
		... np.busday_offset('2011-03-20', 1, roll='backward')
		numpy.datetime64('2011-03-21','D')
		>>> np.busday_offset('2011-03-22', 1, roll='backward')
		numpy.datetime64('2011-03-23','D')
	**/
	static public function busday_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("cast")
	static public var _cast : Dynamic;
	static public function datetime_as_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function datetime_data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the given
		    shape, dtype, and order.
		
		See Also
		--------
		empty_like, zeros, ones
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply English case rules to convert the first character of an ASCII
		string to upper case.
		
		This is an internal utility function to replace calls to str.capitalize()
		such that we can avoid changing behavior with changing locales.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		capitalized : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_capitalize
		>>> english_capitalize('int8')
		'Int8'
		>>> english_capitalize('Int8')
		'Int8'
		>>> english_capitalize('')
		''
	**/
	static public function english_capitalize(s:Dynamic):Dynamic;
	/**
		Apply English case rules to convert ASCII strings to all lower case.
		
		This is an internal utility function to replace calls to str.lower() such
		that we can avoid changing behavior with changing locales. In particular,
		Turkish has distinct dotted and dotless variants of the Latin letter "I" in
		both lowercase and uppercase. Thus, "I".lower() != "i" in a "tr" locale.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		lowered : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_lower
		>>> english_lower('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_')
		'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789_'
		>>> english_lower('')
		''
	**/
	static public function english_lower(s:Dynamic):Dynamic;
	/**
		Apply English case rules to convert ASCII strings to all upper case.
		
		This is an internal utility function to replace calls to str.upper() such
		that we can avoid changing behavior with changing locales. In particular,
		Turkish has distinct dotted and dotless variants of the Latin letter "I" in
		both lowercase and uppercase. Thus, "i".upper() != "I" in a "tr" locale.
		
		Parameters
		----------
		s : str
		
		Returns
		-------
		uppered : str
		
		Examples
		--------
		>>> from numpy.core.numerictypes import english_upper
		>>> english_upper('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_')
		'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_'
		>>> english_upper('')
		''
	**/
	static public function english_upper(s:Dynamic):Dynamic;
	/**
		Determine common type following standard coercion rules.
		
		Parameters
		----------
		array_types : sequence
		    A list of dtypes or dtype convertible objects representing arrays.
		scalar_types : sequence
		    A list of dtypes or dtype convertible objects representing scalars.
		
		Returns
		-------
		datatype : dtype
		    The common data type, which is the maximum of `array_types` ignoring
		    `scalar_types`, unless the maximum of `scalar_types` is of a
		    different kind (`dtype.kind`). If the kind is not understood, then
		    None is returned.
		
		See Also
		--------
		dtype, common_type, can_cast, mintypecode
		
		Examples
		--------
		>>> np.find_common_type([], [np.int64, np.float32, np.complex])
		dtype('complex128')
		>>> np.find_common_type([np.int64, np.float32], [])
		dtype('float64')
		
		The standard casting rules ensure that a scalar cannot up-cast an
		array unless the scalar is of a fundamentally different kind of data
		(i.e. under a different hierarchy in the data type hierarchy) then
		the array:
		
		>>> np.find_common_type([np.float32], [np.int64, np.float64])
		dtype('float32')
		
		Complex is of a different type, so it up-casts the float in the
		`array_types` argument:
		
		>>> np.find_common_type([np.float32], [np.complex])
		dtype('complex128')
		
		Type specifier strings are convertible to dtypes and can therefore
		be used instead of dtypes:
		
		>>> np.find_common_type(['f4', 'f4', 'i4'], ['c8'])
		dtype('complex128')
	**/
	static public function find_common_type(array_types:Dynamic, scalar_types:Dynamic):Dynamic;
	static public var genericTypeRank : Dynamic;
	/**
		is_busday(dates, weekmask='1111100', holidays=None, busdaycal=None, out=None)
		
		Calculates which of the given dates are valid days, and which are not.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		dates : array_like of datetime64[D]
		    The array of dates to process.
		weekmask : str or array_like of bool, optional
		    A seven-element array indicating which of Monday through Sunday are
		    valid days. May be specified as a length-seven list or array, like
		    [1,1,1,1,1,0,0]; a length-seven string, like '1111100'; or a string
		    like "Mon Tue Wed Thu Fri", made up of 3-character abbreviations for
		    weekdays, optionally separated by white space. Valid abbreviations
		    are: Mon Tue Wed Thu Fri Sat Sun
		holidays : array_like of datetime64[D], optional
		    An array of dates to consider as invalid dates.  They may be
		    specified in any order, and NaT (not-a-time) dates are ignored.
		    This list is saved in a normalized form that is suited for
		    fast calculations of valid days.
		busdaycal : busdaycalendar, optional
		    A `busdaycalendar` object which specifies the valid days. If this
		    parameter is provided, neither weekmask nor holidays may be
		    provided.
		out : array of bool, optional
		    If provided, this array is filled with the result.
		
		Returns
		-------
		out : array of bool
		    An array with the same shape as ``dates``, containing True for
		    each valid day, and False for each invalid day.
		
		See Also
		--------
		busdaycalendar: An object that specifies a custom set of valid days.
		busday_offset : Applies an offset counted in valid days.
		busday_count : Counts how many valid days are in a half-open date range.
		
		Examples
		--------
		>>> # The weekdays are Friday, Saturday, and Monday
		... np.is_busday(['2011-07-01', '2011-07-02', '2011-07-18'],
		...                 holidays=['2011-07-01', '2011-07-04', '2011-07-17'])
		array([False, False,  True], dtype='bool')
	**/
	static public function is_busday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determines whether the given object represents a scalar data-type.
		
		Parameters
		----------
		rep : any
		    If `rep` is an instance of a scalar dtype, True is returned. If not,
		    False is returned.
		
		Returns
		-------
		out : bool
		    Boolean result of check whether `rep` is a scalar dtype.
		
		See Also
		--------
		issubsctype, issubdtype, obj2sctype, sctype2char
		
		Examples
		--------
		>>> np.issctype(np.int32)
		True
		>>> np.issctype(list)
		False
		>>> np.issctype(1.1)
		False
		
		Strings are also a scalar type:
		
		>>> np.issctype(np.dtype('str'))
		True
	**/
	static public function issctype(rep:Dynamic):Dynamic;
	/**
		Determine if a class is a subclass of a second class.
		
		`issubclass_` is equivalent to the Python built-in ``issubclass``,
		except that it returns False instead of raising a TypeError if one
		of the arguments is not a class.
		
		Parameters
		----------
		arg1 : class
		    Input class. True is returned if `arg1` is a subclass of `arg2`.
		arg2 : class or tuple of classes.
		    Input class. If a tuple of classes, True is returned if `arg1` is a
		    subclass of any of the tuple elements.
		
		Returns
		-------
		out : bool
		    Whether `arg1` is a subclass of `arg2` or not.
		
		See Also
		--------
		issubsctype, issubdtype, issctype
		
		Examples
		--------
		>>> np.issubclass_(np.int32, np.int)
		True
		>>> np.issubclass_(np.int32, np.float)
		False
	**/
	static public function issubclass_(arg1:Dynamic, arg2:Dynamic):Dynamic;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    dtype or string representing a typecode.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		issubsctype, issubclass_
		numpy.core.numerictypes : Overview of numpy type hierarchy.
		
		Examples
		--------
		>>> np.issubdtype('S1', str)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Dynamic;
	/**
		Determine if the first argument is a subclass of the second argument.
		
		Parameters
		----------
		arg1, arg2 : dtype or dtype specifier
		    Data-types.
		
		Returns
		-------
		out : bool
		    The result.
		
		See Also
		--------
		issctype, issubdtype,obj2sctype
		
		Examples
		--------
		>>> np.issubsctype('S8', str)
		True
		>>> np.issubsctype(np.array([1]), np.int)
		True
		>>> np.issubsctype(np.array([1]), np.float)
		False
	**/
	static public function issubsctype(arg1:Dynamic, arg2:Dynamic):Dynamic;
	/**
		Return the scalar type of highest precision of the same kind as the input.
		
		Parameters
		----------
		t : dtype or dtype specifier
		    The input data type. This can be a `dtype` object or an object that
		    is convertible to a `dtype`.
		
		Returns
		-------
		out : dtype
		    The highest precision data type of the same kind (`dtype.kind`) as `t`.
		
		See Also
		--------
		obj2sctype, mintypecode, sctype2char
		dtype
		
		Examples
		--------
		>>> np.maximum_sctype(np.int)
		<type 'numpy.int64'>
		>>> np.maximum_sctype(np.uint8)
		<type 'numpy.uint64'>
		>>> np.maximum_sctype(np.complex)
		<type 'numpy.complex192'>
		
		>>> np.maximum_sctype(str)
		<type 'numpy.string_'>
		
		>>> np.maximum_sctype('i2')
		<type 'numpy.int64'>
		>>> np.maximum_sctype('f4')
		<type 'numpy.float96'>
	**/
	static public function maximum_sctype(t:Dynamic):Dynamic;
	static public var nbytes : Dynamic;
	/**
		Return the scalar dtype or NumPy equivalent of Python type of an object.
		
		Parameters
		----------
		rep : any
		    The object of which the type is returned.
		default : any, optional
		    If given, this is returned for objects whose types can not be
		    determined. If not given, None is returned for those objects.
		
		Returns
		-------
		dtype : dtype or Python type
		    The data type of `rep`.
		
		See Also
		--------
		sctype2char, issctype, issubsctype, issubdtype, maximum_sctype
		
		Examples
		--------
		>>> np.obj2sctype(np.int32)
		<type 'numpy.int32'>
		>>> np.obj2sctype(np.array([1., 2.]))
		<type 'numpy.float64'>
		>>> np.obj2sctype(np.array([1.j]))
		<type 'numpy.complex128'>
		
		>>> np.obj2sctype(dict)
		<type 'numpy.object_'>
		>>> np.obj2sctype('string')
		<type 'numpy.string_'>
		
		>>> np.obj2sctype(1, default=list)
		<type 'list'>
	**/
	static public function obj2sctype(rep:Dynamic, ?_default:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the string representation of a scalar dtype.
		
		Parameters
		----------
		sctype : scalar dtype or object
		    If a scalar dtype, the corresponding string character is
		    returned. If an object, `sctype2char` tries to infer its scalar type
		    and then return the corresponding string character.
		
		Returns
		-------
		typechar : str
		    The string character corresponding to the scalar type.
		
		Raises
		------
		ValueError
		    If `sctype` is an object for which the type can not be inferred.
		
		See Also
		--------
		obj2sctype, issctype, issubsctype, mintypecode
		
		Examples
		--------
		>>> for sctype in [np.int32, np.float, np.complex, np.string_, np.ndarray]:
		...     print np.sctype2char(sctype)
		l
		d
		D
		S
		O
		
		>>> x = np.array([1., 2-1.j])
		>>> np.sctype2char(x)
		'D'
		>>> np.sctype2char(list)
		'O'
	**/
	static public function sctype2char(sctype:Dynamic):Dynamic;
	static public var sctypeDict : Dynamic;
	static public var sctypeNA : Dynamic;
	static public var sctypes : Dynamic;
	static public var typeDict : Dynamic;
	static public var typeNA : Dynamic;
	static public var typecodes : Dynamic;
	static public var typeinfo : Dynamic;
	static public var val : Dynamic;
}