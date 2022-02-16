/* This file is generated, do not edit! */
package scipy.sparse.data;
@:pythonImport("scipy.sparse.data") extern class Data_Module {
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	static public function matrix(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var name : Dynamic;
	/**
		trunc(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truncated value of the input, element-wise.
		
		The truncated value of the scalar `x` is the nearest integer `i` which
		is closer to zero than `x` is. In short, the fractional part of the
		signed number `x` is discarded.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The truncated value of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, floor, rint, fix
		
		Notes
		-----
		.. versionadded:: 1.3.0
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.trunc(a)
		array([-1., -1., -0.,  0.,  1.,  1.,  2.])
	**/
	static public function npfunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function validateaxis(axis:Dynamic):Dynamic;
}