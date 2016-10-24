/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver", "Quiver") extern class Quiver {
	static public var _PIVOT_VALS : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		        by the following pylab interface documentation:
		        
		Plot a 2-D field of arrows.
		
		call signatures::
		
		  quiver(U, V, **kw)
		  quiver(U, V, C, **kw)
		  quiver(X, Y, U, V, **kw)
		  quiver(X, Y, U, V, C, **kw)
		
		Arguments:
		
		  *X*, *Y*:
		    The x and y coordinates of the arrow locations (default is tail of
		    arrow; see *pivot* kwarg)
		
		  *U*, *V*:
		    Give the x and y components of the arrow vectors
		
		  *C*:
		    An optional array used to map colors to the arrows
		
		All arguments may be 1-D or 2-D arrays or sequences. If *X* and *Y*
		are absent, they will be generated as a uniform grid.  If *U* and *V*
		are 2-D arrays but *X* and *Y* are 1-D, and if ``len(X)`` and ``len(Y)``
		match the column and row dimensions of *U*, then *X* and *Y* will be
		expanded with :func:`numpy.meshgrid`.
		
		*U*, *V*, *C* may be masked arrays, but masked *X*, *Y* are not
		supported at present.
		
		Keyword arguments:
		
		  *units*: [ 'width' | 'height' | 'dots' | 'inches' | 'x' | 'y' | 'xy' ]
		    Arrow units; the arrow dimensions *except for length* are in
		    multiples of this unit.
		
		    * 'width' or 'height': the width or height of the axes
		
		    * 'dots' or 'inches': pixels or inches, based on the figure dpi
		
		    * 'x', 'y', or 'xy': *X*, *Y*, or sqrt(X^2+Y^2) data units
		
		    The arrows scale differently depending on the units.  For
		    'x' or 'y', the arrows get larger as one zooms in; for other
		    units, the arrow size is independent of the zoom state.  For
		    'width or 'height', the arrow size increases with the width and
		    height of the axes, respectively, when the window is resized;
		    for 'dots' or 'inches', resizing does not change the arrows.
		
		
		  *angles*: [ 'uv' | 'xy' | array ]
		    With the default 'uv', the arrow axis aspect ratio is 1, so that
		    if *U*==*V* the orientation of the arrow on the plot is 45 degrees
		    CCW from the horizontal axis (positive to the right).
		    With 'xy', the arrow points from (x,y) to (x+u, y+v).
		    Use this for plotting a gradient field, for example.
		    Alternatively, arbitrary angles may be specified as an array
		    of values in degrees, CCW from the horizontal axis.
		    Note: inverting a data axis will correspondingly invert the
		    arrows *only* with `angles='xy'`.
		
		  *scale*: [ *None* | float ]
		    Data units per arrow length unit, e.g., m/s per plot width; a smaller
		    scale parameter makes the arrow longer.  If *None*, a simple
		    autoscaling algorithm is used, based on the average vector length
		    and the number of vectors.  The arrow length unit is given by
		    the *scale_units* parameter
		
		  *scale_units*: *None*, or any of the *units* options.
		    For example, if *scale_units* is 'inches', *scale* is 2.0, and
		    ``(u,v) = (1,0)``, then the vector will be 0.5 inches long.
		    If *scale_units* is 'width', then the vector will be half the width
		    of the axes.
		
		    If *scale_units* is 'x' then the vector will be 0.5 x-axis
		    units.  To plot vectors in the x-y plane, with u and v having
		    the same units as x and y, use
		    "angles='xy', scale_units='xy', scale=1".
		
		  *width*:
		    Shaft width in arrow units; default depends on choice of units,
		    above, and number of vectors; a typical starting value is about
		    0.005 times the width of the plot.
		
		  *headwidth*: scalar
		    Head width as multiple of shaft width, default is 3
		
		  *headlength*: scalar
		    Head length as multiple of shaft width, default is 5
		
		  *headaxislength*: scalar
		    Head length at shaft intersection, default is 4.5
		
		  *minshaft*: scalar
		    Length below which arrow scales, in units of head length. Do not
		    set this to less than 1, or small arrows will look terrible!
		    Default is 1
		
		  *minlength*: scalar
		    Minimum length as a multiple of shaft width; if an arrow length
		    is less than this, plot a dot (hexagon) of this diameter instead.
		    Default is 1.
		
		  *pivot*: [ 'tail' | 'mid' | 'middle' | 'tip' ]
		    The part of the arrow that is at the grid point; the arrow rotates
		    about this point, hence the name *pivot*.
		
		  *color*: [ color | color sequence ]
		    This is a synonym for the
		    :class:`~matplotlib.collections.PolyCollection` facecolor kwarg.
		    If *C* has been set, *color* has no effect.
		
		The defaults give a slightly swept-back arrow; to make the head a
		triangle, make *headaxislength* the same as *headlength*. To make the
		arrow more pointed, reduce *headwidth* or increase *headlength* and
		*headaxislength*. To make the head smaller relative to the shaft,
		scale down all the head parameters. You will probably do best to leave
		minshaft alone.
		
		linewidths and edgecolors can be used to customize the arrow
		outlines. Additional :class:`~matplotlib.collections.PolyCollection`
		keyword arguments:
		
		  agg_filter: unknown
		  alpha: float or None 
		  animated: [True | False] 
		  antialiased or antialiaseds: Boolean or sequence of booleans 
		  array: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance 
		  clim: a length 2 sequence of floats 
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance 
		  clip_on: [True | False] 
		  clip_path: [ (:class:`~matplotlib.path.Path`, :class:`~matplotlib.transforms.Transform`) | :class:`~matplotlib.patches.Patch` | None ] 
		  cmap: a colormap or registered colormap name 
		  color: matplotlib color arg or sequence of rgba tuples
		  contains: a callable function 
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs 
		  facecolor or facecolors: matplotlib color spec or sequence of specs 
		  figure: a :class:`matplotlib.figure.Figure` instance 
		  gid: an id string 
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ] 
		  label: string or anything printable with '%s' conversion. 
		  linestyle or dashes or linestyles: ['solid' | 'dashed', 'dashdot', 'dotted' | (offset, on-off-dash-seq) | ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` | ``' '`` | ``''``]
		  linewidth or linewidths or lw: float or sequence of floats 
		  norm: unknown
		  offset_position: unknown
		  offsets: float or sequence of floats 
		  path_effects: unknown
		  picker: [None|float|boolean|callable] 
		  pickradius: unknown
		  rasterized: [True | False | None] 
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance 
		  url: a url string 
		  urls: unknown
		  visible: [True | False] 
		  zorder: any number 
		
		        
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		        The constructor takes one required argument, an Axes
		        instance, followed by the args and kwargs described
		        by the following pylab interface documentation:
		        
		Plot a 2-D field of arrows.
		
		call signatures::
		
		  quiver(U, V, **kw)
		  quiver(U, V, C, **kw)
		  quiver(X, Y, U, V, **kw)
		  quiver(X, Y, U, V, C, **kw)
		
		Arguments:
		
		  *X*, *Y*:
		    The x and y coordinates of the arrow locations (default is tail of
		    arrow; see *pivot* kwarg)
		
		  *U*, *V*:
		    Give the x and y components of the arrow vectors
		
		  *C*:
		    An optional array used to map colors to the arrows
		
		All arguments may be 1-D or 2-D arrays or sequences. If *X* and *Y*
		are absent, they will be generated as a uniform grid.  If *U* and *V*
		are 2-D arrays but *X* and *Y* are 1-D, and if ``len(X)`` and ``len(Y)``
		match the column and row dimensions of *U*, then *X* and *Y* will be
		expanded with :func:`numpy.meshgrid`.
		
		*U*, *V*, *C* may be masked arrays, but masked *X*, *Y* are not
		supported at present.
		
		Keyword arguments:
		
		  *units*: [ 'width' | 'height' | 'dots' | 'inches' | 'x' | 'y' | 'xy' ]
		    Arrow units; the arrow dimensions *except for length* are in
		    multiples of this unit.
		
		    * 'width' or 'height': the width or height of the axes
		
		    * 'dots' or 'inches': pixels or inches, based on the figure dpi
		
		    * 'x', 'y', or 'xy': *X*, *Y*, or sqrt(X^2+Y^2) data units
		
		    The arrows scale differently depending on the units.  For
		    'x' or 'y', the arrows get larger as one zooms in; for other
		    units, the arrow size is independent of the zoom state.  For
		    'width or 'height', the arrow size increases with the width and
		    height of the axes, respectively, when the window is resized;
		    for 'dots' or 'inches', resizing does not change the arrows.
		
		
		  *angles*: [ 'uv' | 'xy' | array ]
		    With the default 'uv', the arrow axis aspect ratio is 1, so that
		    if *U*==*V* the orientation of the arrow on the plot is 45 degrees
		    CCW from the horizontal axis (positive to the right).
		    With 'xy', the arrow points from (x,y) to (x+u, y+v).
		    Use this for plotting a gradient field, for example.
		    Alternatively, arbitrary angles may be specified as an array
		    of values in degrees, CCW from the horizontal axis.
		    Note: inverting a data axis will correspondingly invert the
		    arrows *only* with `angles='xy'`.
		
		  *scale*: [ *None* | float ]
		    Data units per arrow length unit, e.g., m/s per plot width; a smaller
		    scale parameter makes the arrow longer.  If *None*, a simple
		    autoscaling algorithm is used, based on the average vector length
		    and the number of vectors.  The arrow length unit is given by
		    the *scale_units* parameter
		
		  *scale_units*: *None*, or any of the *units* options.
		    For example, if *scale_units* is 'inches', *scale* is 2.0, and
		    ``(u,v) = (1,0)``, then the vector will be 0.5 inches long.
		    If *scale_units* is 'width', then the vector will be half the width
		    of the axes.
		
		    If *scale_units* is 'x' then the vector will be 0.5 x-axis
		    units.  To plot vectors in the x-y plane, with u and v having
		    the same units as x and y, use
		    "angles='xy', scale_units='xy', scale=1".
		
		  *width*:
		    Shaft width in arrow units; default depends on choice of units,
		    above, and number of vectors; a typical starting value is about
		    0.005 times the width of the plot.
		
		  *headwidth*: scalar
		    Head width as multiple of shaft width, default is 3
		
		  *headlength*: scalar
		    Head length as multiple of shaft width, default is 5
		
		  *headaxislength*: scalar
		    Head length at shaft intersection, default is 4.5
		
		  *minshaft*: scalar
		    Length below which arrow scales, in units of head length. Do not
		    set this to less than 1, or small arrows will look terrible!
		    Default is 1
		
		  *minlength*: scalar
		    Minimum length as a multiple of shaft width; if an arrow length
		    is less than this, plot a dot (hexagon) of this diameter instead.
		    Default is 1.
		
		  *pivot*: [ 'tail' | 'mid' | 'middle' | 'tip' ]
		    The part of the arrow that is at the grid point; the arrow rotates
		    about this point, hence the name *pivot*.
		
		  *color*: [ color | color sequence ]
		    This is a synonym for the
		    :class:`~matplotlib.collections.PolyCollection` facecolor kwarg.
		    If *C* has been set, *color* has no effect.
		
		The defaults give a slightly swept-back arrow; to make the head a
		triangle, make *headaxislength* the same as *headlength*. To make the
		arrow more pointed, reduce *headwidth* or increase *headlength* and
		*headaxislength*. To make the head smaller relative to the shaft,
		scale down all the head parameters. You will probably do best to leave
		minshaft alone.
		
		linewidths and edgecolors can be used to customize the arrow
		outlines. Additional :class:`~matplotlib.collections.PolyCollection`
		keyword arguments:
		
		  agg_filter: unknown
		  alpha: float or None 
		  animated: [True | False] 
		  antialiased or antialiaseds: Boolean or sequence of booleans 
		  array: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance 
		  clim: a length 2 sequence of floats 
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance 
		  clip_on: [True | False] 
		  clip_path: [ (:class:`~matplotlib.path.Path`, :class:`~matplotlib.transforms.Transform`) | :class:`~matplotlib.patches.Patch` | None ] 
		  cmap: a colormap or registered colormap name 
		  color: matplotlib color arg or sequence of rgba tuples
		  contains: a callable function 
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs 
		  facecolor or facecolors: matplotlib color spec or sequence of specs 
		  figure: a :class:`matplotlib.figure.Figure` instance 
		  gid: an id string 
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ] 
		  label: string or anything printable with '%s' conversion. 
		  linestyle or dashes or linestyles: ['solid' | 'dashed', 'dashdot', 'dotted' | (offset, on-off-dash-seq) | ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` | ``' '`` | ``''``]
		  linewidth or linewidths or lw: float or sequence of floats 
		  norm: unknown
		  offset_position: unknown
		  offsets: float or sequence of floats 
		  path_effects: unknown
		  picker: [None|float|boolean|callable] 
		  pickradius: unknown
		  rasterized: [True | False | None] 
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance 
		  url: a url string 
		  urls: unknown
		  visible: [True | False] 
		  zorder: any number 
		
		        
	**/
	public function new(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _angles_lengths(U:Dynamic, V:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Return a scale factor for converting from units to pixels
	**/
	public function _dots_per_unit(units:Dynamic):Dynamic;
	static public var _factor : Dynamic;
	static public function _get_bool(val:Dynamic):Dynamic;
	static public function _get_value(val:Dynamic):Dynamic;
	/**
		length is in arrow width units 
	**/
	public function _h_arrows(length:Dynamic):Dynamic;
	/**
		Initialization delayed until first draw;
		allow time for axes setup.
	**/
	public function _init():Dynamic;
	public function _make_verts(U:Dynamic, V:Dynamic):Dynamic;
	static public var _offsets : Dynamic;
	/**
		Point prep for drawing and hit testing
	**/
	public function _prepare_points():Dynamic;
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
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Add an entry to a dictionary of boolean flags
		that are set to True when the mappable is changed.
	**/
	public function add_checker(checker:Dynamic):Dynamic;
	static public var aname : Dynamic;
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
		The :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
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
	/**
		Test whether the mouse event occurred in the collection.
		
		Returns True | False, ``dict(ind=itemlist)``, where every
		item in itemlist contains the event.
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		For artists in an axes, if the xaxis has units support,
		convert *x* using xaxis unit type
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		For artists in an axes, if the yaxis has units support,
		convert *y* using yaxis unit type
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all :class:`~matplotlib.artist.Artist` instances
		contained in self.
		
		*match* can be
		
		  - None: return all objects contained in artist.
		
		  - function with signature ``boolean = match(artist)``
		    used to filter matches
		
		  - class instance: e.g., Line2D.  Only return artists of class type.
		
		If *include_self* is True (default), include self in the list to be
		checked for a match.
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return *cursor data* string formatted.
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		return filter function to be used for agg filter
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the artist's animated state
	**/
	public function get_animated():Dynamic;
	/**
		Return the array
	**/
	public function get_array():Dynamic;
	/**
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
	**/
	public function get_axes():Dynamic;
	/**
		Return a list of the child :class:`Artist`s this
		:class:`Artist` contains.
	**/
	public function get_children():Dynamic;
	/**
		return the min, max of the color limits for image scaling
	**/
	public function get_clim():Dynamic;
	/**
		Return artist clipbox
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether artist uses clipping
	**/
	public function get_clip_on():Dynamic;
	/**
		Return artist clip path
	**/
	public function get_clip_path():Dynamic;
	/**
		return the colormap
	**/
	public function get_cmap():Dynamic;
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	public function get_dashes():Dynamic;
	public function get_datalim(transData:Dynamic):Dynamic;
	public function get_edgecolor():Dynamic;
	public function get_edgecolors():Dynamic;
	public function get_facecolor():Dynamic;
	public function get_facecolors():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		return whether fill is set
	**/
	public function get_fill():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		Return the current hatching pattern
	**/
	public function get_hatch():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_linestyle():Dynamic;
	public function get_linestyles():Dynamic;
	public function get_linewidth():Dynamic;
	public function get_linewidths():Dynamic;
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
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	public function get_pickradius():Dynamic;
	/**
		return True if the artist is to be rasterized
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
		sketch_params : tuple or `None`
		
		A 3-tuple with the following elements:
		
		  * `scale`: The amplitude of the wiggle perpendicular to the
		    source line.
		
		  * `length`: The length of the wiggle along the line.
		
		  * `randomness`: The scale factor by which the length is
		    shrunken or expanded.
		
		May return `None` if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Returns the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
	**/
	public function get_snap():Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform`
		instance used by this artist.
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
		Returns the url
	**/
	public function get_url():Dynamic;
	public function get_urls():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Get the axes bounding box in display space.
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
		Return the :class:`Artist`'s zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		Returns True if the artist is assigned to a
		:class:`~matplotlib.figure.Figure`.
	**/
	public function is_figure_set():Dynamic;
	/**
		Returns *True* if :class:`Artist` has a transform explicitly
		set.
	**/
	public function is_transform_set():Dynamic;
	public var mouseover : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		call signature::
		
		  pick(mouseevent)
		
		each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return *True* if :class:`Artist` is pickable.
	**/
	public function pickable():Dynamic;
	/**
		return a dictionary mapping property name -> value for all Artist props
	**/
	public function properties():Dynamic;
	static public var quiver_doc : Dynamic;
	/**
		Overload the remove method
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its *id*.
		
		.. seealso::
		
		    :meth:`add_callback`
		       For adding callbacks
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		A property batch setter. Pass *kwargs* to set properties.
		Will handle property name collisions (e.g., if both
		'color' and 'facecolor' are specified, the property
		with higher priority gets set last).
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_UVC(U:Dynamic, V:Dynamic, ?C:Dynamic):Dynamic;
	/**
		set agg_filter fuction.
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha tranparencies of the collection.  *alpha* must be
		a float or *None*.
		
		ACCEPTS: float or None
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the antialiasing state for rendering.
		
		ACCEPTS: Boolean or sequence of booleans
	**/
	public function set_antialiased(aa:Dynamic):Dynamic;
	/**
		alias for set_antialiased
	**/
	public function set_antialiaseds(aa:Dynamic):Dynamic;
	/**
		Set the image array from numpy array *A*
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		set the norm limits for image scaling; if *vmin* is a length2
		sequence, interpret it as ``(vmin, vmax)`` which is used to
		support setp
		
		ACCEPTS: a length 2 sequence of floats
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		Set the artist's clip :class:`~matplotlib.transforms.Bbox`.
		
		ACCEPTS: a :class:`matplotlib.transforms.Bbox` instance
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		ACCEPTS: [True | False]
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		  * a :class:`~matplotlib.patches.Patch` (or subclass) instance
		
		  * a :class:`~matplotlib.path.Path` instance, in which case
		     an optional :class:`~matplotlib.transforms.Transform`
		     instance may be provided, which will be applied to the
		     path before using it for clipping.
		
		  * *None*, to remove the clipping path
		
		For efficiency, if the path happens to be an axis-aligned
		rectangle, this method will set the clipping box to the
		corresponding rectangle and set the clipping path to *None*.
		
		ACCEPTS: [ (:class:`~matplotlib.path.Path`,
		:class:`~matplotlib.transforms.Transform`) |
		:class:`~matplotlib.patches.Patch` | None ]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		set the colormap for luminance data
		
		ACCEPTS: a colormap or registered colormap name
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Set both the edgecolor and the facecolor.
		
		ACCEPTS: matplotlib color arg or sequence of rgba tuples
		
		.. seealso::
		
		    :meth:`set_facecolor`, :meth:`set_edgecolor`
		       For setting the edge or face color individually.
	**/
	public function set_color(c:Dynamic):Dynamic;
	/**
		Replace the contains test used by this artist. The new picker
		should be a callable function which determines whether the
		artist is hit by the mouse event::
		
		    hit, props = picker(artist, mouseevent)
		
		If the mouse event is over the artist, return *hit* = *True*
		and *props* is a dictionary of properties you want returned
		with the contains test.
		
		ACCEPTS: a callable function
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		alias for set_linestyle
	**/
	public function set_dashes(ls:Dynamic):Dynamic;
	/**
		Set the edgecolor(s) of the collection. *c* can be a
		matplotlib color spec (all patches have same color), or a
		sequence of specs; if it is a sequence the patches will
		cycle through the sequence.
		
		If *c* is 'face', the edge color will always be the same as
		the face color.  If it is 'none', the patch boundary will not
		be drawn.
		
		ACCEPTS: matplotlib color spec or sequence of specs
	**/
	public function set_edgecolor(c:Dynamic):Dynamic;
	/**
		alias for set_edgecolor
	**/
	public function set_edgecolors(c:Dynamic):Dynamic;
	/**
		Set the facecolor(s) of the collection.  *c* can be a
		matplotlib color spec (all patches have same color), or a
		sequence of specs; if it is a sequence the patches will
		cycle through the sequence.
		
		If *c* is 'none', the patch will not be filled.
		
		ACCEPTS: matplotlib color spec or sequence of specs
	**/
	public function set_facecolor(c:Dynamic):Dynamic;
	/**
		alias for set_facecolor
	**/
	public function set_facecolors(c:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist
		
		ACCEPTS: an id string
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
		
		ACCEPTS: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		ACCEPTS: string or anything printable with '%s' conversion.
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
		
		where ``onoffseq`` is an even length tuple of on and off ink
		in points.
		
		ACCEPTS: ['solid' | 'dashed', 'dashdot', 'dotted' |
		           (offset, on-off-dash-seq) |
		           ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |
		           ``' '`` | ``''``]
		
		Parameters
		----------
		ls : { '-',  '--', '-.', ':'} and more see description
		    The line style.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		alias for set_linestyle
	**/
	public function set_linestyles(ls:Dynamic):Dynamic;
	/**
		Set the linewidth(s) for the collection.  *lw* can be a scalar
		or a sequence; if it is a sequence the patches will cycle
		through the sequence
		
		ACCEPTS: float or sequence of floats
	**/
	public function set_linewidth(lw:Dynamic):Dynamic;
	/**
		alias for set_linewidth
	**/
	public function set_linewidths(lw:Dynamic):Dynamic;
	/**
		alias for set_linewidth
	**/
	public function set_lw(lw:Dynamic):Dynamic;
	/**
		set the normalization instance
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Set how offsets are applied.  If *offset_position* is 'screen'
		(default) the offset is applied after the master transform has
		been applied, that is, the offsets are in screen coordinates.
		If offset_position is 'data', the offset is applied before the
		master transform, i.e., the offsets are in data coordinates.
	**/
	public function set_offset_position(offset_position:Dynamic):Dynamic;
	/**
		Set the offsets for the collection.  *offsets* can be a scalar
		or a sequence.
		
		ACCEPTS: float or sequence of floats
	**/
	public function set_offsets(offsets:Dynamic):Dynamic;
	/**
		set path_effects, which should be a list of instances of
		matplotlib.patheffect._Base class or its derivatives.
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		This allows one to delay initialization of the vertices.
	**/
	public function set_paths(verts:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Set the epsilon for picking used by this artist
		
		*picker* can be one of the following:
		
		  * *None*: picking is disabled for this artist (default)
		
		  * A boolean: if *True* then picking will be enabled and the
		    artist will fire a pick event if the mouse event is over
		    the artist
		
		  * A float: if picker is a number it is interpreted as an
		    epsilon tolerance in points and the artist will fire
		    off an event if it's data is within epsilon of the mouse
		    event.  For some artists like lines and patch collections,
		    the artist may provide additional data to the pick event
		    that is generated, e.g., the indices of the data within
		    epsilon of the pick event
		
		  * A function: if picker is callable, it is a user supplied
		    function which determines whether the artist is hit by the
		    mouse event::
		
		      hit, props = picker(artist, mouseevent)
		
		    to determine the hit test.  if the mouse event is over the
		    artist, return *hit=True* and props is a dictionary of
		    properties you want added to the PickEvent attributes.
		
		ACCEPTS: [None|float|boolean|callable]
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	public function set_pickradius(pr:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
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
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.transforms.Transform` instance
		used by this artist.
		
		ACCEPTS: :class:`~matplotlib.transforms.Transform` instance
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Sets the url for the artist
		
		ACCEPTS: a url string
	**/
	public function set_url(url:Dynamic):Dynamic;
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
		Set the artist's visiblity.
		
		ACCEPTS: [True | False]
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		ACCEPTS: any number
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
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
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		Note: this method assumes the input is well-behaved; it does
		not check for anomalies such as *x* being a masked rgba
		array, or being an integer type other than uint8, or being
		a floating point rgba array with values outside the 0-1 range.
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic):Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		copy properties from other to self
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		If the scalar mappable array is not none, update colors
		from scalar data
	**/
	public function update_scalarmappable():Dynamic;
	static public var zorder : Dynamic;
}