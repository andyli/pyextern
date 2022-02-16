/* This file is generated, do not edit! */
package matplotlib.projections.polar;
@:pythonImport("matplotlib.projections.polar", "PolarAffine") extern class PolarAffine {
	static public var INVALID : Dynamic;
	static public var INVALID_AFFINE : Dynamic;
	static public var INVALID_NON_AFFINE : Dynamic;
	/**
		Compose two transforms together so that *self* is followed by *other*.
		
		``A + B`` returns a transform ``C`` so that
		``C.transform(x) == B.transform(A.transform(x))``.
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Array interface to get at this Transform's affine matrix.
	**/
	public function __array__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		*limits* is the view limit of the data.  The only part of
		its bounds that is used is the y limits (for the radius limits).
		The theta range is handled by the non-affine transform.
	**/
	@:native("__init__")
	public function ___init__(scale_transform:Dynamic, limits:Dynamic):Dynamic;
	/**
		*limits* is the view limit of the data.  The only part of
		its bounds that is used is the y limits (for the radius limits).
		The theta range is handled by the non-affine transform.
	**/
	public function new(scale_transform:Dynamic, limits:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(data_dict:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	public function __str__():Dynamic;
	/**
		Compose *self* with the inverse of *other*, cancelling identical terms
		if any::
		
		    # In general:
		    A - B == A + B.inverted()
		    # (but see note regarding frozen transforms below).
		
		    # If A "ends with" B (i.e. A == A' + B for some A') we can cancel
		    # out B:
		    (A' + B) - B == A'
		
		    # Likewise, if B "starts with" A (B = A + B'), we can cancel out A:
		    A - (A + B') == B'.inverted() == B'^-1
		
		Cancellation (rather than naively returning ``A + B.inverted()``) is
		important for multiple reasons:
		
		- It avoids floating-point inaccuracies when computing the inverse of
		  B: ``B - B`` is guaranteed to cancel out exactly (resulting in the
		  identity transform), whereas ``B + B.inverted()`` may differ by a
		  small epsilon.
		- ``B.inverted()`` always returns a frozen transform: if one computes
		  ``A + B + B.inverted()`` and later mutates ``B``, then
		  ``B.inverted()`` won't be updated and the last two terms won't cancel
		  out anymore; on the other hand, ``A + B - B`` will always be equal to
		  ``A`` even if ``B`` is mutated.
	**/
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Called by :meth:`invalidate` and subsequently ascends the transform
		stack calling each TransformNode's _invalidate_internal method.
	**/
	public function _invalidate_internal(value:Dynamic, invalidating_node:Dynamic):Dynamic;
	/**
		Return an iterator breaking down this transform stack from left to
		right recursively. If self == ((A, N), A) then the result will be an
		iterator which yields I : ((A, N), A), followed by A : (N, A),
		followed by (A, N) : (A), but not ((A, N), A) : I.
		
		This is equivalent to flattening the stack then yielding
		``flat_stack[:i], flat_stack[i:]`` where i=0..(n-1).
	**/
	public function _iter_break_from_left_to_right():Dynamic;
	/**
		Return whether the given transform is a sub-tree of this transform.
		
		This routine uses transform equality to identify sub-trees, therefore
		in many situations it is object id which will be used.
		
		For the case where the given transform represents the whole
		of this transform, returns True.
	**/
	public function contains_branch(other:Dynamic):Dynamic;
	/**
		Return whether the given branch is a sub-tree of this transform on
		each separate dimension.
		
		A common use for this method is to identify if a transform is a blended
		transform containing an axes' data transform. e.g.::
		
		    x_isdata, y_isdata = trans.contains_branch_seperately(ax.transData)
	**/
	public function contains_branch_seperately(other_transform:Dynamic):Dynamic;
	/**
		Return the number of transforms which have been chained
		together to form this Transform instance.
		
		.. note::
		
		    For the special case of a Composite transform, the maximum depth
		    of the two is returned.
	**/
	public var depth : Dynamic;
	/**
		Return a frozen copy of this transform node.  The frozen copy will not
		be updated when its children change.  Useful for storing a previously
		known state of a transform where ``copy.deepcopy()`` might normally be
		used.
	**/
	public function frozen():Dynamic;
	/**
		Get the affine part of this transform.
	**/
	public function get_affine():Dynamic;
	/**
		Get the matrix for the affine part of this transform.
	**/
	public function get_matrix():Dynamic;
	static public var has_inverse : Dynamic;
	static public var input_dims : Dynamic;
	/**
		Invalidate this `TransformNode` and triggers an invalidation of its
		ancestors.  Should be called any time the transform changes.
	**/
	public function invalidate():Dynamic;
	/**
		Return the corresponding inverse transformation.
		
		It holds ``x == self.inverted().transform(self.transform(x))``.
		
		The return value of this method should be treated as
		temporary.  An update to *self* does not cause a corresponding
		update to its inverted copy.
	**/
	public function inverted():Dynamic;
	static public var is_affine : Dynamic;
	static public var is_bbox : Dynamic;
	/**
		bool(x) -> bool
		
		Returns True when the argument x is true, False otherwise.
		The builtins True and False are the only two instances of the class bool.
		The class bool is a subclass of the class int, and cannot be subclassed.
	**/
	public var is_separable : Dynamic;
	static public var output_dims : Dynamic;
	static public var pass_through : Dynamic;
	/**
		Set the children of the transform, to let the invalidation
		system know which transforms can invalidate this transform.
		Should be called from the constructor of any transforms that
		depend on other transforms.
	**/
	public function set_children(?children:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the values of the matrix as an ``(a, b, c, d, e, f)`` tuple.
	**/
	public function to_values():Dynamic;
	/**
		Apply this transformation on the given array of *values*.
		
		Parameters
		----------
		values : array
		    The input values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`input_dims`).
		
		Returns
		-------
		array
		    The output values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`output_dims`), depending on the input.
	**/
	public function transform(values:Dynamic):Dynamic;
	/**
		Apply only the affine part of this transformation on the
		given array of values.
		
		``transform(values)`` is always equivalent to
		``transform_affine(transform_non_affine(values))``.
		
		In non-affine transformations, this is generally a no-op.  In
		affine transformations, this is equivalent to
		``transform(values)``.
		
		Parameters
		----------
		values : array
		    The input values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`input_dims`).
		
		Returns
		-------
		array
		    The output values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`output_dims`), depending on the input.
	**/
	public function transform_affine(points:Dynamic):Dynamic;
	/**
		Transform a set of angles anchored at specific locations.
		
		Parameters
		----------
		angles : (N,) array-like
		    The angles to transform.
		pts : (N, 2) array-like
		    The points where the angles are anchored.
		radians : bool, default: False
		    Whether *angles* are radians or degrees.
		pushoff : float
		    For each point in *pts* and angle in *angles*, the transformed
		    angle is computed by transforming a segment of length *pushoff*
		    starting at that point and making that angle relative to the
		    horizontal axis, and measuring the angle between the horizontal
		    axis and the transformed segment.
		
		Returns
		-------
		(N,) array
	**/
	public function transform_angles(angles:Dynamic, pts:Dynamic, ?radians:Dynamic, ?pushoff:Dynamic):Dynamic;
	/**
		Transform the given bounding box.
		
		For smarter transforms including caching (a common requirement in
		Matplotlib), see `TransformedBbox`.
	**/
	public function transform_bbox(bbox:Dynamic):Dynamic;
	/**
		Apply only the non-affine part of this transformation.
		
		``transform(values)`` is always equivalent to
		``transform_affine(transform_non_affine(values))``.
		
		In non-affine transformations, this is generally equivalent to
		``transform(values)``.  In affine transformations, this is
		always a no-op.
		
		Parameters
		----------
		values : array
		    The input values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`input_dims`).
		
		Returns
		-------
		array
		    The output values as NumPy array of length :attr:`input_dims` or
		    shape (N x :attr:`output_dims`), depending on the input.
	**/
	public function transform_non_affine(points:Dynamic):Dynamic;
	/**
		Apply the transform to `.Path` *path*, returning a new `.Path`.
		
		In some cases, this transform may insert curves into the path
		that began as line segments.
	**/
	public function transform_path(path:Dynamic):Dynamic;
	/**
		Apply the affine part of this transform to `.Path` *path*, returning a
		new `.Path`.
		
		``transform_path(path)`` is equivalent to
		``transform_path_affine(transform_path_non_affine(values))``.
	**/
	public function transform_path_affine(path:Dynamic):Dynamic;
	/**
		Apply the non-affine part of this transform to `.Path` *path*,
		returning a new `.Path`.
		
		``transform_path(path)`` is equivalent to
		``transform_path_affine(transform_path_non_affine(values))``.
	**/
	public function transform_path_non_affine(path:Dynamic):Dynamic;
	/**
		Return a transformed point.
		
		This function is only kept for backcompatibility; the more general
		`.transform` method is capable of transforming both a list of points
		and a single point.
		
		The point is given as a sequence of length :attr:`input_dims`.
		The transformed point is returned as a sequence of length
		:attr:`output_dims`.
	**/
	public function transform_point(point:Dynamic):Dynamic;
}