/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core._internal") extern class _Internal {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Inject the specified number of padding bytes at the end of a dtype
	**/
	static public function _add_trailing_padding(value:Dynamic, padding:Dynamic):Dynamic;
	static public function _array_descr(descriptor:Dynamic):Dynamic;
	/**
		Perform object memory overlap tests for two data-types (see
		_view_is_safe).
		
		This function checks that new fields only access memory contained in old
		fields, and that non-object fields are not interpreted as objects and vice
		versa.
		
		Parameters
		----------
		new_fields : list of (data-type, int) pairs
		    Flat list of (dtype, byte offset) pairs for the new data type, as
		    returned by _get_all_field_offsets.
		old_fields: list of (data-type, int) pairs
		    Flat list of (dtype, byte offset) pairs for the old data type, as
		    returned by _get_all_field_offsets.
		
		Raises
		------
		TypeError
		    If the new fields are incompatible with the old fields
	**/
	static public function _check_field_overlap(new_fields:Dynamic, old_fields:Dynamic):Dynamic;
	static public function _commastring(astr:Dynamic):Dynamic;
	static public var _convorder : Dynamic;
	static public function _dtype_from_pep3118(spec:Dynamic, ?byteorder:Dynamic, ?is_subdtype:Dynamic):Dynamic;
	/**
		Calculate the greatest common divisor of a and b
	**/
	static public function _gcd(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Returns the types and offsets of all fields in a (possibly structured)
		data type, including nested fields and subarrays.
		
		Parameters
		----------
		dtype : data-type
		    Data type to extract fields from.
		base_offset : int, optional
		    Additional offset to add to all field offsets.
		
		Returns
		-------
		fields : list of (data-type, int) pairs
		    A flat list of (dtype, byte offset) pairs.
	**/
	static public function _get_all_field_offsets(dtype:Dynamic, ?base_offset:Dynamic):Dynamic;
	/**
		Checks safety of getfield for object arrays.
		
		As in _view_is_safe, we need to check that memory containing objects is not
		reinterpreted as a non-object datatype and vice versa.
		
		Parameters
		----------
		oldtype : data-type
		    Data type of the original ndarray.
		newtype : data-type
		    Data type of the field being accessed by ndarray.getfield
		offset : int
		    Offset of the field being accessed by ndarray.getfield
		
		Raises
		------
		TypeError
		    If the field access is invalid
	**/
	static public function _getfield_is_safe(oldtype:Dynamic, newtype:Dynamic, offset:Dynamic):Dynamic;
	static public function _getintp_ctype():Dynamic;
	/**
		Given a structured array and a sequence of field names
		construct new array with just those fields.
		
		Parameters
		----------
		ary : ndarray
		    Structured array being subscripted
		names : string or list of strings
		    Either a single field name, or a list of field names
		
		Returns
		-------
		sub_ary : ndarray
		    If `names` is a single field name, the return value is identical to
		    ary.getfield, a writeable view into `ary`. If `names` is a list of
		    field names the return value is a copy of `ary` containing only those
		    fields. This is planned to return a view in the future.
		
		Raises
		------
		ValueError
		    If `ary` does not contain a field given in `names`.
	**/
	static public function _index_fields(ary:Dynamic, names:Dynamic):Dynamic;
	static public function _makenames_list(adict:Dynamic, align:Dynamic):Dynamic;
	static public var _nbo : Dynamic;
	static public function _newnames(datatype:Dynamic, order:Dynamic):Dynamic;
	static public var _pep3118_native_map : Dynamic;
	static public var _pep3118_native_typechars : Dynamic;
	static public var _pep3118_standard_map : Dynamic;
	static public var _pep3118_standard_typechars : Dynamic;
	static public function _prod(a:Dynamic):Dynamic;
	static public function _reconstruct(subtype:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	static public function _usefields(adict:Dynamic, align:Dynamic):Dynamic;
	/**
		Checks safety of a view involving object arrays, for example when
		doing::
		
		    np.zeros(10, dtype=oldtype).view(newtype)
		
		We need to check that
		1) No memory that is not an object will be interpreted as a object,
		2) No memory containing an object will be interpreted as an arbitrary type.
		Both cases can cause segfaults, eg in the case the view is written to.
		Strategy here is to also disallow views where newtype has any field in a
		place oldtype doesn't.
		
		Parameters
		----------
		oldtype : data-type
		    Data type of original ndarray
		newtype : data-type
		    Data type of the view
		
		Raises
		------
		TypeError
		    If the new type is incompatible with the old type.
	**/
	static public function _view_is_safe(oldtype:Dynamic, newtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function asbytes(s:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var format_re : Dynamic;
	static public var print_function : Dynamic;
	static public var sep_re : Dynamic;
	static public var space_re : Dynamic;
}