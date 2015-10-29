/* This file is generated, do not edit! */
package matplotlib.transforms;
@:pythonImport("matplotlib.transforms", "Transform") extern class Transform {
	static public var INVALID : Dynamic;
	static public var INVALID_AFFINE : Dynamic;
	static public var INVALID_NON_AFFINE : Dynamic;
	/**
		Composes two transforms together such that *self* is followed
		by *other*.
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Array interface to get at this Transform's affine matrix.
	**/
	public function __array__(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:Dynamic):Dynamic;
	public function __deepcopy__(args:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a new :class:`TransformNode`.
		
		**shorthand_name** - a string representing the "name" of this
		                     transform. The name carries no significance
		                     other than to improve the readability of
		                     ``str(transform)`` when DEBUG=True.
	**/
	@:native("__init__")
	public function ___init__(?shorthand_name:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Composes two transforms together such that *self* is followed
		by *other*.
	**/
	public function __radd__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Returns a transform stack which goes all the way down self's transform
		stack, and then ascends back up other's stack. If it can, this is
		optimised::
		
		    # normally
		    A - B == a + b.inverted()
		
		    # sometimes, when A contains the tree B there is no need to
		    # descend all the way down to the base of A (via B), instead we
		    # can just stop at B.
		
		    (A + B) - (B)^-1 == A
		
		    # similarly, when B contains tree A, we can avoid decending A at
		    # all, basically:
		    A - (A + B) == ((B + A) - A).inverted() or B^-1
		
		For clarity, the result of ``(A + B) - B + B == (A + B)``.
	**/
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	static public var _gid : Dynamic;
	/**
		Called by :meth:`invalidate` and subsequently ascends the transform
		stack calling each TransformNode's _invalidate_internal method.
	**/
	public function _invalidate_internal(value:Dynamic, invalidating_node:Dynamic):Dynamic;
	/**
		Returns an iterator breaking down this transform stack from left to
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
		Returns whether the given branch is a sub-tree of this transform on
		each seperate dimension.
		
		A common use for this method is to identify if a transform is a blended
		transform containing an axes' data transform. e.g.::
		
		    x_isdata, y_isdata = trans.contains_branch_seperately(ax.transData)
	**/
	public function contains_branch_seperately(other_transform:Dynamic):Dynamic;
	/**
		Returns the number of transforms which have been chained
		together to form this Transform instance.
		
		.. note::
		
		    For the special case of a Composite transform, the maximum depth
		    of the two is returned.
	**/
	static public var depth : Dynamic;
	/**
		Returns a frozen copy of this transform node.  The frozen copy
		will not update when its children change.  Useful for storing
		a previously known state of a transform where
		``copy.deepcopy()`` might normally be used.
	**/
	public function frozen():Dynamic;
	/**
		Get the affine part of this transform.
	**/
	public function get_affine():Dynamic;
	/**
		Get the Affine transformation array for the affine part
		of this transform.
	**/
	public function get_matrix():Dynamic;
	static public var has_inverse : Dynamic;
	static public var input_dims : Dynamic;
	/**
		Invalidate this :class:`TransformNode` and triggers an
		invalidation of its ancestors.  Should be called any
		time the transform changes.
	**/
	public function invalidate():Dynamic;
	/**
		Return the corresponding inverse transformation.
		
		The return value of this method should be treated as
		temporary.  An update to *self* does not cause a corresponding
		update to its inverted copy.
		
		``x === self.inverted().transform(self.transform(x))``
	**/
	public function inverted():Dynamic;
	static public var is_affine : Dynamic;
	static public var is_bbox : Dynamic;
	static public var is_separable : Dynamic;
	static public var output_dims : Dynamic;
	static public var pass_through : Dynamic;
	/**
		Set the children of the transform, to let the invalidation
		system know which transforms can invalidate this transform.
		Should be called from the constructor of any transforms that
		depend on other transforms.
	**/
	public function set_children(children:Dynamic):Dynamic;
	/**
		Performs the transformation on the given array of values.
		
		Accepts a numpy array of shape (N x :attr:`input_dims`) and
		returns a numpy array of shape (N x :attr:`output_dims`).
		
		Alternatively, accepts a numpy array of length :attr:`input_dims`
		and returns a numpy array of length :attr:`output_dims`.
	**/
	public function transform(values:Dynamic):Dynamic;
	/**
		Performs only the affine part of this transformation on the
		given array of values.
		
		``transform(values)`` is always equivalent to
		``transform_affine(transform_non_affine(values))``.
		
		In non-affine transformations, this is generally a no-op.  In
		affine transformations, this is equivalent to
		``transform(values)``.
		
		Accepts a numpy array of shape (N x :attr:`input_dims`) and
		returns a numpy array of shape (N x :attr:`output_dims`).
		
		Alternatively, accepts a numpy array of length :attr:`input_dims`
		and returns a numpy array of length :attr:`output_dims`.
	**/
	public function transform_affine(values:Dynamic):Dynamic;
	/**
		Performs transformation on a set of angles anchored at
		specific locations.
		
		The *angles* must be a column vector (i.e., numpy array).
		
		The *pts* must be a two-column numpy array of x,y positions
		(angle transforms currently only work in 2D).  This array must
		have the same number of rows as *angles*.
		
		*radians* indicates whether or not input angles are given in
		 radians (True) or degrees (False; the default).
		
		*pushoff* is the distance to move away from *pts* for
		 determining transformed angles (see discussion of method
		 below).
		
		The transformed angles are returned in an array with the same
		size as *angles*.
		
		The generic version of this method uses a very generic
		algorithm that transforms *pts*, as well as locations very
		close to *pts*, to find the angle in the transformed system.
	**/
	public function transform_angles(angles:Dynamic, pts:Dynamic, ?radians:Dynamic, ?pushoff:Dynamic):Dynamic;
	/**
		Transform the given bounding box.
		
		Note, for smarter transforms including caching (a common
		requirement for matplotlib figures), see :class:`TransformedBbox`.
	**/
	public function transform_bbox(bbox:Dynamic):Dynamic;
	/**
		Performs only the non-affine part of the transformation.
		
		``transform(values)`` is always equivalent to
		``transform_affine(transform_non_affine(values))``.
		
		In non-affine transformations, this is generally equivalent to
		``transform(values)``.  In affine transformations, this is
		always a no-op.
		
		Accepts a numpy array of shape (N x :attr:`input_dims`) and
		returns a numpy array of shape (N x :attr:`output_dims`).
		
		Alternatively, accepts a numpy array of length :attr:`input_dims`
		and returns a numpy array of length :attr:`output_dims`.
	**/
	public function transform_non_affine(values:Dynamic):Dynamic;
	/**
		Returns a transformed path.
		
		*path*: a :class:`~matplotlib.path.Path` instance.
		
		In some cases, this transform may insert curves into the path
		that began as line segments.
	**/
	public function transform_path(path:Dynamic):Dynamic;
	/**
		Returns a path, transformed only by the affine part of
		this transform.
		
		*path*: a :class:`~matplotlib.path.Path` instance.
		
		``transform_path(path)`` is equivalent to
		``transform_path_affine(transform_path_non_affine(values))``.
	**/
	public function transform_path_affine(path:Dynamic):Dynamic;
	/**
		Returns a path, transformed only by the non-affine
		part of this transform.
		
		*path*: a :class:`~matplotlib.path.Path` instance.
		
		``transform_path(path)`` is equivalent to
		``transform_path_affine(transform_path_non_affine(values))``.
	**/
	public function transform_path_non_affine(path:Dynamic):Dynamic;
	/**
		A convenience function that returns the transformed copy of a
		single point.
		
		The point is given as a sequence of length :attr:`input_dims`.
		The transformed point is returned as a sequence of length
		:attr:`output_dims`.
	**/
	public function transform_point(point:Dynamic):Dynamic;
}