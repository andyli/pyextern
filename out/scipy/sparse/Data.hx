/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse.data") extern class Data {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_method(op:Dynamic):Dynamic;
	static public var _ufuncs_with_fixed_point_at_zero : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	static public var name : Dynamic;
	/**
		rint(x[, out])
		
		Round elements of the array to the nearest integer.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array is same shape and type as `x`.
		
		See Also
		--------
		ceil, floor, trunc
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.rint(a)
		array([-2., -2., -0.,  0.,  2.,  2.,  2.])
	**/
	static public function npfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}