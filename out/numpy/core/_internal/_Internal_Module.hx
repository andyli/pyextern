/* This file is generated, do not edit! */
package numpy.core._internal;
@:pythonImport("numpy.core._internal") extern class _Internal_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public function __dtype_from_pep3118(stream:Dynamic, is_subdtype:Dynamic):Dynamic;
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
	static public function _commastring(astr:Dynamic):Dynamic;
	static public var _convorder : Dynamic;
	/**
		Return copy of structured array with padding between fields removed.
		
		Parameters
		----------
		ary : ndarray
		   Structured array from which to remove padding bytes
		
		Returns
		-------
		ary_copy : ndarray
		   Copy of ary with padding bytes removed
	**/
	static public function _copy_fields(ary:Dynamic):numpy.Ndarray;
	static public function _dtype_from_pep3118(spec:Dynamic):Dynamic;
	/**
		Replace names which are None with the next unused f%d name 
	**/
	static public function _fix_names(field_spec:Dynamic):Dynamic;
	/**
		Calculate the greatest common divisor of a and b
	**/
	static public function _gcd(a:Dynamic, b:Dynamic):Dynamic;
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
	static public function _lcm(a:Dynamic, b:Dynamic):Dynamic;
	static public function _makenames_list(adict:Dynamic, align:Dynamic):Dynamic;
	static public var _nbo : Dynamic;
	static public function _newnames(datatype:Dynamic, order:Dynamic):Dynamic;
	static public var _pep3118_native_map : Dynamic;
	static public var _pep3118_native_typechars : Dynamic;
	static public var _pep3118_standard_map : Dynamic;
	static public var _pep3118_standard_typechars : Dynamic;
	static public function _prod(a:Dynamic):Dynamic;
	static public function _reconstruct(subtype:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Builds a signature string which resembles PEP 457
		
		This is used to construct the first line of the docstring
	**/
	static public function _ufunc_doc_signature_formatter(ufunc:Dynamic):Dynamic;
	static public function _usefields(adict:Dynamic, align:Dynamic):Dynamic;
	/**
		Checks safety of a view involving object arrays, for example when
		doing::
		
		    np.zeros(10, dtype=oldtype).view(newtype)
		
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, full, full_like
		
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
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Format the error message for when __array_ufunc__ gives up. 
	**/
	static public function array_ufunc_errmsg_formatter(dummy:Dynamic, ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var format_re : Dynamic;
	static public var print_function : Dynamic;
	static public var sep_re : Dynamic;
	static public var space_re : Dynamic;
}