/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver", "Barbs") extern class Barbs {
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
		        
		Plot a 2-D field of barbs.
		
		Call signatures::
		
		  barb(U, V, **kw)
		  barb(U, V, C, **kw)
		  barb(X, Y, U, V, **kw)
		  barb(X, Y, U, V, C, **kw)
		
		Arguments:
		
		  *X*, *Y*:
		    The x and y coordinates of the barb locations
		    (default is head of barb; see *pivot* kwarg)
		
		  *U*, *V*:
		    Give the x and y components of the barb shaft
		
		  *C*:
		    An optional array used to map colors to the barbs
		
		All arguments may be 1-D or 2-D arrays or sequences. If *X* and *Y*
		are absent, they will be generated as a uniform grid.  If *U* and *V*
		are 2-D arrays but *X* and *Y* are 1-D, and if ``len(X)`` and ``len(Y)``
		match the column and row dimensions of *U*, then *X* and *Y* will be
		expanded with :func:`numpy.meshgrid`.
		
		*U*, *V*, *C* may be masked arrays, but masked *X*, *Y* are not
		supported at present.
		
		Keyword arguments:
		
		  *length*:
		    Length of the barb in points; the other parts of the barb
		    are scaled against this.
		    Default is 9
		
		  *pivot*: [ 'tip' | 'middle' ]
		    The part of the arrow that is at the grid point; the arrow rotates
		    about this point, hence the name *pivot*.  Default is 'tip'
		
		  *barbcolor*: [ color | color sequence ]
		    Specifies the color all parts of the barb except any flags.  This
		    parameter is analagous to the *edgecolor* parameter for polygons,
		    which can be used instead. However this parameter will override
		    facecolor.
		
		  *flagcolor*: [ color | color sequence ]
		    Specifies the color of any flags on the barb.  This parameter is
		    analagous to the *facecolor* parameter for polygons, which can be
		    used instead. However this parameter will override facecolor.  If
		    this is not set (and *C* has not either) then *flagcolor* will be
		    set to match *barbcolor* so that the barb has a uniform color. If
		    *C* has been set, *flagcolor* has no effect.
		
		  *sizes*:
		    A dictionary of coefficients specifying the ratio of a given
		    feature to the length of the barb. Only those values one wishes to
		    override need to be included.  These features include:
		
		        - 'spacing' - space between features (flags, full/half barbs)
		
		        - 'height' - height (distance from shaft to top) of a flag or
		          full barb
		
		        - 'width' - width of a flag, twice the width of a full barb
		
		        - 'emptybarb' - radius of the circle used for low magnitudes
		
		  *fill_empty*:
		    A flag on whether the empty barbs (circles) that are drawn should
		    be filled with the flag color.  If they are not filled, they will
		    be drawn such that no color is applied to the center.  Default is
		    False
		
		  *rounding*:
		    A flag to indicate whether the vector magnitude should be rounded
		    when allocating barb components.  If True, the magnitude is
		    rounded to the nearest multiple of the half-barb increment.  If
		    False, the magnitude is simply truncated to the next lowest
		    multiple.  Default is True
		
		  *barb_increments*:
		    A dictionary of increments specifying values to associate with
		    different parts of the barb. Only those values one wishes to
		    override need to be included.
		
		        - 'half' - half barbs (Default is 5)
		
		        - 'full' - full barbs (Default is 10)
		
		        - 'flag' - flags (default is 50)
		
		  *flip_barb*:
		    Either a single boolean flag or an array of booleans.  Single
		    boolean indicates whether the lines and flags should point
		    opposite to normal for all barbs.  An array (which should be the
		    same size as the other data arrays) indicates whether to flip for
		    each individual barb.  Normal behavior is for the barbs and lines
		    to point right (comes from wind barbs having these features point
		    towards low pressure in the Northern Hemisphere.)  Default is
		    False
		
		Barbs are traditionally used in meteorology as a way to plot the speed
		and direction of wind observations, but can technically be used to
		plot any two dimensional vector quantity.  As opposed to arrows, which
		give vector magnitude by the length of the arrow, the barbs give more
		quantitative information about the vector magnitude by putting slanted
		lines or a triangle for various increments in magnitude, as show
		schematically below::
		
		 :     /\    \
		 :    /  \    \
		 :   /    \    \    \
		 :  /      \    \    \
		 : ------------------------------
		
		.. note the double \ at the end of each line to make the figure
		.. render correctly
		
		The largest increment is given by a triangle (or "flag"). After those
		come full lines (barbs). The smallest increment is a half line.  There
		is only, of course, ever at most 1 half line.  If the magnitude is
		small and only needs a single half-line and no full lines or
		triangles, the half-line is offset from the end of the barb so that it
		can be easily distinguished from barbs with a single full line.  The
		magnitude for the barb shown above would nominally be 65, using the
		standard increments of 50, 10, and 5.
		
		linewidths and edgecolors can be used to customize the barb.
		Additional :class:`~matplotlib.collections.PolyCollection` keyword
		arguments:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or antialiaseds: Boolean or sequence of booleans         
		  array: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clim: a length 2 sequence of floats         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  cmap: a colormap or registered colormap name         
		  color: matplotlib color arg or sequence of rgba tuples
		  contains: a callable function         
		  edgecolor or edgecolors: matplotlib color arg or sequence of rgba tuples         
		  facecolor or facecolors: matplotlib color arg or sequence of rgba tuples         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |         (offset, on-off-dash-seq) ]         
		  linewidth or linewidths or lw: float or sequence of floats         
		  lod: [True | False]         
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
	public function ___init__(ax:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
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
	static public var _factor : Dynamic;
	/**
		Find how many of each of the tail pieces is necessary.  Flag
		specifies the increment for a flag, barb for a full barb, and half for
		half a barb. Mag should be the magnitude of a vector (i.e., >= 0).
		
		This returns a tuple of:
		
		    (*number of flags*, *number of barbs*, *half_flag*, *empty_flag*)
		
		*half_flag* is a boolean whether half of a barb is needed,
		since there should only ever be one half on a given
		barb. *empty_flag* flag is an array of flags to easily tell if
		a barb is empty (too low to plot any barbs/flags.
	**/
	public function _find_tails(mag:Dynamic, ?rounding:Dynamic, ?half:Dynamic, ?full:Dynamic, ?flag:Dynamic):Dynamic;
	static public function _get_bool(val:Dynamic):Dynamic;
	static public function _get_value(val:Dynamic):Dynamic;
	/**
		This function actually creates the wind barbs.  *u* and *v*
		are components of the vector in the *x* and *y* directions,
		respectively.
		
		*nflags*, *nbarbs*, and *half_barb*, empty_flag* are,
		*respectively, the number of flags, number of barbs, flag for
		*half a barb, and flag for empty barb, ostensibly obtained
		*from :meth:`_find_tails`.
		
		*length* is the length of the barb staff in points.
		
		*pivot* specifies the point on the barb around which the
		entire barb should be rotated.  Right now, valid options are
		'head' and 'middle'.
		
		*sizes* is a dictionary of coefficients specifying the ratio
		of a given feature to the length of the barb. These features
		include:
		
		    - *spacing*: space between features (flags, full/half
		       barbs)
		
		    - *height*: distance from shaft of top of a flag or full
		       barb
		
		    - *width* - width of a flag, twice the width of a full barb
		
		    - *emptybarb* - radius of the circle used for low
		       magnitudes
		
		*fill_empty* specifies whether the circle representing an
		empty barb should be filled or not (this changes the drawing
		of the polygon).
		
		*flip* is a flag indicating whether the features should be flipped to
		the other side of the barb (useful for winds in the southern
		hemisphere.
		
		This function returns list of arrays of vertices, defining a polygon
		for each of the wind barbs.  These polygons have been rotated to
		properly align with the vector direction.
	**/
	public function _make_barbs(u:Dynamic, v:Dynamic, nflags:Dynamic, nbarbs:Dynamic, half_barb:Dynamic, empty_flag:Dynamic, length:Dynamic, pivot:Dynamic, sizes:Dynamic, fill_empty:Dynamic, flip:Dynamic):Dynamic;
	static public var _offsets : Dynamic;
	/**
		Point prep for drawing and hit testing
	**/
	public function _prepare_points():Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
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
	static public var barbs_doc : Dynamic;
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
	public function draw(renderer:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
		resides in, or *None*
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
	public function get_sizes():Dynamic;
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
	/**
		Remove the artist from the figure if possible.  The effect
		will not be visible until the figure is redrawn, e.g., with
		:meth:`matplotlib.axes.Axes.draw_idle`.  Call
		:meth:`matplotlib.axes.Axes.relim` to update the axes limits
		if desired.
		
		Note: :meth:`~matplotlib.axes.Axes.relim` will not see
		collections even if the collection was added to axes with
		*autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
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
		A tkstyle set command, pass *kwargs* to set properties
	**/
	public function set(kwargs:Dynamic):Dynamic;
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
		.. deprecated:: 1.3
		    The set_colorbar function was deprecated in version 1.3. Use the colorbar attribute instead.
		
		set the colorbar and axes instances associated with mappable
	**/
	public function set_colorbar(im:Dynamic, ax:Dynamic):Dynamic;
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
		matplotlib color arg (all patches have same color), or a
		sequence of rgba tuples; if it is a sequence the patches will
		cycle through the sequence.
		
		If *c* is 'face', the edge color will always be the same as
		the face color.  If it is 'none', the patch boundary will not
		be drawn.
		
		ACCEPTS: matplotlib color arg or sequence of rgba tuples
	**/
	public function set_edgecolor(c:Dynamic):Dynamic;
	/**
		alias for set_edgecolor
	**/
	public function set_edgecolors(c:Dynamic):Dynamic;
	/**
		Set the facecolor(s) of the collection.  *c* can be a
		matplotlib color arg (all patches have same color), or a
		sequence of rgba tuples; if it is a sequence the patches will
		cycle through the sequence.
		
		If *c* is 'none', the patch will not be filled.
		
		ACCEPTS: matplotlib color arg or sequence of rgba tuples
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
		
		ACCEPTS: ['solid' | 'dashed', 'dashdot', 'dotted' |
		(offset, on-off-dash-seq) ]
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
		Set Level of Detail on or off.  If on, the artists may examine
		things like the pixel width of the axes and draw a subset of
		their contents accordingly
		
		ACCEPTS: [True | False]
	**/
	public function set_lod(on:Dynamic):Dynamic;
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
	public function set_offsets(xy:Dynamic):Dynamic;
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
		Sets the the sketch parameters.
		
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