/* This file is generated, do not edit! */
package scipy.sparse.data;
@:pythonImport("scipy.sparse.data") extern class Data_Module {
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
	static public function _find_missing_index(ind:Dynamic, n:Dynamic):Dynamic;
	static public var _ufuncs_with_fixed_point_at_zero : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	static public var name : Dynamic;
	/**
		arcsinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Inverse hyperbolic sine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray
		    Array of of the same shape as `x`.
		
		Notes
		-----
		`arcsinh` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `sinh(z) = x`. The convention is to return the
		`z` whose imaginary part lies in `[-pi/2, pi/2]`.
		
		For real-valued input data types, `arcsinh` always returns real output.
		For each value that cannot be expressed as a real number or infinity, it
		returns ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytical function that
		has branch cuts `[1j, infj]` and `[-1j, -infj]` and is continuous from
		the right on the former and from the left on the latter.
		
		The inverse hyperbolic sine is also known as `asinh` or ``sinh^-1``.
		
		References
		----------
		.. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		       10th printing, 1964, pp. 86. http://www.math.sfu.ca/~cbm/aands/
		.. [2] Wikipedia, "Inverse hyperbolic function",
		       http://en.wikipedia.org/wiki/Arcsinh
		
		Examples
		--------
		>>> np.arcsinh(np.array([np.e, 10.0]))
		array([ 1.72538256,  2.99822295])
	**/
	static public function npfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function validateaxis(axis:Dynamic):Dynamic;
}