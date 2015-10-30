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
	static public var absolute_import : Dynamic;
	/**
		affine_transform(vertices, transform)
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
	static public var division : Dynamic;
	static public function interval_contains(interval:Dynamic, val:Dynamic):Dynamic;
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
		
		*vmin*, *vmax*
		    the initial endpoints.
		
		*tiny*
		    threshold for the ratio of the interval to the maximum absolute
		    value of its endpoints.  If the interval is smaller than
		    this, it will be expanded.  This value should be around
		    1e-15 or larger; otherwise the interval will be approaching
		    the double precision resolution limit.
		
		*expander*
		    fractional amount by which *vmin* and *vmax* are expanded if
		    the original interval is too small, based on *tiny*.
		
		*increasing*: [True | False]
		    If True (default), swap *vmin*, *vmax* if *vmin* > *vmax*
		
		Returns *vmin*, *vmax*, expanded and/or swapped if necessary.
		
		If either input is inf or NaN, or if both inputs are 0,
		returns -*expander*, *expander*.
	**/
	static public function nonsingular(vmin:Dynamic, vmax:Dynamic, ?expander:Dynamic, ?tiny:Dynamic, ?increasing:Dynamic):Dynamic;
	/**
		Return a new transform with an added offset.
		  args:
		    trans is any transform
		  kwargs:
		    fig is the current figure; it can be None if units are 'dots'
		    x, y give the offset
		    units is 'inches', 'points' or 'dots'
	**/
	static public function offset_copy(trans:Dynamic, ?fig:Dynamic, ?x:Dynamic, ?y:Dynamic, ?units:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		update_path_extents(path, trans, bbox, minpos)
	**/
	static public function update_path_extents(args:haxe.extern.Rest<Dynamic>):Dynamic;
}