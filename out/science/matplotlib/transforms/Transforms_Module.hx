/* This file is generated, do not edit! */
package matplotlib.transforms;
@:pythonImport("matplotlib.transforms") extern class Transforms_Module {
	static public var DEBUG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check, inclusively, whether an interval includes a given value, with the
		interval expanded by a small tolerance to admit floating point errors.
		
		Parameters
		----------
		interval : (float, float)
		    The endpoints of the interval.
		val : float
		    Value to check is within interval.
		rtol : float, default: 1e-10
		    Relative tolerance slippage allowed outside of the interval.
		    For an interval ``[a, b]``, values
		    ``a - rtol * (b - a) <= val <= b + rtol * (b - a)`` are considered
		    inside the interval.
		
		Returns
		-------
		bool
		    Whether *val* is within the *interval* (with tolerance).
	**/
	static public function _interval_contains_close(interval:Dynamic, val:Dynamic, ?rtol:Dynamic):Dynamic;
	/**
		Generate a ``__str__`` method for a `.Transform` subclass.
		
		After ::
		
		    class T:
		        __str__ = _make_str_method("attr", key="other")
		
		``str(T(...))`` will be
		
		.. code-block:: text
		
		    {type(T).__name__}(
		        {self.attr},
		        key={self.other})
	**/
	static public function _make_str_method(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function affine_transform(points:Dynamic, trans:Dynamic):Dynamic;
	/**
		Create a new "blended" transform using *x_transform* to transform
		the *x*-axis and *y_transform* to transform the *y*-axis.
		
		A faster version of the blended transform is returned for the case
		where both child transforms are affine.
	**/
	static public function blended_transform_factory(x_transform:Dynamic, y_transform:Dynamic):Dynamic;
	/**
		Create a new composite transform that is the result of applying
		transform a then transform b.
		
		Shortcut versions of the blended transform are provided for the
		case where both child transforms are affine, or one or the other
		is the identity transform.
		
		Composite transforms may also be created using the '+' operator,
		e.g.::
		
		  c = a + b
	**/
	static public function composite_transform_factory(a:Dynamic, b:Dynamic):Dynamic;
	static public function count_bboxes_overlapping_bbox(bbox:Dynamic, bboxes:Dynamic):Dynamic;
	/**
		Check, inclusively, whether an interval includes a given value.
		
		Parameters
		----------
		interval : (float, float)
		    The endpoints of the interval.
		val : float
		    Value to check is within interval.
		
		Returns
		-------
		bool
		    Whether *val* is within the *interval*.
	**/
	static public function interval_contains(interval:Dynamic, val:Dynamic):Dynamic;
	/**
		Check, excluding endpoints, whether an interval includes a given value.
		
		Parameters
		----------
		interval : (float, float)
		    The endpoints of the interval.
		val : float
		    Value to check is within interval.
		
		Returns
		-------
		bool
		    Whether *val* is within the *interval*.
	**/
	static public function interval_contains_open(interval:Dynamic, val:Dynamic):Dynamic;
	/**
		Compute the (multiplicative) inverse of a matrix.
		
		Given a square matrix `a`, return the matrix `ainv` satisfying
		``dot(a, ainv) = dot(ainv, a) = eye(a.shape[0])``.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be inverted.
		
		Returns
		-------
		ainv : (..., M, M) ndarray or matrix
		    (Multiplicative) inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is not square or inversion fails.
		
		See Also
		--------
		scipy.linalg.inv : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		Examples
		--------
		>>> from numpy.linalg import inv
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> ainv = inv(a)
		>>> np.allclose(np.dot(a, ainv), np.eye(2))
		True
		>>> np.allclose(np.dot(ainv, a), np.eye(2))
		True
		
		If a is a matrix object, then the return value is a matrix as well:
		
		>>> ainv = inv(np.matrix(a))
		>>> ainv
		matrix([[-2. ,  1. ],
		        [ 1.5, -0.5]])
		
		Inverses of several matrices can be computed at once:
		
		>>> a = np.array([[[1., 2.], [3., 4.]], [[1, 3], [3, 5]]])
		>>> inv(a)
		array([[[-2.  ,  1.  ],
		        [ 1.5 , -0.5 ]],
		       [[-1.25,  0.75],
		        [ 0.75, -0.25]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Modify the endpoints of a range as needed to avoid singularities.
		
		Parameters
		----------
		vmin, vmax : float
		    The initial endpoints.
		expander : float, default: 0.001
		    Fractional amount by which *vmin* and *vmax* are expanded if
		    the original interval is too small, based on *tiny*.
		tiny : float, default: 1e-15
		    Threshold for the ratio of the interval to the maximum absolute
		    value of its endpoints.  If the interval is smaller than
		    this, it will be expanded.  This value should be around
		    1e-15 or larger; otherwise the interval will be approaching
		    the double precision resolution limit.
		increasing : bool, default: True
		    If True, swap *vmin*, *vmax* if *vmin* > *vmax*.
		
		Returns
		-------
		vmin, vmax : float
		    Endpoints, expanded and/or swapped if necessary.
		    If either input is inf or NaN, or if both inputs are 0 or very
		    close to zero, it returns -*expander*, *expander*.
	**/
	static public function nonsingular(vmin:Dynamic, vmax:Dynamic, ?expander:Dynamic, ?tiny:Dynamic, ?increasing:Dynamic):Float;
	/**
		Return a new transform with an added offset.
		
		Parameters
		----------
		trans : `Transform` subclass
		    Any transform, to which offset will be applied.
		fig : `~matplotlib.figure.Figure`, default: None
		    Current figure. It can be None if *units* are 'dots'.
		x, y : float, default: 0.0
		    The offset to apply.
		units : {'inches', 'points', 'dots'}, default: 'inches'
		    Units of the offset.
		
		Returns
		-------
		`Transform` subclass
		    Transform with applied offset.
	**/
	static public function offset_copy(trans:Dynamic, ?fig:Dynamic, ?x:Dynamic, ?y:Dynamic, ?units:Dynamic):Dynamic;
	static public function update_path_extents(path:Dynamic, trans:Dynamic, rect:Dynamic, minpos:Dynamic, ignore:Dynamic):Dynamic;
}