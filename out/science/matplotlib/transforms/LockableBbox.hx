/* This file is generated, do not edit! */
package matplotlib.transforms;
@:pythonImport("matplotlib.transforms", "LockableBbox") extern class LockableBbox {
	static public var INVALID : Dynamic;
	static public var INVALID_AFFINE : Dynamic;
	static public var INVALID_NON_AFFINE : Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Parameters
		----------
		bbox : `Bbox`
		    The child bounding box to wrap.
		
		x0 : float or None
		    The locked value for x0, or None to leave unlocked.
		
		y0 : float or None
		    The locked value for y0, or None to leave unlocked.
		
		x1 : float or None
		    The locked value for x1, or None to leave unlocked.
		
		y1 : float or None
		    The locked value for y1, or None to leave unlocked.
	**/
	@:native("__init__")
	public function ___init__(bbox:Dynamic, ?x0:Dynamic, ?y0:Dynamic, ?x1:Dynamic, ?y1:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		bbox : `Bbox`
		    The child bounding box to wrap.
		
		x0 : float or None
		    The locked value for x0, or None to leave unlocked.
		
		y0 : float or None
		    The locked value for y0, or None to leave unlocked.
		
		x1 : float or None
		    The locked value for x1, or None to leave unlocked.
		
		y1 : float or None
		    The locked value for y1, or None to leave unlocked.
	**/
	public function new(bbox:Dynamic, ?x0:Dynamic, ?y0:Dynamic, ?x1:Dynamic, ?y1:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return a copy of the `Bbox` anchored to *c* within *container*.
		
		Parameters
		----------
		c : (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
		    Either an (*x*, *y*) pair of relative coordinates (0 is left or
		    bottom, 1 is right or top), 'C' (center), or a cardinal direction
		    ('SW', southwest, is bottom left, etc.).
		container : `Bbox`, optional
		    The box within which the `Bbox` is positioned; it defaults
		    to the initial `Bbox`.
		
		See Also
		--------
		.Axes.set_anchor
	**/
	public function anchored(c:Dynamic, ?container:Dynamic):Dynamic;
	/**
		Return (:attr:`x0`, :attr:`y0`, :attr:`width`, :attr:`height`).
	**/
	public var bounds : Dynamic;
	static public var coefs : Dynamic;
	/**
		Return whether ``(x, y)`` is in the bounding box or on its edge.
	**/
	public function contains(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return whether *x* is in the closed (:attr:`x0`, :attr:`x1`) interval.
	**/
	public function containsx(x:Dynamic):Dynamic;
	/**
		Return whether *y* is in the closed (:attr:`y0`, :attr:`y1`) interval.
	**/
	public function containsy(y:Dynamic):Dynamic;
	/**
		Return the corners of this rectangle as an array of points.
		
		Specifically, this returns the array
		``[[x0, y0], [x0, y1], [x1, y0], [x1, y1]]``.
	**/
	public function corners():Dynamic;
	/**
		Count the number of vertices contained in the `Bbox`.
		Any vertices with a non-finite x or y value are ignored.
		
		Parameters
		----------
		vertices : Nx2 Numpy array.
	**/
	public function count_contains(vertices:Dynamic):Dynamic;
	/**
		Count the number of bounding boxes that overlap this one.
		
		Parameters
		----------
		bboxes : sequence of `.BboxBase`
	**/
	public function count_overlaps(bboxes:Dynamic):Dynamic;
	/**
		Construct a `Bbox` by expanding this one around its center by the
		factors *sw* and *sh*.
	**/
	public function expanded(sw:Dynamic, sh:Dynamic):Dynamic;
	/**
		Return (:attr:`x0`, :attr:`y0`, :attr:`x1`, :attr:`y1`).
	**/
	public var extents : Dynamic;
	/**
		The base class for anything that participates in the transform tree
		and needs to invalidate its parents or be invalidated.  This includes
		classes that are not really transforms, such as bounding boxes, since some
		transforms depend on bounding boxes to compute their values.
	**/
	public function frozen():Dynamic;
	/**
		Return whether ``x, y`` is in the bounding box, but not on its edge.
	**/
	public function fully_contains(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return whether *x* is in the open (:attr:`x0`, :attr:`x1`) interval.
	**/
	public function fully_containsx(x:Dynamic):Dynamic;
	/**
		Return whether *y* is in the open (:attr:`y0`, :attr:`y1`) interval.
	**/
	public function fully_containsy(y:Dynamic):Dynamic;
	/**
		Return whether this bounding box overlaps with the other bounding box,
		not including the edges.
		
		Parameters
		----------
		other : `.BboxBase`
	**/
	public function fully_overlaps(other:Dynamic):Dynamic;
	public function get_points():Dynamic;
	/**
		The (signed) height of the bounding box.
	**/
	public var height : Dynamic;
	/**
		Return the intersection of *bbox1* and *bbox2* if they intersect, or
		None if they don't.
	**/
	static public function intersection(bbox1:Dynamic, bbox2:Dynamic):Dynamic;
	/**
		The pair of *x* coordinates that define the bounding box.
		
		This is not guaranteed to be sorted from left to right.
	**/
	public var intervalx : Dynamic;
	/**
		The pair of *y* coordinates that define the bounding box.
		
		This is not guaranteed to be sorted from bottom to top.
	**/
	public var intervaly : Dynamic;
	/**
		Invalidate this `TransformNode` and triggers an invalidation of its
		ancestors.  Should be called any time the transform changes.
	**/
	public function invalidate():Dynamic;
	static public var is_affine : Dynamic;
	static public var is_bbox : Dynamic;
	/**
		float or None: The value used for the locked x0.
	**/
	public var locked_x0 : Dynamic;
	/**
		float or None: The value used for the locked x1.
	**/
	public var locked_x1 : Dynamic;
	/**
		float or None: The value used for the locked y0.
	**/
	public var locked_y0 : Dynamic;
	/**
		float or None: The value used for the locked y1.
	**/
	public var locked_y1 : Dynamic;
	/**
		The top-right corner of the bounding box.
	**/
	public var max : Dynamic;
	/**
		The bottom-left corner of the bounding box.
	**/
	public var min : Dynamic;
	/**
		Return whether this bounding box overlaps with the other bounding box.
		
		Parameters
		----------
		other : `.BboxBase`
	**/
	public function overlaps(other:Dynamic):Dynamic;
	/**
		The first pair of (*x*, *y*) coordinates that define the bounding box.
		
		This is not guaranteed to be the bottom-left corner (for that, use
		:attr:`min`).
	**/
	public var p0 : Dynamic;
	/**
		The second pair of (*x*, *y*) coordinates that define the bounding box.
		
		This is not guaranteed to be the top-right corner (for that, use
		:attr:`max`).
	**/
	public var p1 : Dynamic;
	/**
		Construct a `Bbox` by padding this one on all four sides by *p*.
	**/
	public function padded(p:Dynamic):Dynamic;
	static public var pass_through : Dynamic;
	/**
		Return the axes-aligned bounding box that bounds the result of rotating
		this `Bbox` by an angle of *radians*.
	**/
	public function rotated(radians:Dynamic):Dynamic;
	/**
		Set the children of the transform, to let the invalidation
		system know which transforms can invalidate this transform.
		Should be called from the constructor of any transforms that
		depend on other transforms.
	**/
	public function set_children(?children:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a copy of the `Bbox`, shrunk by the factor *mx*
		in the *x* direction and the factor *my* in the *y* direction.
		The lower left corner of the box remains unchanged.  Normally
		*mx* and *my* will be less than 1, but this is not enforced.
	**/
	public function shrunk(mx:Dynamic, my:Dynamic):Dynamic;
	/**
		Return a copy of the `Bbox`, shrunk so that it is as
		large as it can be while having the desired aspect ratio,
		*box_aspect*.  If the box coordinates are relative (i.e.
		fractions of a larger box such as a figure) then the
		physical aspect ratio of that figure is specified with
		*fig_aspect*, so that *box_aspect* can also be given as a
		ratio of the absolute dimensions, not the relative dimensions.
	**/
	public function shrunk_to_aspect(box_aspect:Dynamic, ?container:Dynamic, ?fig_aspect:Dynamic):Dynamic;
	/**
		The (signed) width and height of the bounding box.
	**/
	public var size : Dynamic;
	/**
		Return a list of new `Bbox` objects formed by splitting the original
		one with vertical lines at fractional positions given by *args*.
	**/
	public function splitx(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a list of new `Bbox` objects formed by splitting the original
		one with horizontal lines at fractional positions given by *args*.
	**/
	public function splity(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Construct a `Bbox` by statically transforming this one by *transform*.
	**/
	public function transformed(transform:Dynamic):Dynamic;
	/**
		Construct a `Bbox` by translating this one by *tx* and *ty*.
	**/
	public function translated(tx:Dynamic, ty:Dynamic):Dynamic;
	/**
		Return a `Bbox` that contains all of the given *bboxes*.
	**/
	static public function union(bboxes:Dynamic):Dynamic;
	/**
		The (signed) width of the bounding box.
	**/
	public var width : Dynamic;
	/**
		The first of the pair of *x* coordinates that define the bounding box.
		
		This is not guaranteed to be less than :attr:`x1` (for that, use
		:attr:`xmin`).
	**/
	public var x0 : Dynamic;
	/**
		The second of the pair of *x* coordinates that define the bounding box.
		
		This is not guaranteed to be greater than :attr:`x0` (for that, use
		:attr:`xmax`).
	**/
	public var x1 : Dynamic;
	/**
		The right edge of the bounding box.
	**/
	public var xmax : Dynamic;
	/**
		The left edge of the bounding box.
	**/
	public var xmin : Dynamic;
	/**
		The first of the pair of *y* coordinates that define the bounding box.
		
		This is not guaranteed to be less than :attr:`y1` (for that, use
		:attr:`ymin`).
	**/
	public var y0 : Dynamic;
	/**
		The second of the pair of *y* coordinates that define the bounding box.
		
		This is not guaranteed to be greater than :attr:`y0` (for that, use
		:attr:`ymax`).
	**/
	public var y1 : Dynamic;
	/**
		The top edge of the bounding box.
	**/
	public var ymax : Dynamic;
	/**
		The bottom edge of the bounding box.
	**/
	public var ymin : Dynamic;
}