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
	static public function _indent_str(obj:Dynamic):Dynamic;
	/**
		Check, inclusively, whether an interval includes a given value, with the
		interval expanded by a small tolerance to admit floating point errors.
		
		Parameters
		----------
		interval : sequence of scalar
		    A 2-length sequence, endpoints that define the interval.
		val : scalar
		    Value to check is within interval.
		rtol : scalar
		    Tolerance slippage allowed outside of this interval.  Default
		    1e-10 * (b - a).
		
		Returns
		-------
		bool
		    Returns *True* if given *val* is within the *interval* (with tolerance)
	**/
	static public function _interval_contains_close(interval:Dynamic, val:Dynamic, ?rtol:Dynamic):Dynamic;
	/**
		affine_transform(points, trans)
	**/
	static public function affine_transform(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		count_bboxes_overlapping_bbox(bbox, bboxes)
	**/
	static public function count_bboxes_overlapping_bbox(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check, inclusively, whether an interval includes a given value.
		
		Parameters
		----------
		interval : sequence of scalar
		    A 2-length sequence, endpoints that define the interval.
		val : scalar
		    Value to check is within interval.
		
		Returns
		-------
		bool
		    Returns *True* if given *val* is within the *interval*.
	**/
	static public function interval_contains(interval:Dynamic, val:Dynamic):Dynamic;
	/**
		Check, excluding endpoints, whether an interval includes a given value.
		
		Parameters
		----------
		interval : sequence of scalar
		    A 2-length sequence, endpoints that define the interval.
		val : scalar
		    Value to check is within interval.
		
		Returns
		-------
		bool
		    Returns true if given val is within the interval.
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
		array([[[-2. ,  1. ],
		        [ 1.5, -0.5]],
		       [[-5. ,  2. ],
		        [ 3. , -1. ]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Modify the endpoints of a range as needed to avoid singularities.
		
		Parameters
		----------
		vmin, vmax : float
		    The initial endpoints.
		expander : float, optional, default: 0.001
		    Fractional amount by which *vmin* and *vmax* are expanded if
		    the original interval is too small, based on *tiny*.
		tiny : float, optional, default: 1e-15
		    Threshold for the ratio of the interval to the maximum absolute
		    value of its endpoints.  If the interval is smaller than
		    this, it will be expanded.  This value should be around
		    1e-15 or larger; otherwise the interval will be approaching
		    the double precision resolution limit.
		increasing : bool, optional, default: True
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
		trans : :class:`Transform` instance
		    Any transform, to which offset will be applied.
		fig : :class:`~matplotlib.figure.Figure`, optional, default: None
		    Current figure. It can be None if *units* are 'dots'.
		x, y : float, optional, default: 0.0
		    Specifies the offset to apply.
		units : {'inches', 'points', 'dots'}, optional
		    Units of the offset.
		
		Returns
		-------
		trans : :class:`Transform` instance
		    Transform with applied offset.
	**/
	static public function offset_copy(trans:Dynamic, ?fig:Dynamic, ?x:Dynamic, ?y:Dynamic, ?units:Dynamic):Dynamic;
	/**
		update_path_extents(path, trans, rect, minpos, ignore)
	**/
	static public function update_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
}