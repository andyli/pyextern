/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver", "Quiver") extern class Quiver {
	static public var _PIVOT_VALS : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		        The constructor takes one required argument, an Axes
		        instance, followed by the args and kwargs described
		        by the following pyplot interface documentation:
		        
		Plot a 2D field of arrows.
		
		Call signature::
		
		  quiver([X, Y], U, V, [C], **kw)
		
		Where *X*, *Y* define the arrow locations, *U*, *V* define the arrow
		directions, and *C* optionally sets the color.
		
		**Arrow size**
		
		The default settings auto-scales the length of the arrows to a reasonable size.
		To change this behavior see the *scale* and *scale_units* parameters.
		
		**Arrow shape**
		
		The defaults give a slightly swept-back arrow; to make the head a
		triangle, make *headaxislength* the same as *headlength*. To make the
		arrow more pointed, reduce *headwidth* or increase *headlength* and
		*headaxislength*. To make the head smaller relative to the shaft,
		scale down all the head parameters. You will probably do best to leave
		minshaft alone.
		
		**Arrow outline**
		
		*linewidths* and *edgecolors* can be used to customize the arrow
		outlines.
		
		Parameters
		----------
		X, Y : 1D or 2D array-like, optional
		    The x and y coordinates of the arrow locations.
		
		    If not given, they will be generated as a uniform integer meshgrid based
		    on the dimensions of *U* and *V*.
		
		    If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
		    using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
		    must match the column and row dimensions of *U* and *V*.
		
		U, V : 1D or 2D array-like
		    The x and y direction components of the arrow vectors.
		
		C : 1D or 2D array-like, optional
		    Numeric data that defines the arrow colors by colormapping via *norm* and
		    *cmap*.
		
		    This does not support explicit colors. If you want to set colors directly,
		    use *color* instead.
		
		units : {'width', 'height', 'dots', 'inches', 'x', 'y' 'xy'}, default: 'width'
		    The arrow dimensions (except for *length*) are measured in multiples of
		    this unit.
		
		    The following values are supported:
		
		    - 'width', 'height': The width or height of the axis.
		    - 'dots', 'inches': Pixels or inches based on the figure dpi.
		    - 'x', 'y', 'xy': *X*, *Y* or :math:`\sqrt{X^2 + Y^2}` in data units.
		
		    The arrows scale differently depending on the units.  For
		    'x' or 'y', the arrows get larger as one zooms in; for other
		    units, the arrow size is independent of the zoom state.  For
		    'width or 'height', the arrow size increases with the width and
		    height of the axes, respectively, when the window is resized;
		    for 'dots' or 'inches', resizing does not change the arrows.
		
		angles : {'uv', 'xy'} or array-like, optional, default: 'uv'
		    Method for determining the angle of the arrows.
		
		    - 'uv': The arrow axis aspect ratio is 1 so that
		      if *U* == *V* the orientation of the arrow on the plot is 45 degrees
		      counter-clockwise from the horizontal axis (positive to the right).
		
		      Use this if the arrows symbolize a quantity that is not based on
		      *X*, *Y* data coordinates.
		
		    - 'xy': Arrows point from (x,y) to (x+u, y+v).
		      Use this for plotting a gradient field, for example.
		
		    - Alternatively, arbitrary angles may be specified explicitly as an array
		      of values in degrees, counter-clockwise from the horizontal axis.
		
		      In this case *U*, *V* is only used to determine the length of the
		      arrows.
		
		    Note: inverting a data axis will correspondingly invert the
		    arrows only with ``angles='xy'``.
		
		scale : float, optional
		    Number of data units per arrow length unit, e.g., m/s per plot width; a
		    smaller scale parameter makes the arrow longer. Default is *None*.
		
		    If *None*, a simple autoscaling algorithm is used, based on the average
		    vector length and the number of vectors. The arrow length unit is given by
		    the *scale_units* parameter.
		
		scale_units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, optional
		    If the *scale* kwarg is *None*, the arrow length unit. Default is *None*.
		
		    e.g. *scale_units* is 'inches', *scale* is 2.0, and
		    ``(u,v) = (1,0)``, then the vector will be 0.5 inches long.
		
		    If *scale_units* is 'width' or 'height', then the vector will be half the
		    width/height of the axes.
		
		    If *scale_units* is 'x' then the vector will be 0.5 x-axis
		    units. To plot vectors in the x-y plane, with u and v having
		    the same units as x and y, use
		    ``angles='xy', scale_units='xy', scale=1``.
		
		width : float, optional
		    Shaft width in arrow units; default depends on choice of units,
		    above, and number of vectors; a typical starting value is about
		    0.005 times the width of the plot.
		
		headwidth : float, optional, default: 3
		    Head width as multiple of shaft width.
		
		headlength : float, optional, default: 5
		    Head length as multiple of shaft width.
		
		headaxislength : float, optional, default: 4.5
		    Head length at shaft intersection.
		
		minshaft : float, optional, default: 1
		    Length below which arrow scales, in units of head length. Do not
		    set this to less than 1, or small arrows will look terrible!
		
		minlength : float, optional, default: 1
		    Minimum length as a multiple of shaft width; if an arrow length
		    is less than this, plot a dot (hexagon) of this diameter instead.
		
		pivot : {'tail', 'mid', 'middle', 'tip'}, optional, default: 'tail'
		    The part of the arrow that is anchored to the *X*, *Y* grid. The arrow
		    rotates about this point.
		
		    'mid' is a synonym for 'middle'.
		
		color : color or color sequence, optional
		    Explicit color(s) for the arrows. If *C* has been set, *color* has no
		    effect.
		
		    This is a synonym for the `~.PolyCollection` *facecolor* parameter.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.collections.PolyCollection` properties, optional
		    All other keyword arguments are passed on to `.PolyCollection`:
		
		      agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa or antialiaseds: bool or sequence of bools
		  array: ndarray
		  capstyle: {'butt', 'round', 'projecting'}
		  clim: a length 2 sequence of floats; may be overridden in methods that have ``vmin`` and ``vmax`` kwargs.
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  cmap: colormap or registered colormap name
		  color: color or sequence of rgba tuples
		  contains: callable
		  edgecolor or ec or edgecolors: color or sequence of colors or 'face'
		  facecolor or facecolors or fc: color or sequence of colors
		  figure: `.Figure`
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or dashes or linestyles or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or linewidths or lw: float or sequence of floats
		  norm: `.Normalize`
		  offset_position: {'screen', 'data'}
		  offsets: float or sequence of floats
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  pickradius: unknown
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  urls: List[str] or None
		  visible: bool
		  zorder: float
		
		See Also
		--------
		quiverkey : Add a key to a quiver plot.
		
		        
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?scale:Dynamic, ?headwidth:Dynamic, ?headlength:Dynamic, ?headaxislength:Dynamic, ?minshaft:Dynamic, ?minlength:Dynamic, ?units:Dynamic, ?scale_units:Dynamic, ?angles:Dynamic, ?width:Dynamic, ?color:Dynamic, ?pivot:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		        The constructor takes one required argument, an Axes
		        instance, followed by the args and kwargs described
		        by the following pyplot interface documentation:
		        
		Plot a 2D field of arrows.
		
		Call signature::
		
		  quiver([X, Y], U, V, [C], **kw)
		
		Where *X*, *Y* define the arrow locations, *U*, *V* define the arrow
		directions, and *C* optionally sets the color.
		
		**Arrow size**
		
		The default settings auto-scales the length of the arrows to a reasonable size.
		To change this behavior see the *scale* and *scale_units* parameters.
		
		**Arrow shape**
		
		The defaults give a slightly swept-back arrow; to make the head a
		triangle, make *headaxislength* the same as *headlength*. To make the
		arrow more pointed, reduce *headwidth* or increase *headlength* and
		*headaxislength*. To make the head smaller relative to the shaft,
		scale down all the head parameters. You will probably do best to leave
		minshaft alone.
		
		**Arrow outline**
		
		*linewidths* and *edgecolors* can be used to customize the arrow
		outlines.
		
		Parameters
		----------
		X, Y : 1D or 2D array-like, optional
		    The x and y coordinates of the arrow locations.
		
		    If not given, they will be generated as a uniform integer meshgrid based
		    on the dimensions of *U* and *V*.
		
		    If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
		    using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
		    must match the column and row dimensions of *U* and *V*.
		
		U, V : 1D or 2D array-like
		    The x and y direction components of the arrow vectors.
		
		C : 1D or 2D array-like, optional
		    Numeric data that defines the arrow colors by colormapping via *norm* and
		    *cmap*.
		
		    This does not support explicit colors. If you want to set colors directly,
		    use *color* instead.
		
		units : {'width', 'height', 'dots', 'inches', 'x', 'y' 'xy'}, default: 'width'
		    The arrow dimensions (except for *length*) are measured in multiples of
		    this unit.
		
		    The following values are supported:
		
		    - 'width', 'height': The width or height of the axis.
		    - 'dots', 'inches': Pixels or inches based on the figure dpi.
		    - 'x', 'y', 'xy': *X*, *Y* or :math:`\sqrt{X^2 + Y^2}` in data units.
		
		    The arrows scale differently depending on the units.  For
		    'x' or 'y', the arrows get larger as one zooms in; for other
		    units, the arrow size is independent of the zoom state.  For
		    'width or 'height', the arrow size increases with the width and
		    height of the axes, respectively, when the window is resized;
		    for 'dots' or 'inches', resizing does not change the arrows.
		
		angles : {'uv', 'xy'} or array-like, optional, default: 'uv'
		    Method for determining the angle of the arrows.
		
		    - 'uv': The arrow axis aspect ratio is 1 so that
		      if *U* == *V* the orientation of the arrow on the plot is 45 degrees
		      counter-clockwise from the horizontal axis (positive to the right).
		
		      Use this if the arrows symbolize a quantity that is not based on
		      *X*, *Y* data coordinates.
		
		    - 'xy': Arrows point from (x,y) to (x+u, y+v).
		      Use this for plotting a gradient field, for example.
		
		    - Alternatively, arbitrary angles may be specified explicitly as an array
		      of values in degrees, counter-clockwise from the horizontal axis.
		
		      In this case *U*, *V* is only used to determine the length of the
		      arrows.
		
		    Note: inverting a data axis will correspondingly invert the
		    arrows only with ``angles='xy'``.
		
		scale : float, optional
		    Number of data units per arrow length unit, e.g., m/s per plot width; a
		    smaller scale parameter makes the arrow longer. Default is *None*.
		
		    If *None*, a simple autoscaling algorithm is used, based on the average
		    vector length and the number of vectors. The arrow length unit is given by
		    the *scale_units* parameter.
		
		scale_units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, optional
		    If the *scale* kwarg is *None*, the arrow length unit. Default is *None*.
		
		    e.g. *scale_units* is 'inches', *scale* is 2.0, and
		    ``(u,v) = (1,0)``, then the vector will be 0.5 inches long.
		
		    If *scale_units* is 'width' or 'height', then the vector will be half the
		    width/height of the axes.
		
		    If *scale_units* is 'x' then the vector will be 0.5 x-axis
		    units. To plot vectors in the x-y plane, with u and v having
		    the same units as x and y, use
		    ``angles='xy', scale_units='xy', scale=1``.
		
		width : float, optional
		    Shaft width in arrow units; default depends on choice of units,
		    above, and number of vectors; a typical starting value is about
		    0.005 times the width of the plot.
		
		headwidth : float, optional, default: 3
		    Head width as multiple of shaft width.
		
		headlength : float, optional, default: 5
		    Head length as multiple of shaft width.
		
		headaxislength : float, optional, default: 4.5
		    Head length at shaft intersection.
		
		minshaft : float, optional, default: 1
		    Length below which arrow scales, in units of head length. Do not
		    set this to less than 1, or small arrows will look terrible!
		
		minlength : float, optional, default: 1
		    Minimum length as a multiple of shaft width; if an arrow length
		    is less than this, plot a dot (hexagon) of this diameter instead.
		
		pivot : {'tail', 'mid', 'middle', 'tip'}, optional, default: 'tail'
		    The part of the arrow that is anchored to the *X*, *Y* grid. The arrow
		    rotates about this point.
		
		    'mid' is a synonym for 'middle'.
		
		color : color or color sequence, optional
		    Explicit color(s) for the arrows. If *C* has been set, *color* has no
		    effect.
		
		    This is a synonym for the `~.PolyCollection` *facecolor* parameter.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.collections.PolyCollection` properties, optional
		    All other keyword arguments are passed on to `.PolyCollection`:
		
		      agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa or antialiaseds: bool or sequence of bools
		  array: ndarray
		  capstyle: {'butt', 'round', 'projecting'}
		  clim: a length 2 sequence of floats; may be overridden in methods that have ``vmin`` and ``vmax`` kwargs.
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  cmap: colormap or registered colormap name
		  color: color or sequence of rgba tuples
		  contains: callable
		  edgecolor or ec or edgecolors: color or sequence of colors or 'face'
		  facecolor or facecolors or fc: color or sequence of colors
		  figure: `.Figure`
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or dashes or linestyles or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or linewidths or lw: float or sequence of floats
		  norm: `.Normalize`
		  offset_position: {'screen', 'data'}
		  offsets: float or sequence of floats
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  pickradius: unknown
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  urls: List[str] or None
		  visible: bool
		  zorder: float
		
		See Also
		--------
		quiverkey : Add a key to a quiver plot.
		
		        
	**/
	public function new(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?scale:Dynamic, ?headwidth:Dynamic, ?headlength:Dynamic, ?headaxislength:Dynamic, ?minshaft:Dynamic, ?minlength:Dynamic, ?units:Dynamic, ?scale_units:Dynamic, ?angles:Dynamic, ?width:Dynamic, ?color:Dynamic, ?pivot:Dynamic, ?kw:python.KwArgs<Dynamic>):Void;
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
	static public var _alias_map : Dynamic;
	public function _angles_lengths(U:Dynamic, V:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Internal helper function to broadcast + scale ls/lw
		
		In the collection drawing code, the linewidth and linestyle are cycled
		through as circular buffers (via ``v[i % len(v)]``).  Thus, if we are
		going to scale the dash pattern at set time (not draw time) we need to
		do the broadcasting now and expand both lists to be the same length.
		
		Parameters
		----------
		linewidths : list
		    line widths of collection
		dashes : list
		    dash specification (offset, (dash pattern tuple))
		
		Returns
		-------
		linewidths, dashes : list
		     Will be the same length, dashes are scaled by paired linewidth
	**/
	static public function _bcast_lwls(linewidths:Dynamic, dashes:Dynamic):Array<Dynamic>;
	/**
		Return a scale factor for converting from units to pixels
	**/
	public function _dots_per_unit(units:Dynamic):Dynamic;
	static public var _edge_default : Dynamic;
	static public var _factor : Dynamic;
	/**
		length is in arrow width units 
	**/
	public function _h_arrows(length:Dynamic):Dynamic;
	/**
		Initialization delayed until first draw;
		allow time for axes setup.
	**/
	public function _init():Dynamic;
	public function _make_verts(U:Dynamic, V:Dynamic, angles:Dynamic):Dynamic;
	static public var _offsets : Dynamic;
	public function _prepare_points():Dynamic;
	static public var _prop_order : Dynamic;
	public function _set_edgecolor(c:Dynamic):Dynamic;
	public function _set_facecolor(c:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Sets the PolygonCollection transform to go
		from arrow width units to pixels.
	**/
	public function _set_transform():Dynamic;
	static public var _transOffset : Dynamic;
	static public var _transforms : Dynamic;
	/**
		Add a callback function that will be called whenever one of the
		`.Artist`'s properties changes.
		
		Parameters
		----------
		func : callable
		    The callback function. It must have the signature::
		
		        def func(artist: Artist) -> Any
		
		    where *artist* is the calling `.Artist`. Return values may exist
		    but are ignored.
		
		Returns
		-------
		oid : int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Int;
	/**
		Add an entry to a dictionary of boolean flags
		that are set to True when the mappable is changed.
	**/
	public function add_checker(checker:Dynamic):Dynamic;
	public var aname : Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array
	**/
	public function autoscale():Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array, changing only limits that are None
	**/
	public function autoscale_None():Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Call this whenever the mappable is changed to notify all the
		callbackSM listeners to the 'changed' signal
	**/
	public function changed():Dynamic;
	/**
		If mappable has changed since the last check,
		return True; else return False
	**/
	public function check_update(checker:Dynamic):Dynamic;
	public var color : Dynamic;
	/**
		Test whether the mouse event occurred in the collection.
		
		Returns ``bool, dict(ind=itemlist)``, where every item in itemlist
		contains the event.
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		Convert *x* using the unit type of the xaxis.
		
		If the artist is not in contained in an Axes or if the xaxis does not
		have units, *x* itself is returned.
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		Convert *y* using the unit type of the yaxis.
		
		If the artist is not in contained in an Axes or if the yaxis does not
		have units, *y* itself is returned.
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Draw the Artist using the given renderer.
		
		This method will be overridden in the Artist subclasses. Typically,
		it is implemented to not have any effect if the Artist is not visible
		(`.Artist.get_visible` is *False*).
		
		Parameters
		----------
		renderer : `.RendererBase` subclass.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all `.Artist` instances contained in the artist.
		
		Parameters
		----------
		match
		    A filter criterion for the matches. This can be
		
		    - *None*: Return all objects contained in artist.
		    - A function with signature ``def match(artist: Artist) -> bool``.
		      The result will only contain artists for which the function
		      returns *True*.
		    - A class instance: e.g., `.Line2D`. The result will only contain
		      artists of this class or its subclasses (``isinstance`` check).
		
		include_self : bool
		    Include *self* in the list to be checked for a match.
		
		Returns
		-------
		artists : list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets.
		
		See Also
		--------
		get_cursor_data
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Return filter function to be used for agg filter.
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the animated state.
	**/
	public function get_animated():Dynamic;
	/**
		Return the array
	**/
	public function get_array():Dynamic;
	public function get_capstyle():Dynamic;
	/**
		Return a list of the child `.Artist`\s of this `.Artist`.
	**/
	public function get_children():Dynamic;
	/**
		return the min, max of the color limits for image scaling
	**/
	public function get_clim():Dynamic;
	/**
		Return the clipbox.
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether the artist uses clipping.
	**/
	public function get_clip_on():Dynamic;
	/**
		Return the clip path.
	**/
	public function get_clip_path():Dynamic;
	/**
		return the colormap
	**/
	public function get_cmap():Dynamic;
	/**
		Return the custom contains function of the artist if set, or *None*.
		
		See Also
		--------
		set_contains
	**/
	public function get_contains():Dynamic;
	/**
		Return the cursor data for a given event.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		Cursor data can be used by Artists to provide additional context
		information for a given event. The default implementation just returns
		*None*.
		
		Subclasses can override the method and return arbitrary data. However,
		when doing so, they must ensure that `.format_cursor_data` can convert
		the data to a string representation.
		
		The only current use case is displaying the z-value of an `.AxesImage`
		in the status bar of a plot window, while moving the mouse.
		
		Parameters
		----------
		event : `matplotlib.backend_bases.MouseEvent`
		
		See Also
		--------
		format_cursor_data
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Alias for `get_linestyle`.
	**/
	public function get_dashes():Dynamic;
	public function get_datalim(transData:Dynamic):Dynamic;
	/**
		Alias for `get_edgecolor`.
	**/
	public function get_ec():Dynamic;
	public function get_edgecolor():Dynamic;
	/**
		Alias for `get_edgecolor`.
	**/
	public function get_edgecolors():Dynamic;
	public function get_facecolor():Dynamic;
	/**
		Alias for `get_facecolor`.
	**/
	public function get_facecolors():Dynamic;
	/**
		Alias for `get_facecolor`.
	**/
	public function get_fc():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		return whether fill is set
	**/
	public function get_fill():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return the current hatching pattern.
	**/
	public function get_hatch():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	public function get_joinstyle():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_linestyle():Dynamic;
	/**
		Alias for `get_linestyle`.
	**/
	public function get_linestyles():Dynamic;
	public function get_linewidth():Dynamic;
	/**
		Alias for `get_linewidth`.
	**/
	public function get_linewidths():Dynamic;
	/**
		Alias for `get_linestyle`.
	**/
	public function get_ls():Dynamic;
	/**
		Alias for `get_linewidth`.
	**/
	public function get_lw():Dynamic;
	/**
		Returns how offsets are applied for the collection.  If
		*offset_position* is 'screen', the offset is applied after the
		master transform has been applied, that is, the offsets are in
		screen coordinates.  If offset_position is 'data', the offset
		is applied before the master transform, i.e., the offsets are
		in data coordinates.
	**/
	public function get_offset_position():Dynamic;
	public function get_offset_transform():Dynamic;
	/**
		Return the offsets for the collection.
	**/
	public function get_offsets():Dynamic;
	public function get_path_effects():Dynamic;
	public function get_paths():Dynamic;
	/**
		Return the picking behavior of the artist.
		
		The possible values are described in `.set_picker`.
		
		See Also
		--------
		set_picker, pickable, pick
	**/
	public function get_picker():Dynamic;
	public function get_pickradius():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Returns the sizes of the elements in the collection.  The
		value represents the 'area' of the element.
		
		Returns
		-------
		sizes : array
		    The 'area' of each element.
	**/
	public function get_sizes():Array<Dynamic>;
	/**
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or None
		
		    A 3-tuple with the following elements:
		
		    - *scale*: The amplitude of the wiggle perpendicular to the
		      source line.
		    - *length*: The length of the wiggle along the line.
		    - *randomness*: The scale factor by which the length is
		      shrunken or expanded.
		
		    Returns *None* if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Returns the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Like `Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		bbox : `.BBox`
		    The enclosing bounding box (in figure pixel co-ordinates).
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
	/**
		Return the `.Transform` instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	public function get_transforms():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	public function get_urls():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Get the axes bounding box in display space.
		
		The bounding box' width and height are nonnegative.
		
		Subclasses should override for inclusion in the bounding box
		"tight" calculation. Default is to return an empty bounding
		box at 0, 0.
		
		Be careful when using this function, the results will not update
		if the artist window extent of the artist changes.  The extent
		can change due to any changes in the transform stack, such as
		changing the axes limits, the figure size, or the canvas used
		(as is done when saving a figure).  This can lead to unexpected
		behavior where interactive figures will look fine on the screen,
		but will save incorrectly.
	**/
	public function get_window_extent(renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	public var keytext : Dynamic;
	public var keyvec : Dynamic;
	public var mouseover : Dynamic;
	/**
		Call all of the registered callbacks.
		
		This function is triggered internally when a property is changed.
		
		See Also
		--------
		add_callback
		remove_callback
	**/
	public function pchanged():Dynamic;
	/**
		Process a pick event.
		
		Each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set.
		
		See Also
		--------
		set_picker, get_picker, pickable
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return whether the artist is pickable.
		
		See Also
		--------
		set_picker, get_picker, pick
	**/
	public function pickable():Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	static public var quiver_doc : Dynamic;
	/**
		Overload the remove method
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its observer id.
		
		See Also
		--------
		add_callback
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_UVC(U:Dynamic, V:Dynamic, ?C:Dynamic):Dynamic;
	/**
		Alias for `set_antialiased`.
	**/
	public function set_aa(aa:Dynamic):Dynamic;
	/**
		Set the agg filter.
		
		Parameters
		----------
		filter_func : callable
		    A filter function, which takes a (m, n, 3) float array and a dpi
		    value, and returns a (m, n, 3) array.
		
		    .. ACCEPTS: a filter function, which takes a (m, n, 3) float array
		        and a dpi value, and returns a (m, n, 3) array
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha transparencies of the collection.
		
		Parameters
		----------
		alpha : float or None
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the antialiasing state for rendering.
		
		Parameters
		----------
		aa : bool or sequence of bools
	**/
	public function set_antialiased(aa:Dynamic):Dynamic;
	/**
		Alias for `set_antialiased`.
	**/
	public function set_antialiaseds(aa:Dynamic):Dynamic;
	/**
		Set the image array from numpy array *A*.
		
		Parameters
		----------
		A : ndarray
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		Set the capstyle for the collection (for all its elements).
		
		Parameters
		----------
		cs : {'butt', 'round', 'projecting'}
		    The capstyle
	**/
	public function set_capstyle(cs:Dynamic):Dynamic;
	/**
		set the norm limits for image scaling; if *vmin* is a length2
		sequence, interpret it as ``(vmin, vmax)`` which is used to
		support setp
		
		ACCEPTS: a length 2 sequence of floats; may be overridden in methods
		that have ``vmin`` and ``vmax`` kwargs.
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		Set the artist's clip `.Bbox`.
		
		Parameters
		----------
		clipbox : `.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether the artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		- a :class:`~matplotlib.patches.Patch` (or subclass) instance; or
		- a :class:`~matplotlib.path.Path` instance, in which case a
		  :class:`~matplotlib.transforms.Transform` instance, which will be
		  applied to the path before using it for clipping, must be provided;
		  or
		- ``None``, to remove a previously set clipping path.
		
		For efficiency, if the path happens to be an axis-aligned rectangle,
		this method will set the clipping box to the corresponding rectangle
		and set the clipping path to ``None``.
		
		ACCEPTS: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		set the colormap for luminance data
		
		Parameters
		----------
		cmap : colormap or registered colormap name
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Set both the edgecolor and the facecolor.
		
		Parameters
		----------
		c : color or sequence of rgba tuples
		
		See Also
		--------
		Collection.set_facecolor, Collection.set_edgecolor
		    For setting the edge or face color individually.
	**/
	public function set_color(c:Dynamic):Dynamic;
	/**
		Define a custom contains test for the artist.
		
		The provided callable replaces the default `.contains` method
		of the artist.
		
		Parameters
		----------
		picker : callable
		    A custom picker function to evaluate if an event is within the
		    artist. The function must have the signature::
		
		        def contains(artist: Artist, event: MouseEvent) -> bool, dict
		
		    that returns:
		
		    - a bool indicating if the event is within the artist
		    - a dict of additional information. The dict should at least
		      return the same information as the default ``contains()``
		      implementation of the respective artist, but may provide
		      additional information.
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Alias for `set_linestyle`.
	**/
	public function set_dashes(ls:Dynamic):Dynamic;
	/**
		Alias for `set_edgecolor`.
	**/
	public function set_ec(c:Dynamic):Dynamic;
	/**
		Set the edgecolor(s) of the collection.
		
		Parameters
		----------
		c : color or sequence of colors or 'face'
		    The collection edgecolor(s).  If a sequence, the patches cycle
		    through it.  If 'face', match the facecolor.
	**/
	public function set_edgecolor(c:Dynamic):Dynamic;
	/**
		Alias for `set_edgecolor`.
	**/
	public function set_edgecolors(c:Dynamic):Dynamic;
	/**
		Set the facecolor(s) of the collection.  *c* can be a
		matplotlib color spec (all patches have same color), or a
		sequence of specs; if it is a sequence the patches will
		cycle through the sequence.
		
		If *c* is 'none', the patch will not be filled.
		
		Parameters
		----------
		c : color or sequence of colors
	**/
	public function set_facecolor(c:Dynamic):Dynamic;
	/**
		Alias for `set_facecolor`.
	**/
	public function set_facecolors(c:Dynamic):Dynamic;
	/**
		Alias for `set_facecolor`.
	**/
	public function set_fc(c:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set the hatching pattern
		
		*hatch* can be one of::
		
		  /   - diagonal hatching
		  \   - back diagonal
		  |   - vertical
		  -   - horizontal
		  +   - crossed
		  x   - crossed diagonal
		  o   - small circle
		  O   - large circle
		  .   - dots
		  *   - stars
		
		Letters can be combined, in which case all the specified
		hatchings are done.  If same letter repeats, it increases the
		density of hatching of that pattern.
		
		Hatching is supported in the PostScript, PDF, SVG and Agg
		backends only.
		
		Unlike other properties such as linewidth and colors, hatching
		can only be specified for the collection as a whole, not separately
		for each member.
		
		Parameters
		----------
		hatch : {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
	/**
		Set if artist is to be included in layout calculations,
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
		
		Parameters
		----------
		in_layout : bool
	**/
	public function set_in_layout(in_layout:Dynamic):Dynamic;
	/**
		Set the joinstyle for the collection (for all its elements).
		
		Parameters
		----------
		js : {'miter', 'round', 'bevel'}
		    The joinstyle
	**/
	public function set_joinstyle(js:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the linestyle(s) for the collection.
		
		===========================   =================
		linestyle                     description
		===========================   =================
		``'-'`` or ``'solid'``        solid line
		``'--'`` or  ``'dashed'``     dashed line
		``'-.'`` or  ``'dashdot'``    dash-dotted line
		``':'`` or ``'dotted'``       dotted line
		===========================   =================
		
		Alternatively a dash tuple of the following form can be provided::
		
		    (offset, onoffseq),
		
		where ``onoffseq`` is an even length tuple of on and off ink in points.
		
		Parameters
		----------
		ls : {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    The line style.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Alias for `set_linestyle`.
	**/
	public function set_linestyles(ls:Dynamic):Dynamic;
	/**
		Set the linewidth(s) for the collection.  *lw* can be a scalar
		or a sequence; if it is a sequence the patches will cycle
		through the sequence
		
		Parameters
		----------
		lw : float or sequence of floats
	**/
	public function set_linewidth(lw:Dynamic):Dynamic;
	/**
		Alias for `set_linewidth`.
	**/
	public function set_linewidths(lw:Dynamic):Dynamic;
	/**
		Alias for `set_linestyle`.
	**/
	public function set_ls(ls:Dynamic):Dynamic;
	/**
		Alias for `set_linewidth`.
	**/
	public function set_lw(lw:Dynamic):Dynamic;
	/**
		Set the normalization instance.
		
		Parameters
		----------
		norm : `.Normalize`
		
		Notes
		-----
		If there are any colorbars using the mappable for this norm, setting
		the norm of the mappable will reset the norm, locator, and formatters
		on the colorbar to default.
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Set how offsets are applied.  If *offset_position* is 'screen'
		(default) the offset is applied after the master transform has
		been applied, that is, the offsets are in screen coordinates.
		If offset_position is 'data', the offset is applied before the
		master transform, i.e., the offsets are in data coordinates.
		
		Parameters
		----------
		offset_position : {'screen', 'data'}
	**/
	public function set_offset_position(offset_position:Dynamic):Dynamic;
	/**
		Set the offsets for the collection.
		
		Parameters
		----------
		offsets : float or sequence of floats
	**/
	public function set_offsets(offsets:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		This allows one to delay initialization of the vertices.
	**/
	public function set_paths(verts:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Define the picking behavior of the artist.
		
		Parameters
		----------
		picker : None or bool or float or callable
		    This can be one of the following:
		
		    - *None*: Picking is disabled for this artist (default).
		
		    - A boolean: If *True* then picking will be enabled and the
		      artist will fire a pick event if the mouse event is over
		      the artist.
		
		    - A float: If picker is a number it is interpreted as an
		      epsilon tolerance in points and the artist will fire
		      off an event if it's data is within epsilon of the mouse
		      event.  For some artists like lines and patch collections,
		      the artist may provide additional data to the pick event
		      that is generated, e.g., the indices of the data within
		      epsilon of the pick event
		
		    - A function: If picker is callable, it is a user supplied
		      function which determines whether the artist is hit by the
		      mouse event::
		
		        hit, props = picker(artist, mouseevent)
		
		      to determine the hit test.  if the mouse event is over the
		      artist, return *hit=True* and props is a dictionary of
		      properties you want added to the PickEvent attributes.
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Set the pick radius used for containment tests.
		
		Parameters
		----------
		d : float
		    Pick radius, in points.
	**/
	public function set_pickradius(pr:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the sizes of each member of the collection.
		
		Parameters
		----------
		sizes : ndarray or None
		    The size to set for each element of the collection.  The
		    value is the 'area' of the element.
		dpi : float
		    The dpi of the canvas. Defaults to 72.0.
	**/
	public function set_sizes(sizes:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		Sets the sketch parameters.
		
		Parameters
		----------
		
		scale : float, optional
		    The amplitude of the wiggle perpendicular to the source
		    line, in pixels.  If scale is `None`, or not provided, no
		    sketch filter will be provided.
		
		length : float, optional
		     The length of the wiggle along the line, in pixels
		     (default 128.0)
		
		randomness : float, optional
		    The scale factor by which the length is shrunken or
		    expanded (default 16.0)
		
		    .. ACCEPTS: (scale: float, length: float, randomness: float)
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Set the snapping behavior.
		
		Snapping aligns positions with the pixel grid, which results in
		clearer images. For example, if a black line of 1px width was
		defined at a position in between two pixels, the resulting image
		would contain the interpolated value of that line in the pixel grid,
		which would be a grey value on both adjacent pixel positions. In
		contrast, snapping will move the line to the nearest integer pixel
		value, so that the resulting image will really contain a 1px wide
		black line.
		
		Snapping is currently only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
		    Possible values:
		
		    - *True*: Snap vertices to the nearest pixel center.
		    - *False*: Do not modify vertex positions.
		    - *None*: (auto) If the path contains only rectilinear line
		      segments, round to the nearest pixel center.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Parameters
		----------
		urls : List[str] or None
	**/
	public function set_urls(urls:Dynamic):Dynamic;
	/**
		This allows one to delay initialization of the vertices.
	**/
	public function set_verts(verts:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		This allows one to initialize vertices with path codes.
	**/
	public function set_verts_and_codes(verts:Dynamic, codes:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		``x`` and ``y`` sticky edge lists for autoscaling.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical use case is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the ``x`` and ``y``
		lists can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Return a normalized rgba array corresponding to *x*.
		
		In the normal case, *x* is a 1-D or 2-D sequence of scalars, and
		the corresponding ndarray of rgba values will be returned,
		based on the norm and colormap set for this ScalarMappable.
		
		There is one special case, for handling images that are already
		rgb or rgba, such as might have been read from an image file.
		If *x* is an ndarray with 3 dimensions,
		and the last dimension is either 3 or 4, then it will be
		treated as an rgb or rgba array, and no mapping will be done.
		The array can be uint8, or it can be floating point with
		values in the 0-1 range; otherwise a ValueError will be raised.
		If it is a masked array, the mask will be ignored.
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		If norm is False, no normalization of the input data is
		performed, and it is assumed to be in the range (0-1).
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		copy properties from other to self
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Update colors from the scalar mappable array, if it is not None.
	**/
	public function update_scalarmappable():Dynamic;
	static public var zorder : Dynamic;
}