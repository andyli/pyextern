/* This file is generated, do not edit! */
package matplotlib.projections.polar;
@:pythonImport("matplotlib.projections.polar", "_WedgeBbox") extern class _WedgeBbox {
	static public var INVALID : Dynamic;
	static public var INVALID_AFFINE : Dynamic;
	static public var INVALID_NON_AFFINE : Dynamic;
	public function __array__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(?args:python.VarArgs<Dynamic>):Dynamic;
	public function __deepcopy__(?args:python.VarArgs<Dynamic>):Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(fmt:Dynamic):Dynamic;
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
		points : ndarray
		    A 2x2 numpy array of the form ``[[x0, y0], [x1, y1]]``.
		
		Notes
		-----
		If you need to create a :class:`Bbox` object from another form
		of data, consider the static methods :meth:`unit`,
		:meth:`from_bounds` and :meth:`from_extents`.
	**/
	@:native("__init__")
	public function ___init__(center:Dynamic, viewLim:Dynamic, originLim:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		points : ndarray
		    A 2x2 numpy array of the form ``[[x0, y0], [x1, y1]]``.
		
		Notes
		-----
		If you need to create a :class:`Bbox` object from another form
		of data, consider the static methods :meth:`unit`,
		:meth:`from_bounds` and :meth:`from_extents`.
	**/
	public function new(center:Dynamic, viewLim:Dynamic, originLim:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _gid : Dynamic;
	/**
		Called by :meth:`invalidate` and subsequently ascends the transform
		stack calling each TransformNode's _invalidate_internal method.
	**/
	public function _invalidate_internal(value:Dynamic, invalidating_node:Dynamic):Dynamic;
	/**
		Return a copy of the :class:`Bbox`, shifted to position *c*
		within a container.
		
		Parameters
		----------
		c : (float, float) or str
		    May be either:
		
		    * A sequence (*cx*, *cy*) where *cx* and *cy* range from 0
		      to 1, where 0 is left or bottom and 1 is right or top
		
		    * a string:
		      - 'C' for centered
		      - 'S' for bottom-center
		      - 'SE' for bottom-left
		      - 'E' for left
		      - etc.
		
		container : Bbox, optional
		    The box within which the :class:`Bbox` is positioned; it defaults
		    to the initial :class:`Bbox`.
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
		Count the number of vertices contained in the :class:`Bbox`.
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
		bboxes : sequence of :class:`BboxBase` objects
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
		(staticmethod) Create a new :class:`Bbox` from *x0*, *y0*,
		*width* and *height*.
		
		*width* and *height* may be negative.
	**/
	static public function from_bounds(x0:Dynamic, y0:Dynamic, width:Dynamic, height:Dynamic):Dynamic;
	/**
		(staticmethod) Create a new Bbox from *left*, *bottom*,
		*right* and *top*.
		
		The *y*-axis increases upwards.
	**/
	static public function from_extents(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		:class:`TransformNode` is the base class for anything that
		participates in the transform tree and needs to invalidate its
		parents or be invalidated.  This includes classes that are not
		really transforms, such as bounding boxes, since some transforms
		depend on bounding boxes to compute their values.
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
		other : BboxBase
	**/
	public function fully_overlaps(other:Dynamic):Dynamic;
	/**
		Get the points of the bounding box directly as a numpy array
		of the form: ``[[x0, y0], [x1, y1]]``.
	**/
	public function get_points():Dynamic;
	/**
		The (signed) height of the bounding box.
	**/
	public var height : Dynamic;
	/**
		Set whether the existing bounds of the box should be ignored
		by subsequent calls to :meth:`update_from_data_xy`.
		
		value : bool
		   - When ``True``, subsequent calls to :meth:`update_from_data_xy`
		     will ignore the existing bounds of the :class:`Bbox`.
		
		   - When ``False``, subsequent calls to :meth:`update_from_data_xy`
		     will include the existing bounds of the :class:`Bbox`.
	**/
	public function ignore(value:Dynamic):Dynamic;
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
		Invalidate this :class:`TransformNode` and triggers an
		invalidation of its ancestors.  Should be called any
		time the transform changes.
	**/
	public function invalidate():Dynamic;
	/**
		Construct a `Bbox` by statically transforming this one by the inverse
		of *transform*.
	**/
	public function inverse_transformed(transform:Dynamic):Dynamic;
	static public var is_affine : Dynamic;
	static public var is_bbox : Dynamic;
	/**
		Return whether this is the unit box (from (0, 0) to (1, 1)).
	**/
	public function is_unit():Dynamic;
	/**
		The top-right corner of the bounding box.
	**/
	public var max : Dynamic;
	/**
		The bottom-left corner of the bounding box.
	**/
	public var min : Dynamic;
	public var minpos : Dynamic;
	public var minposx : Dynamic;
	public var minposy : Dynamic;
	/**
		Return whether the bbox has changed since init.
	**/
	public function mutated():Dynamic;
	/**
		Return whether the x-limits have changed since init.
	**/
	public function mutatedx():Dynamic;
	/**
		Return whether the y-limits have changed since init.
	**/
	public function mutatedy():Dynamic;
	/**
		(staticmethod) Create a new null :class:`Bbox` from (inf, inf) to
		(-inf, -inf).
	**/
	@:native("null")
	static public function _null():Dynamic;
	/**
		Return whether this bounding box overlaps with the other bounding box.
		
		Parameters
		----------
		other : BboxBase
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
		Return a new bounding box that bounds a rotated version of
		this bounding box by the given radians.  The new bounding box
		is still aligned with the axes, of course.
	**/
	public function rotated(radians:Dynamic):Dynamic;
	/**
		Set this bounding box from the "frozen" bounds of another
		:class:`Bbox`.
	**/
	public function set(other:Dynamic):Dynamic;
	/**
		Set the children of the transform, to let the invalidation
		system know which transforms can invalidate this transform.
		Should be called from the constructor of any transforms that
		depend on other transforms.
	**/
	public function set_children(?children:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set the points of the bounding box directly from a numpy array
		of the form: ``[[x0, y0], [x1, y1]]``.  No error checking is
		performed, as this method is mainly for internal use.
	**/
	public function set_points(points:Dynamic):Dynamic;
	/**
		Return a copy of the :class:`Bbox`, shrunk by the factor *mx*
		in the *x* direction and the factor *my* in the *y* direction.
		The lower left corner of the box remains unchanged.  Normally
		*mx* and *my* will be less than 1, but this is not enforced.
	**/
	public function shrunk(mx:Dynamic, my:Dynamic):Dynamic;
	/**
		Return a copy of the :class:`Bbox`, shrunk so that it is as
		large as it can be while having the desired aspect ratio,
		*box_aspect*.  If the box coordinates are relative---that
		is, fractions of a larger box such as a figure---then the
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
		(staticmethod) Create a new unit :class:`Bbox` from (0, 0) to
		(1, 1).
	**/
	static public function unit():Dynamic;
	/**
		Update the bounds of the :class:`Bbox` based on the passed in
		data.  After updating, the bounds will have positive *width*
		and *height*; *x0* and *y0* will be the minimal values.
		
		Parameters
		----------
		xy : ndarray
		    A numpy array of 2D points.
		
		ignore : bool, optional
		   - When ``True``, ignore the existing bounds of the :class:`Bbox`.
		   - When ``False``, include the existing bounds of the :class:`Bbox`.
		   - When ``None``, use the last value passed to :meth:`ignore`.
		
		updatex, updatey : bool, optional
		    When ``True``, update the x/y values.
	**/
	public function update_from_data_xy(xy:Dynamic, ?ignore:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Update the bounds of the :class:`Bbox` based on the passed in
		data.  After updating, the bounds will have positive *width*
		and *height*; *x0* and *y0* will be the minimal values.
		
		Parameters
		----------
		path : :class:`~matplotlib.path.Path`
		
		ignore : bool, optional
		   - when ``True``, ignore the existing bounds of the :class:`Bbox`.
		   - when ``False``, include the existing bounds of the :class:`Bbox`.
		   - when ``None``, use the last value passed to :meth:`ignore`.
		
		updatex, updatey : bool, optional
		    When ``True``, update the x/y values.
	**/
	public function update_from_path(path:Dynamic, ?ignore:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
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