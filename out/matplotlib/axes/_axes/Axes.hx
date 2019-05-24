/* This file is generated, do not edit! */
package matplotlib.axes._axes;
@:pythonImport("matplotlib.axes._axes", "Axes") extern class Axes {
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
		Build an axes in a figure.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The axes is build in the `.Figure` *fig*.
		
		rect : [left, bottom, width, height]
		    The axes is build in the rectangle *rect*. *rect* is in
		    `.Figure` coordinates.
		
		sharex, sharey : `~.axes.Axes`, optional
		    The x or y `~.matplotlib.axis` is shared with the x or
		    y axis in the input `~.axes.Axes`.
		
		frameon : bool, optional
		    True means that the axes frame is visible.
		
		**kwargs
		    Other optional keyword arguments:
		      adjustable: {'box', 'datalim'}
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  anchor: 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		  animated: bool
		  aspect: {'auto', 'equal'} or num
		  autoscale_on: bool
		  autoscalex_on: bool
		  autoscaley_on: bool
		  axes_locator: Callable[[Axes, Renderer], Bbox]
		  axisbelow: bool or 'line'
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  contains: callable
		  facecolor: color
		  fc: color
		  figure: `.Figure`
		  frame_on: bool
		  gid: str
		  in_layout: bool
		  label: object
		  navigate: bool
		  navigate_mode: unknown
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		  rasterization_zorder: float or None
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  title: str
		  transform: `.Transform`
		  url: str
		  visible: bool
		  xbound: unknown
		  xlabel: str
		  xlim: (left: float, right: float)
		  xmargin: float greater than -0.5
		  xscale: {"linear", "log", "symlog", "logit", ...}
		  xticklabels: List[str]
		  xticks: list
		  ybound: unknown
		  ylabel: str
		  ylim: (bottom: float, top: float)
		  ymargin: float greater than -0.5
		  yscale: {"linear", "log", "symlog", "logit", ...}
		  yticklabels: List[str]
		  yticks: list
		  zorder: float
		
		Returns
		-------
		axes : `~.axes.Axes`
		    The new `~.axes.Axes` object.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, rect:Dynamic, ?facecolor:Dynamic, ?frameon:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?label:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Build an axes in a figure.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The axes is build in the `.Figure` *fig*.
		
		rect : [left, bottom, width, height]
		    The axes is build in the rectangle *rect*. *rect* is in
		    `.Figure` coordinates.
		
		sharex, sharey : `~.axes.Axes`, optional
		    The x or y `~.matplotlib.axis` is shared with the x or
		    y axis in the input `~.axes.Axes`.
		
		frameon : bool, optional
		    True means that the axes frame is visible.
		
		**kwargs
		    Other optional keyword arguments:
		      adjustable: {'box', 'datalim'}
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  anchor: 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		  animated: bool
		  aspect: {'auto', 'equal'} or num
		  autoscale_on: bool
		  autoscalex_on: bool
		  autoscaley_on: bool
		  axes_locator: Callable[[Axes, Renderer], Bbox]
		  axisbelow: bool or 'line'
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  contains: callable
		  facecolor: color
		  fc: color
		  figure: `.Figure`
		  frame_on: bool
		  gid: str
		  in_layout: bool
		  label: object
		  navigate: bool
		  navigate_mode: unknown
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		  rasterization_zorder: float or None
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  title: str
		  transform: `.Transform`
		  url: str
		  visible: bool
		  xbound: unknown
		  xlabel: str
		  xlim: (left: float, right: float)
		  xmargin: float greater than -0.5
		  xscale: {"linear", "log", "symlog", "logit", ...}
		  xticklabels: List[str]
		  xticks: list
		  ybound: unknown
		  ylabel: str
		  ylim: (bottom: float, top: float)
		  ymargin: float greater than -0.5
		  yscale: {"linear", "log", "symlog", "logit", ...}
		  yticklabels: List[str]
		  yticks: list
		  zorder: float
		
		Returns
		-------
		axes : `~.axes.Axes`
		    The new `~.axes.Axes` object.
	**/
	public function new(fig:Dynamic, rect:Dynamic, ?facecolor:Dynamic, ?frameon:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?label:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	/**
		Add a `~.Text` to the axes' texts; return the text.
	**/
	public function _add_text(txt:Dynamic):Dynamic;
	/**
		Small helper to do logic of width conversion flexibly.
		
		*dx* and *x0* have units, but *xconv* has already been converted
		to unitless (and is an ndarray).  This allows the *dx* to have units
		that are different from *x0*, but are still accepted by the
		``__add__`` operator of *x0*.
	**/
	static public function _convert_dx(dx:Dynamic, x0:Dynamic, xconv:Dynamic, convert:Dynamic):Dynamic;
	/**
		Helper for :func:`~matplotlib.pyplot.gci`;
		do not use elsewhere.
	**/
	public function _gci():Dynamic;
	/**
		Returns
		-------
		Patch
		    The patch used to draw the background of the axes.  It is also used
		    as the clipping path for any data elements on the axes.
		
		    In the standard axes, this is a rectangle, but in other projections
		    it may not be.
		
		Notes
		-----
		Intended to be overridden by new projection types.
	**/
	public function _gen_axes_patch():Dynamic;
	/**
		Returns
		-------
		dict
		    Mapping of spine names to `Line2D` or `Patch` instances that are
		    used to draw axes spines.
		
		    In the standard axes, spines are single line segments, but in other
		    projections they may not be.
		
		Notes
		-----
		Intended to be overridden by new projection types.
	**/
	public function _gen_axes_spines(?locations:Dynamic, ?offset:Dynamic, ?units:Dynamic):Dynamic;
	public function _get_axis_list():Dynamic;
	/**
		Save information required to reproduce the current view.
		
		Called before a view is changed, such as during a pan or zoom
		initiated by the user. You may return any information you deem
		necessary to describe the view.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation saves the view limits. You *must* implement
		    :meth:`_set_view` if you implement this method.
	**/
	public function _get_view():Dynamic;
	/**
		move this out of __init__ because non-separable axes don't use it
	**/
	public function _init_axis():Dynamic;
	/**
		Make a twinx axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(?kl:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callback for processing changes to axis units.
		
		Currently forces updates of data limits and view limits.
	**/
	public function _on_units_changed(?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		Helper function to process color related arguments of `.Axes.scatter`.
		
		Argument precedence for facecolors:
		
		- c (if not None)
		- kwargs['facecolors']
		- kwargs['facecolor']
		- kwargs['color'] (==kwcolor)
		- 'b' if in classic mode else the result of ``get_next_color_func()``
		
		Argument precedence for edgecolors:
		
		- edgecolors (is an explicit kw argument in scatter())
		- kwargs['edgecolor']
		- kwargs['color'] (==kwcolor)
		- 'face' if not in classic mode else None
		
		Parameters
		----------
		c : color or sequence or sequence of color or None
		    See argument description of `.Axes.scatter`.
		edgecolors : color or sequence of color or {'face', 'none'} or None
		    See argument description of `.Axes.scatter`.
		kwargs : dict
		    Additional kwargs. If these keys exist, we pop and process them:
		    'facecolors', 'facecolor', 'edgecolor', 'color'
		    Note: The dict is modified by this function.
		xshape, yshape : tuple of int
		    The shape of the x and y arrays passed to `.Axes.scatter`.
		get_next_color_func : callable
		    A callable that returns a color. This color is used as facecolor
		    if no other color is provided.
		
		    Note, that this is a function rather than a fixed color value to
		    support conditional evaluation of the next color.  As of the
		    current implementation obtaining the next color from the
		    property cycle advances the cycle. This must only happen if we
		    actually use the color, which will only be decided within this
		    method.
		
		Returns
		-------
		c
		    The input *c* if it was not *None*, else some color specification
		    derived from the other inputs or defaults.
		colors : array(N, 4) or None
		    The facecolors as RGBA values or *None* if a colormap is used.
		edgecolors
		    The edgecolor specification.
	**/
	static public function _parse_scatter_color_args(c:Dynamic, edgecolors:Dynamic, kwargs:Dynamic, xshape:Dynamic, yshape:Dynamic, get_next_color_func:Dynamic):Dynamic;
	static public function _pcolorargs(funcname:Dynamic, ?args:python.VarArgs<Dynamic>, ?allmatch:Dynamic):Dynamic;
	/**
		Look for unit *kwargs* and update the axis instances as necessary
	**/
	public function _process_unit_info(?xdata:Dynamic, ?ydata:Dynamic, ?kwargs:Dynamic):Dynamic;
	static public var _prop_order : Dynamic;
	public function _quiver_units(args:Dynamic, kw:Dynamic):Dynamic;
	public function _remove_legend(legend:Dynamic):Dynamic;
	/**
		Set the current image.
		
		This image will be the target of colormap functions like
		`~.pyplot.viridis`, and other functions such as `~.pyplot.clim`.  The
		current image is an attribute of the current axes.
	**/
	public function _sci(im:Dynamic):Dynamic;
	/**
		set the boilerplate props for artists added to axes
	**/
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Set the *_xaxis_transform*, *_yaxis_transform*, *transScale*,
		*transData*, *transLimits* and *transAxes* transformations.
		
		.. note::
		
		    This method is primarily used by rectilinear projections of the
		    `~matplotlib.axes.Axes` class, and is meant to be overridden by
		    new kinds of projection axes that need different transformations
		    and limits. (See `~matplotlib.projections.polar.PolarAxes` for an
		    example.)
	**/
	public function _set_lim_and_transforms():Dynamic;
	/**
		private version of set_position.  Call this internally
		to get the same functionality of `get_position`, but not
		to take the axis out of the constrained_layout
		hierarchy.
	**/
	public function _set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set the offset for the title either from rcParams['axes.titlepad']
		or from set_title kwarg ``pad``.
	**/
	public function _set_title_offset_trans(title_offset_points:Dynamic):Dynamic;
	/**
		Apply a previously saved view.
		
		Called when restoring a view, such as with the navigation buttons.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation restores the view limits. You *must*
		    implement :meth:`_get_view` if you implement this method.
	**/
	public function _set_view(view:Dynamic):Dynamic;
	/**
		Update view from a selection bbox.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation sets the view limits to the bbox directly.
		
		Parameters
		----------
		
		bbox : 4-tuple or 3 tuple
		    * If bbox is a 4 tuple, it is the selected bounding box limits,
		        in *display* coordinates.
		    * If bbox is a 3 tuple, it is an (xp, yp, scl) triple, where
		        (xp,yp) is the center of zooming and scl the scale factor to
		        zoom by.
		
		direction : str
		    The direction to apply the bounding box.
		        * `'in'` - The bounding box describes the view directly, i.e.,
		                   it zooms in.
		        * `'out'` - The bounding box describes the size to make the
		                    existing view, i.e., it zooms out.
		
		mode : str or None
		    The selection mode, whether to apply the bounding box in only the
		    `'x'` direction, `'y'` direction or both (`None`).
		
		twinx : bool
		    Whether this axis is twinned in the *x*-direction.
		
		twiny : bool
		    Whether this axis is twinned in the *y*-direction.
	**/
	public function _set_view_from_bbox(bbox:Dynamic, ?direction:Dynamic, ?mode:Dynamic, ?twinx:Dynamic, ?twiny:Dynamic):Dynamic;
	static public var _shared_x_axes : Dynamic;
	static public var _shared_y_axes : Dynamic;
	static public var _twinned_axes : Dynamic;
	public function _update_image_limits(image:Dynamic):Dynamic;
	/**
		Figures out the data limit of the given line, updating self.dataLim.
	**/
	public function _update_line_limits(line:Dynamic):Dynamic;
	/**
		update the data limits for patch *p*
	**/
	public function _update_patch_limits(patch:Dynamic):Dynamic;
	/**
		Update the title position based on the bounding box enclosing
		all the ticklabels and x-axis spine and xlabel...
	**/
	public function _update_title_position(renderer:Dynamic):Dynamic;
	public function _update_transScale():Dynamic;
	/**
		Raise ValueError if converted limits are non-finite.
		
		Note that this function also accepts None as a limit argument.
		
		Returns
		-------
		The limit value after call to convert(), or None if limit is None.
	**/
	public function _validate_converted_limits(limit:Dynamic, convert:Dynamic):Dynamic;
	/**
		Plot the autocorrelation of *x*.
		
		Parameters
		----------
		x : array-like
		
		detrend : callable, optional, default: `mlab.detrend_none`
		    *x* is detrended by the *detrend* callable. This must be a
		    function ``x = detrend(x)`` accepting and returning an
		    `numpy.array`. Default is no normalization.
		
		normed : bool, optional, default: True
		    If ``True``, input vectors are normalised to unit length.
		
		usevlines : bool, optional, default: True
		    Determines the plot style.
		
		    If ``True``, vertical lines are plotted from 0 to the acorr value
		    using `Axes.vlines`. Additionally, a horizontal line is plotted
		    at y=0 using `Axes.axhline`.
		
		    If ``False``, markers are plotted at the acorr values using
		    `Axes.plot`.
		
		maxlags : int, optional, default: 10
		    Number of lags to show. If ``None``, will return all
		    ``2 * len(x) - 1`` lags.
		
		Returns
		-------
		lags : array (length ``2*maxlags+1``)
		    The lag vector.
		c : array  (length ``2*maxlags+1``)
		    The auto correlation vector.
		line : `.LineCollection` or `.Line2D`
		    `.Artist` added to the axes of the correlation:
		
		    - `.LineCollection` if *usevlines* is True.
		    - `.Line2D` if *usevlines* is False.
		b : `.Line2D` or None
		    Horizontal line at 0 if *usevlines* is True
		    None *usevlines* is False.
		
		Other Parameters
		----------------
		linestyle : `.Line2D` property, optional
		    The linestyle for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		marker : str, optional, default: 'o'
		    The marker for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		Notes
		-----
		The cross correlation is performed with :func:`numpy.correlate` with
		``mode = "full"``.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function acorr(x:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an `~.Artist` to the axes, and return the artist.
		
		Use `add_artist` only for artists for which there is no dedicated
		"add" method; and if necessary, use a method such as `update_datalim`
		to manually update the dataLim if the artist is to be included in
		autoscaling.
		
		If no ``transform`` has been specified when creating the artist (e.g.
		``artist.get_transform() == None``) then the transform is set to
		``ax.transData``.
	**/
	public function add_artist(a:Dynamic):Dynamic;
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
		Add an `~.AxesBase` to the axes' children; return the child axes.
		
		This is the lowlevel version.  See `.axes.Axes.inset_axes`.
	**/
	public function add_child_axes(ax:Dynamic):Dynamic;
	/**
		Add a `~.Collection` to the axes' collections; return the collection.
	**/
	public function add_collection(collection:Dynamic, ?autolim:Dynamic):Dynamic;
	/**
		Add a `~.Container` to the axes' containers; return the container.
	**/
	public function add_container(container:Dynamic):Dynamic;
	/**
		Add an `~.AxesImage` to the axes' images; return the image.
	**/
	public function add_image(image:Dynamic):Dynamic;
	/**
		Add a `~.Line2D` to the axes' lines; return the line.
	**/
	public function add_line(line:Dynamic):Dynamic;
	/**
		Add a `~.Patch` to the axes' patches; return the patch.
	**/
	public function add_patch(p:Dynamic):Dynamic;
	/**
		Add a `~.Table` to the axes' tables; return the table.
	**/
	public function add_table(tab:Dynamic):Dynamic;
	public var aname : Dynamic;
	/**
		Plot the angle spectrum.
		
		Compute the angle spectrum (wrapped phase spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the angle spectrum in radians (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See Also
		--------
		:func:`magnitude_spectrum`
		    :func:`angle_spectrum` plots the magnitudes of the corresponding
		    frequencies.
		
		:func:`phase_spectrum`
		    :func:`phase_spectrum` plots the unwrapped version of this
		    function.
		
		:func:`specgram`
		    :func:`specgram` can plot the angle spectrum of segments within the
		    signal in a colormap.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function angle_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Annotate the point *xy* with text *text*.
		
		In the simplest form, the text is placed at *xy*.
		
		Optionally, the text can be displayed in another position *xytext*.
		An arrow pointing from the text to the annotated point *xy* can then
		be added by defining *arrowprops*.
		
		Parameters
		----------
		text : str
		    The text of the annotation.  *s* is a deprecated synonym for this
		    parameter.
		
		xy : (float, float)
		    The point *(x,y)* to annotate.
		
		xytext : (float, float), optional
		    The position *(x,y)* to place the text at.
		    If *None*, defaults to *xy*.
		
		xycoords : str, `.Artist`, `.Transform`, callable or tuple, optional
		
		    The coordinate system that *xy* is given in. The following types
		    of values are supported:
		
		    - One of the following strings:
		
		      =================   =============================================
		      Value               Description
		      =================   =============================================
		      'figure points'     Points from the lower left of the figure
		      'figure pixels'     Pixels from the lower left of the figure
		      'figure fraction'   Fraction of figure from lower left
		      'axes points'       Points from lower left corner of axes
		      'axes pixels'       Pixels from lower left corner of axes
		      'axes fraction'     Fraction of axes from lower left
		      'data'              Use the coordinate system of the object being
		                          annotated (default)
		      'polar'             *(theta,r)* if not native 'data' coordinates
		      =================   =============================================
		
		    - An `.Artist`: *xy* is interpreted as a fraction of the artists
		      `~matplotlib.transforms.Bbox`. E.g. *(0, 0)* would be the lower
		      left corner of the bounding box and *(0.5, 1)* would be the
		      center top of the bounding box.
		
		    - A `.Transform` to transform *xy* to screen coordinates.
		
		    - A function with one of the following signatures::
		
		        def transform(renderer) -> Bbox
		        def transform(renderer) -> Transform
		
		      where *renderer* is a `.RendererBase` subclass.
		
		      The result of the function is interpreted like the `.Artist` and
		      `.Transform` cases above.
		
		    - A tuple *(xcoords, ycoords)* specifying separate coordinate
		      systems for *x* and *y*. *xcoords* and *ycoords* must each be
		      of one of the above described types.
		
		    See :ref:`plotting-guide-annotation` for more details.
		
		    Defaults to 'data'.
		
		textcoords : str, `.Artist`, `.Transform`, callable or tuple, optional
		    The coordinate system that *xytext* is given in.
		
		    All *xycoords* values are valid as well as the following
		    strings:
		
		    =================   =========================================
		    Value               Description
		    =================   =========================================
		    'offset points'     Offset (in points) from the *xy* value
		    'offset pixels'     Offset (in pixels) from the *xy* value
		    =================   =========================================
		
		    Defaults to the value of *xycoords*, i.e. use the same coordinate
		    system for annotation point and text position.
		
		arrowprops : dict, optional
		    The properties used to draw a
		    `~matplotlib.patches.FancyArrowPatch` arrow between the
		    positions *xy* and *xytext*.
		
		    If *arrowprops* does not contain the key 'arrowstyle' the
		    allowed keys are:
		
		    ==========   ======================================================
		    Key          Description
		    ==========   ======================================================
		    width        The width of the arrow in points
		    headwidth    The width of the base of the arrow head in points
		    headlength   The length of the arrow head in points
		    shrink       Fraction of total length to shrink from both ends
		    ?            Any key to :class:`matplotlib.patches.FancyArrowPatch`
		    ==========   ======================================================
		
		    If *arrowprops* contains the key 'arrowstyle' the
		    above keys are forbidden.  The allowed values of
		    ``'arrowstyle'`` are:
		
		    ============   =============================================
		    Name           Attrs
		    ============   =============================================
		    ``'-'``        None
		    ``'->'``       head_length=0.4,head_width=0.2
		    ``'-['``       widthB=1.0,lengthB=0.2,angleB=None
		    ``'|-|'``      widthA=1.0,widthB=1.0
		    ``'-|>'``      head_length=0.4,head_width=0.2
		    ``'<-'``       head_length=0.4,head_width=0.2
		    ``'<->'``      head_length=0.4,head_width=0.2
		    ``'<|-'``      head_length=0.4,head_width=0.2
		    ``'<|-|>'``    head_length=0.4,head_width=0.2
		    ``'fancy'``    head_length=0.4,head_width=0.4,tail_width=0.4
		    ``'simple'``   head_length=0.5,head_width=0.5,tail_width=0.2
		    ``'wedge'``    tail_width=0.3,shrink_factor=0.5
		    ============   =============================================
		
		    Valid keys for `~matplotlib.patches.FancyArrowPatch` are:
		
		    ===============  ==================================================
		    Key              Description
		    ===============  ==================================================
		    arrowstyle       the arrow style
		    connectionstyle  the connection style
		    relpos           default is (0.5, 0.5)
		    patchA           default is bounding box of the text
		    patchB           default is None
		    shrinkA          default is 2 points
		    shrinkB          default is 2 points
		    mutation_scale   default is text size (in points)
		    mutation_aspect  default is 1.
		    ?                any key for :class:`matplotlib.patches.PathPatch`
		    ===============  ==================================================
		
		    Defaults to None, i.e. no arrow is drawn.
		
		annotation_clip : bool or None, optional
		    Whether to draw the annotation when the annotation point *xy* is
		    outside the axes area.
		
		    - If *True*, the annotation will only be drawn when *xy* is
		      within the axes.
		    - If *False*, the annotation will always be drawn.
		    - If *None*, the annotation will only be drawn when *xy* is
		      within the axes and *xycoords* is 'data'.
		
		    Defaults to *None*.
		
		**kwargs
		    Additional kwargs are passed to `~matplotlib.text.Text`.
		
		Returns
		-------
		annotation : `.Annotation`
		
		See Also
		--------
		:ref:`plotting-guide-annotation`.
	**/
	public function annotate(s:Dynamic, xy:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust the Axes for a specified data aspect ratio.
		
		Depending on `.get_adjustable` this will modify either the Axes box
		(position) or the view limits. In the former case, `.get_anchor`
		will affect the position.
		
		Notes
		-----
		This is called automatically when each Axes is drawn.  You may need
		to call it yourself if you need to update the Axes position and/or
		view limits before the Figure is drawn.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect ratio handling.
		matplotlib.axes.Axes.set_adjustable
		    defining the parameter to adjust in order to meet the required
		    aspect.
		matplotlib.axes.Axes.set_anchor
		    defining the position in case of extra space.
	**/
	public function apply_aspect(?position:Dynamic):Dynamic;
	/**
		Add an arrow to the axes.
		
		This draws an arrow from ``(x, y)`` to ``(x+dx, y+dy)``.
		
		Parameters
		----------
		x, y : float
		    The x and y coordinates of the arrow base.
		dx, dy : float
		    The length of the arrow along x and y direction.
		
		Returns
		-------
		arrow : `.FancyArrow`
		    The created `.FancyArrow` object.
		
		Other Parameters
		----------------
		**kwargs
		    Optional kwargs (inherited from `.FancyArrow` patch) control the
		    arrow construction and properties:
		
		Constructor arguments
		  *width*: float (default: 0.001)
		    width of full arrow tail
		
		  *length_includes_head*: bool (default: False)
		    True if head is to be counted in calculating the length.
		
		  *head_width*: float or None (default: 3*width)
		    total width of the full arrow head
		
		  *head_length*: float or None (default: 1.5 * head_width)
		    length of arrow head
		
		  *shape*: ['full', 'left', 'right'] (default: 'full')
		    draw the left-half, right-half, or full arrow
		
		  *overhang*: float (default: 0)
		    fraction that the arrow is swept back (0 overhang means
		    triangular shape). Can be negative or greater than one.
		
		  *head_starts_at_zero*: bool (default: False)
		    if True, the head starts being drawn at coordinate 0
		    instead of ending at coordinate 0.
		
		Other valid kwargs (inherited from :class:`Patch`) are:
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		Notes
		-----
		The resulting arrow is affected by the axes aspect ratio and limits.
		This may produce an arrow whose head is not square with its stem. To
		create an arrow whose head is square with its stem,
		use :meth:`annotate` for example:
		
		>>> ax.annotate("", xy=(0.5, 0.5), xytext=(0, 0),
		...             arrowprops=dict(arrowstyle="->"))
	**/
	public function arrow(x:Dynamic, y:Dynamic, dx:Dynamic, dy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Autoscale the axis view to the data (toggle).
		
		Convenience method for simple axis view autoscaling.
		It turns autoscaling on or off, and then,
		if autoscaling for either axis is on, it performs
		the autoscaling on the specified axis or axes.
		
		Parameters
		----------
		enable : bool or None, optional
		    True (default) turns autoscaling on, False turns it off.
		    None leaves the autoscaling state unchanged.
		
		axis : {'both', 'x', 'y'}, optional
		    which axis to operate on; default is 'both'
		
		tight : bool or None, optional
		    If True, set view limits to data limits;
		    if False, let the locator and margins expand the view limits;
		    if None, use tight scaling if the only artist is an image,
		    otherwise treat *tight* as False.
		    The *tight* setting is retained for future autoscaling
		    until it is explicitly changed.
	**/
	public function autoscale(?enable:Dynamic, ?axis:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Autoscale the view limits using the data limits.
		
		You can selectively autoscale only a single axis, e.g., the xaxis by
		setting *scaley* to *False*.  The autoscaling preserves any
		axis direction reversal that has already been done.
		
		If *tight* is *False*, the axis major locator will be used
		to expand the view limits if rcParams['axes.autolimit_mode']
		is 'round_numbers'.  Note that any margins that are in effect
		will be applied first, regardless of whether *tight* is
		*True* or *False*.  Specifying *tight* as *True* or *False*
		saves the setting as a private attribute of the Axes; specifying
		it as *None* (the default) applies the previously saved value.
		
		The data limits are not updated automatically when artist data are
		changed after the artist has been added to an Axes instance.  In that
		case, use :meth:`matplotlib.axes.Axes.relim` prior to calling
		autoscale_view.
	**/
	public function autoscale_view(?tight:Dynamic, ?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Add a horizontal line across the axis.
		
		Parameters
		----------
		y : scalar, optional, default: 0
		    y position in data coordinates of the horizontal line.
		
		xmin : scalar, optional, default: 0
		    Should be between 0 and 1, 0 being the far left of the plot, 1 the
		    far right of the plot.
		
		xmax : scalar, optional, default: 1
		    Should be between 0 and 1, 0 being the far left of the plot, 1 the
		    far right of the plot.
		
		Returns
		-------
		line : :class:`~matplotlib.lines.Line2D`
		
		Other Parameters
		----------------
		**kwargs
		    Valid kwargs are :class:`~matplotlib.lines.Line2D` properties,
		    with the exception of 'transform':
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See also
		--------
		hlines : Add horizontal lines in data coordinates.
		axhspan : Add a horizontal span (rectangle) across the axis.
		
		Examples
		--------
		
		* draw a thick red hline at 'y' = 0 that spans the xrange::
		
		    >>> axhline(linewidth=4, color='r')
		
		* draw a default hline at 'y' = 1 that spans the xrange::
		
		    >>> axhline(y=1)
		
		* draw a default hline at 'y' = .5 that spans the middle half of
		  the xrange::
		
		    >>> axhline(y=.5, xmin=0.25, xmax=0.75)
	**/
	public function axhline(?y:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a horizontal span (rectangle) across the axis.
		
		Draw a horizontal span (rectangle) from *ymin* to *ymax*.
		With the default values of *xmin* = 0 and *xmax* = 1, this
		always spans the xrange, regardless of the xlim settings, even
		if you change them, e.g., with the :meth:`set_xlim` command.
		That is, the horizontal extent is in axes coords: 0=left,
		0.5=middle, 1.0=right but the *y* location is in data
		coordinates.
		
		Parameters
		----------
		ymin : float
		       Lower limit of the horizontal span in data units.
		ymax : float
		       Upper limit of the horizontal span in data units.
		xmin : float, optional, default: 0
		       Lower limit of the vertical span in axes (relative
		       0-1) units.
		xmax : float, optional, default: 1
		       Upper limit of the vertical span in axes (relative
		       0-1) units.
		
		Returns
		-------
		Polygon : `~matplotlib.patches.Polygon`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.patches.Polygon` properties.
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		See Also
		--------
		axvspan : Add a vertical span across the axes.
	**/
	public function axhspan(ymin:Dynamic, ymax:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convenience method to get or set some axis properties.
		
		Call signatures::
		
		  xmin, xmax, ymin, ymax = axis()
		  xmin, xmax, ymin, ymax = axis([xmin, xmax, ymin, ymax])
		  xmin, xmax, ymin, ymax = axis(option)
		  xmin, xmax, ymin, ymax = axis(**kwargs)
		
		Parameters
		----------
		xmin, xmax, ymin, ymax : float, optional
		    The axis limits to be set. Either none or all of the limits must
		    be given.
		
		option : bool or str
		    If a bool, turns axis lines and labels on or off. If a string,
		    possible values are:
		
		    ======== ==========================================================
		    Value    Description
		    ======== ==========================================================
		    'on'     Turn on axis lines and labels. Same as ``True``.
		    'off'    Turn off axis lines and labels. Same as ``False``.
		    'equal'  Set equal scaling (i.e., make circles circular) by
		             changing axis limits.
		    'scaled' Set equal scaling (i.e., make circles circular) by
		             changing dimensions of the plot box.
		    'tight'  Set limits just large enough to show all data.
		    'auto'   Automatic scaling (fill plot box with data).
		    'normal' Same as 'auto'; deprecated.
		    'image'  'scaled' with axis limits equal to data limits.
		    'square' Square plot; similar to 'scaled', but initially forcing
		             ``xmax-xmin = ymax-ymin``.
		    ======== ==========================================================
		
		emit : bool, optional, default *True*
		    Whether observers are notified of the axis limit change.
		    This option is passed on to `~.Axes.set_xlim` and
		    `~.Axes.set_ylim`.
		
		Returns
		-------
		xmin, xmax, ymin, ymax : float
		    The axis limits.
		
		See also
		--------
		matplotlib.axes.Axes.set_xlim
		matplotlib.axes.Axes.set_ylim
	**/
	public function axis(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
	/**
		Add a vertical line across the axes.
		
		Parameters
		----------
		x : scalar, optional, default: 0
		    x position in data coordinates of the vertical line.
		
		ymin : scalar, optional, default: 0
		    Should be between 0 and 1, 0 being the bottom of the plot, 1 the
		    top of the plot.
		
		ymax : scalar, optional, default: 1
		    Should be between 0 and 1, 0 being the bottom of the plot, 1 the
		    top of the plot.
		
		Returns
		-------
		line : :class:`~matplotlib.lines.Line2D`
		
		Other Parameters
		----------------
		**kwargs
		    Valid kwargs are :class:`~matplotlib.lines.Line2D` properties,
		    with the exception of 'transform':
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		Examples
		--------
		* draw a thick red vline at *x* = 0 that spans the yrange::
		
		    >>> axvline(linewidth=4, color='r')
		
		* draw a default vline at *x* = 1 that spans the yrange::
		
		    >>> axvline(x=1)
		
		* draw a default vline at *x* = .5 that spans the middle half of
		  the yrange::
		
		    >>> axvline(x=.5, ymin=0.25, ymax=0.75)
		
		See also
		--------
		vlines : Add vertical lines in data coordinates.
		axvspan : Add a vertical span (rectangle) across the axis.
	**/
	public function axvline(?x:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a vertical span (rectangle) across the axes.
		
		Draw a vertical span (rectangle) from `xmin` to `xmax`.  With
		the default values of `ymin` = 0 and `ymax` = 1. This always
		spans the yrange, regardless of the ylim settings, even if you
		change them, e.g., with the :meth:`set_ylim` command.  That is,
		the vertical extent is in axes coords: 0=bottom, 0.5=middle,
		1.0=top but the x location is in data coordinates.
		
		Parameters
		----------
		xmin : scalar
		    Number indicating the first X-axis coordinate of the vertical
		    span rectangle in data units.
		xmax : scalar
		    Number indicating the second X-axis coordinate of the vertical
		    span rectangle in data units.
		ymin : scalar, optional
		    Number indicating the first Y-axis coordinate of the vertical
		    span rectangle in relative Y-axis units (0-1). Default to 0.
		ymax : scalar, optional
		    Number indicating the second Y-axis coordinate of the vertical
		    span rectangle in relative Y-axis units (0-1). Default to 1.
		
		Returns
		-------
		rectangle : matplotlib.patches.Polygon
		    Vertical span (rectangle) from (xmin, ymin) to (xmax, ymax).
		
		Other Parameters
		----------------
		**kwargs
		    Optional parameters are properties of the class
		    matplotlib.patches.Polygon.
		
		See Also
		--------
		axhspan : Add a horizontal span across the axes.
		
		Examples
		--------
		Draw a vertical, green, translucent rectangle from x = 1.25 to
		x = 1.55 that spans the yrange of the axes.
		
		>>> axvspan(1.25, 1.55, facecolor='g', alpha=0.5)
	**/
	public function axvspan(xmin:Dynamic, xmax:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a bar plot.
		
		The bars are positioned at *x* with the given *align*\ment. Their
		dimensions are given by *width* and *height*. The vertical baseline
		is *bottom* (default 0).
		
		Each of *x*, *height*, *width*, and *bottom* may either be a scalar
		applying to all bars, or it may be a sequence of length N providing a
		separate value for each bar.
		
		Parameters
		----------
		x : sequence of scalars
		    The x coordinates of the bars. See also *align* for the
		    alignment of the bars to the coordinates.
		
		height : scalar or sequence of scalars
		    The height(s) of the bars.
		
		width : scalar or array-like, optional
		    The width(s) of the bars (default: 0.8).
		
		bottom : scalar or array-like, optional
		    The y coordinate(s) of the bars bases (default: 0).
		
		align : {'center', 'edge'}, optional, default: 'center'
		    Alignment of the bars to the *x* coordinates:
		
		    - 'center': Center the base on the *x* positions.
		    - 'edge': Align the left edges of the bars with the *x* positions.
		
		    To align the bars on the right edge pass a negative *width* and
		    ``align='edge'``.
		
		Returns
		-------
		container : `.BarContainer`
		    Container with all the bars and optionally errorbars.
		
		Other Parameters
		----------------
		color : scalar or array-like, optional
		    The colors of the bar faces.
		
		edgecolor : scalar or array-like, optional
		    The colors of the bar edges.
		
		linewidth : scalar or array-like, optional
		    Width of the bar edge(s). If 0, don't draw edges.
		
		tick_label : string or array-like, optional
		    The tick labels of the bars.
		    Default: None (Use default numeric labels.)
		
		xerr, yerr : scalar or array-like of shape(N,) or shape(2,N), optional
		    If not *None*, add horizontal / vertical errorbars to the bar tips.
		    The values are +/- sizes relative to the data:
		
		    - scalar: symmetric +/- values for all bars
		    - shape(N,): symmetric +/- values for each bar
		    - shape(2,N): Separate - and + values for each bar. First row
		        contains the lower errors, the second row contains the
		        upper errors.
		    - *None*: No errorbar. (Default)
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		ecolor : scalar or array-like, optional, default: 'black'
		    The line color of the errorbars.
		
		capsize : scalar, optional
		   The length of the error bar caps in points.
		   Default: None, which will take the value from
		   :rc:`errorbar.capsize`.
		
		error_kw : dict, optional
		    Dictionary of kwargs to be passed to the `~.Axes.errorbar`
		    method. Values of *ecolor* or *capsize* defined here take
		    precedence over the independent kwargs.
		
		log : bool, optional, default: False
		    If *True*, set the y-axis to be log scale.
		
		orientation : {'vertical',  'horizontal'}, optional
		    *This is for internal use only.* Please use `barh` for
		    horizontal bar plots. Default: 'vertical'.
		
		See also
		--------
		barh: Plot a horizontal bar plot.
		
		Notes
		-----
		The optional arguments *color*, *edgecolor*, *linewidth*,
		*xerr*, and *yerr* can be either scalars or sequences of
		length equal to the number of bars.  This enables you to use
		bar as the basis for stacked bar charts, or candlestick plots.
		Detail: *xerr* and *yerr* are passed directly to
		:meth:`errorbar`, so they can also have shape 2xN for
		independent specification of lower and upper errors.
		
		Other optional kwargs:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function bar(x:Dynamic, height:Dynamic, ?width:Dynamic, ?bottom:Dynamic, ?align:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
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
		    Default is 7.
		
		  *pivot*: [ 'tip' | 'middle' | float ]
		    The part of the arrow that is at the grid point; the arrow rotates
		    about this point, hence the name *pivot*.  Default is 'tip'. Can
		    also be a number, which shifts the start of the barb that many
		    points from the origin.
		
		  *barbcolor*: [ color | color sequence ]
		    Specifies the color all parts of the barb except any flags.  This
		    parameter is analogous to the *edgecolor* parameter for polygons,
		    which can be used instead. However this parameter will override
		    facecolor.
		
		  *flagcolor*: [ color | color sequence ]
		    Specifies the color of any flags on the barb.  This parameter is
		    analogous to the *facecolor* parameter for polygons, which can be
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
		
		 :     /\    \\
		 :    /  \    \\
		 :   /    \    \    \\
		 :  /      \    \    \\
		 : ------------------------------
		
		.. note the double \\ at the end of each line to make the figure
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
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function barbs(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a horizontal bar plot.
		
		The bars are positioned at *y* with the given *align*\ment. Their
		dimensions are given by *width* and *height*. The horizontal baseline
		is *left* (default 0).
		
		Each of *y*, *width*, *height*, and *left* may either be a scalar
		applying to all bars, or it may be a sequence of length N providing a
		separate value for each bar.
		
		Parameters
		----------
		y : scalar or array-like
		    The y coordinates of the bars. See also *align* for the
		    alignment of the bars to the coordinates.
		
		width : scalar or array-like
		    The width(s) of the bars.
		
		height : sequence of scalars, optional, default: 0.8
		    The heights of the bars.
		
		left : sequence of scalars
		    The x coordinates of the left sides of the bars (default: 0).
		
		align : {'center', 'edge'}, optional, default: 'center'
		    Alignment of the base to the *y* coordinates*:
		
		    - 'center': Center the bars on the *y* positions.
		    - 'edge': Align the bottom edges of the bars with the *y*
		      positions.
		
		    To align the bars on the top edge pass a negative *height* and
		    ``align='edge'``.
		
		Returns
		-------
		container : `.BarContainer`
		    Container with all the bars and optionally errorbars.
		
		Other Parameters
		----------------
		color : scalar or array-like, optional
		    The colors of the bar faces.
		
		edgecolor : scalar or array-like, optional
		    The colors of the bar edges.
		
		linewidth : scalar or array-like, optional
		    Width of the bar edge(s). If 0, don't draw edges.
		
		tick_label : string or array-like, optional
		    The tick labels of the bars.
		    Default: None (Use default numeric labels.)
		
		xerr, yerr : scalar or array-like of shape(N,) or shape(2,N), optional
		    If not ``None``, add horizontal / vertical errorbars to the
		    bar tips. The values are +/- sizes relative to the data:
		
		    - scalar: symmetric +/- values for all bars
		    - shape(N,): symmetric +/- values for each bar
		    - shape(2,N): Separate - and + values for each bar. First row
		        contains the lower errors, the second row contains the
		        upper errors.
		    - *None*: No errorbar. (default)
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		ecolor : scalar or array-like, optional, default: 'black'
		    The line color of the errorbars.
		
		capsize : scalar, optional
		   The length of the error bar caps in points.
		   Default: None, which will take the value from
		   :rc:`errorbar.capsize`.
		
		error_kw : dict, optional
		    Dictionary of kwargs to be passed to the `~.Axes.errorbar`
		    method. Values of *ecolor* or *capsize* defined here take
		    precedence over the independent kwargs.
		
		log : bool, optional, default: False
		    If ``True``, set the x-axis to be log scale.
		
		See also
		--------
		bar: Plot a vertical bar plot.
		
		Notes
		-----
		The optional arguments *color*, *edgecolor*, *linewidth*,
		*xerr*, and *yerr* can be either scalars or sequences of
		length equal to the number of bars.  This enables you to use
		bar as the basis for stacked bar charts, or candlestick plots.
		Detail: *xerr* and *yerr* are passed directly to
		:meth:`errorbar`, so they can also have shape 2xN for
		independent specification of lower and upper errors.
		
		Other optional kwargs:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
	**/
	public function barh(y:Dynamic, width:Dynamic, ?height:Dynamic, ?left:Dynamic, ?align:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a box and whisker plot.
		
		Make a box and whisker plot for each column of ``x`` or each
		vector in sequence ``x``.  The box extends from the lower to
		upper quartile values of the data, with a line at the median.
		The whiskers extend from the box to show the range of the
		data.  Flier points are those past the end of the whiskers.
		
		Parameters
		----------
		x : Array or a sequence of vectors.
		    The input data.
		
		notch : bool, optional (False)
		    If `True`, will produce a notched box plot. Otherwise, a
		    rectangular boxplot is produced. The notches represent the
		    confidence interval (CI) around the median. See the entry
		    for the ``bootstrap`` parameter for information regarding
		    how the locations of the notches are computed.
		
		    .. note::
		
		        In cases where the values of the CI are less than the
		        lower quartile or greater than the upper quartile, the
		        notches will extend beyond the box, giving it a
		        distinctive "flipped" appearance. This is expected
		        behavior and consistent with other statistical
		        visualization packages.
		
		sym : str, optional
		    The default symbol for flier points. Enter an empty string
		    ('') if you don't want to show fliers. If `None`, then the
		    fliers default to 'b+'  If you want more control use the
		    flierprops kwarg.
		
		vert : bool, optional (True)
		    If `True` (default), makes the boxes vertical. If `False`,
		    everything is drawn horizontally.
		
		whis : float, sequence, or string (default = 1.5)
		    As a float, determines the reach of the whiskers to the beyond the
		    first and third quartiles. In other words, where IQR is the
		    interquartile range (`Q3-Q1`), the upper whisker will extend to
		    last datum less than `Q3 + whis*IQR`). Similarly, the lower whisker
		    will extend to the first datum greater than `Q1 - whis*IQR`.
		    Beyond the whiskers, data
		    are considered outliers and are plotted as individual
		    points. Set this to an unreasonably high value to force the
		    whiskers to show the min and max values. Alternatively, set
		    this to an ascending sequence of percentile (e.g., [5, 95])
		    to set the whiskers at specific percentiles of the data.
		    Finally, ``whis`` can be the string ``'range'`` to force the
		    whiskers to the min and max of the data.
		
		bootstrap : int, optional
		    Specifies whether to bootstrap the confidence intervals
		    around the median for notched boxplots. If ``bootstrap`` is
		    None, no bootstrapping is performed, and notches are
		    calculated using a Gaussian-based asymptotic approximation
		    (see McGill, R., Tukey, J.W., and Larsen, W.A., 1978, and
		    Kendall and Stuart, 1967). Otherwise, bootstrap specifies
		    the number of times to bootstrap the median to determine its
		    95% confidence intervals. Values between 1000 and 10000 are
		    recommended.
		
		usermedians : array-like, optional
		    An array or sequence whose first dimension (or length) is
		    compatible with ``x``. This overrides the medians computed
		    by matplotlib for each element of ``usermedians`` that is not
		    `None`. When an element of ``usermedians`` is None, the median
		    will be computed by matplotlib as normal.
		
		conf_intervals : array-like, optional
		    Array or sequence whose first dimension (or length) is
		    compatible with ``x`` and whose second dimension is 2. When
		    the an element of ``conf_intervals`` is not None, the
		    notch locations computed by matplotlib are overridden
		    (provided ``notch`` is `True`). When an element of
		    ``conf_intervals`` is `None`, the notches are computed by the
		    method specified by the other kwargs (e.g., ``bootstrap``).
		
		positions : array-like, optional
		    Sets the positions of the boxes. The ticks and limits are
		    automatically set to match the positions. Defaults to
		    `range(1, N+1)` where N is the number of boxes to be drawn.
		
		widths : scalar or array-like
		    Sets the width of each box either with a scalar or a
		    sequence. The default is 0.5, or ``0.15*(distance between
		    extreme positions)``, if that is smaller.
		
		patch_artist : bool, optional (False)
		    If `False` produces boxes with the Line2D artist. Otherwise,
		    boxes and drawn with Patch artists.
		
		labels : sequence, optional
		    Labels for each dataset. Length must be compatible with
		    dimensions of ``x``.
		
		manage_ticks : bool, optional (True)
		    If True, the tick locations and labels will be adjusted to match
		    the boxplot positions.
		
		autorange : bool, optional (False)
		    When `True` and the data are distributed such that the 25th and
		    75th percentiles are equal, ``whis`` is set to ``'range'`` such
		    that the whisker ends are at the minimum and maximum of the data.
		
		meanline : bool, optional (False)
		    If `True` (and ``showmeans`` is `True`), will try to render
		    the mean as a line spanning the full width of the box
		    according to ``meanprops`` (see below). Not recommended if
		    ``shownotches`` is also True. Otherwise, means will be shown
		    as points.
		
		zorder : scalar, optional (None)
		    Sets the zorder of the boxplot.
		
		Other Parameters
		----------------
		showcaps : bool, optional (True)
		    Show the caps on the ends of whiskers.
		showbox : bool, optional (True)
		    Show the central box.
		showfliers : bool, optional (True)
		    Show the outliers beyond the caps.
		showmeans : bool, optional (False)
		    Show the arithmetic means.
		capprops : dict, optional (None)
		    Specifies the style of the caps.
		boxprops : dict, optional (None)
		    Specifies the style of the box.
		whiskerprops : dict, optional (None)
		    Specifies the style of the whiskers.
		flierprops : dict, optional (None)
		    Specifies the style of the fliers.
		medianprops : dict, optional (None)
		    Specifies the style of the median.
		meanprops : dict, optional (None)
		    Specifies the style of the mean.
		
		Returns
		-------
		result : dict
		  A dictionary mapping each component of the boxplot to a list
		  of the :class:`matplotlib.lines.Line2D` instances
		  created. That dictionary has the following keys (assuming
		  vertical boxplots):
		
		  - ``boxes``: the main body of the boxplot showing the
		    quartiles and the median's confidence intervals if
		    enabled.
		
		  - ``medians``: horizontal lines at the median of each box.
		
		  - ``whiskers``: the vertical lines extending to the most
		    extreme, non-outlier data points.
		
		  - ``caps``: the horizontal lines at the ends of the
		    whiskers.
		
		  - ``fliers``: points representing data that extend beyond
		    the whiskers (fliers).
		
		  - ``means``: points or lines representing the means.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function boxplot(x:Dynamic, ?notch:Dynamic, ?sym:Dynamic, ?vert:Dynamic, ?whis:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?patch_artist:Dynamic, ?bootstrap:Dynamic, ?usermedians:Dynamic, ?conf_intervals:Dynamic, ?meanline:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?labels:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?meanprops:Dynamic, ?capprops:Dynamic, ?whiskerprops:Dynamic, ?manage_ticks:Dynamic, ?autorange:Dynamic, ?zorder:Dynamic, ?data:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Plot a horizontal sequence of rectangles.
		
		A rectangle is drawn for each element of *xranges*. All rectangles
		have the same vertical position and size defined by *yrange*.
		
		This is a convenience function for instantiating a
		`.BrokenBarHCollection`, adding it to the axes and autoscaling the
		view.
		
		Parameters
		----------
		xranges : sequence of tuples (*xmin*, *xwidth*)
		    The x-positions and extends of the rectangles. For each tuple
		    (*xmin*, *xwidth*) a rectangle is drawn from *xmin* to *xmin* +
		    *xwidth*.
		yranges : (*ymin*, *ymax*)
		    The y-position and extend for all the rectangles.
		
		Other Parameters
		----------------
		**kwargs : :class:`.BrokenBarHCollection` properties
		
		    Each *kwarg* can be either a single argument applying to all
		    rectangles, e.g.::
		
		        facecolors='black'
		
		    or a sequence of arguments over which is cycled, e.g.::
		
		        facecolors=('black', 'blue')
		
		    would create interleaving black and blue rectangles.
		
		    Supported keywords:
		
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
		
		Returns
		-------
		collection : A :class:`~.collections.BrokenBarHCollection`
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function broken_barh(xranges:Dynamic, yrange:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Drawing function for box and whisker plots.
		
		Make a box and whisker plot for each column of *x* or each
		vector in sequence *x*.  The box extends from the lower to
		upper quartile values of the data, with a line at the median.
		The whiskers extend from the box to show the range of the
		data.  Flier points are those past the end of the whiskers.
		
		Parameters
		----------
		
		bxpstats : list of dicts
		  A list of dictionaries containing stats for each boxplot.
		  Required keys are:
		
		  - ``med``: The median (scalar float).
		
		  - ``q1``: The first quartile (25th percentile) (scalar
		    float).
		
		  - ``q3``: The third quartile (75th percentile) (scalar
		    float).
		
		  - ``whislo``: Lower bound of the lower whisker (scalar
		    float).
		
		  - ``whishi``: Upper bound of the upper whisker (scalar
		    float).
		
		  Optional keys are:
		
		  - ``mean``: The mean (scalar float). Needed if
		    ``showmeans=True``.
		
		  - ``fliers``: Data beyond the whiskers (sequence of floats).
		    Needed if ``showfliers=True``.
		
		  - ``cilo`` & ``cihi``: Lower and upper confidence intervals
		    about the median. Needed if ``shownotches=True``.
		
		  - ``label``: Name of the dataset (string). If available,
		    this will be used a tick label for the boxplot
		
		positions : array-like, default = [1, 2, ..., n]
		  Sets the positions of the boxes. The ticks and limits
		  are automatically set to match the positions.
		
		widths : array-like, default = None
		  Either a scalar or a vector and sets the width of each
		  box. The default is ``0.15*(distance between extreme
		  positions)``, clipped to no less than 0.15 and no more than
		  0.5.
		
		vert : bool, default = True
		  If `True` (default), makes the boxes vertical.  If `False`,
		  makes horizontal boxes.
		
		patch_artist : bool, default = False
		  If `False` produces boxes with the
		  `~matplotlib.lines.Line2D` artist.  If `True` produces boxes
		  with the `~matplotlib.patches.Patch` artist.
		
		shownotches : bool, default = False
		  If `False` (default), produces a rectangular box plot.
		  If `True`, will produce a notched box plot
		
		showmeans : bool, default = False
		  If `True`, will toggle on the rendering of the means
		
		showcaps  : bool, default = True
		  If `True`, will toggle on the rendering of the caps
		
		showbox  : bool, default = True
		  If `True`, will toggle on the rendering of the box
		
		showfliers : bool, default = True
		  If `True`, will toggle on the rendering of the fliers
		
		boxprops : dict or None (default)
		  If provided, will set the plotting style of the boxes
		
		whiskerprops : dict or None (default)
		  If provided, will set the plotting style of the whiskers
		
		capprops : dict or None (default)
		  If provided, will set the plotting style of the caps
		
		flierprops : dict or None (default)
		  If provided will set the plotting style of the fliers
		
		medianprops : dict or None (default)
		  If provided, will set the plotting style of the medians
		
		meanprops : dict or None (default)
		  If provided, will set the plotting style of the means
		
		meanline : bool, default = False
		  If `True` (and *showmeans* is `True`), will try to render the mean
		  as a line spanning the full width of the box according to
		  *meanprops*. Not recommended if *shownotches* is also True.
		  Otherwise, means will be shown as points.
		
		manage_ticks : bool, default = True
		  If True, the tick locations and labels will be adjusted to match the
		  boxplot positions.
		
		zorder : scalar, default = None
		  The zorder of the resulting boxplot.
		
		Returns
		-------
		result : dict
		  A dictionary mapping each component of the boxplot to a list
		  of the :class:`matplotlib.lines.Line2D` instances
		  created. That dictionary has the following keys (assuming
		  vertical boxplots):
		
		  - ``boxes``: the main body of the boxplot showing the
		    quartiles and the median's confidence intervals if
		    enabled.
		
		  - ``medians``: horizontal lines at the median of each box.
		
		  - ``whiskers``: the vertical lines extending to the most
		    extreme, non-outlier data points.
		
		  - ``caps``: the horizontal lines at the ends of the
		    whiskers.
		
		  - ``fliers``: points representing data that extend beyond
		    the whiskers (fliers).
		
		  - ``means``: points or lines representing the means.
		
		Examples
		--------
		
		.. plot:: gallery/statistics/bxp.py
	**/
	public function bxp(bxpstats:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?vert:Dynamic, ?patch_artist:Dynamic, ?shownotches:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?whiskerprops:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?capprops:Dynamic, ?meanprops:Dynamic, ?meanline:Dynamic, ?manage_ticks:Dynamic, ?zorder:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Return *True* if this axes supports any pan/zoom button functionality.
	**/
	public function can_pan():Dynamic;
	/**
		Return *True* if this axes supports the zoom box button functionality.
	**/
	public function can_zoom():Dynamic;
	/**
		Clear the current axes.
	**/
	public function cla():Dynamic;
	/**
		Label a contour plot.
		
		Call signature::
		
		  clabel(cs, [levels,] **kwargs)
		
		Adds labels to line contours in *cs*, where *cs* is a
		:class:`~matplotlib.contour.ContourSet` object returned by
		``contour()``.
		
		Parameters
		----------
		cs : `.ContourSet`
		    The ContourSet to label.
		
		levels : array-like, optional
		    A list of level values, that should be labeled. The list must be
		    a subset of ``cs.levels``. If not given, all levels are labeled.
		
		fontsize : string or float, optional
		    Size in points or relative size e.g., 'smaller', 'x-large'.
		    See `.Text.set_size` for accepted string values.
		
		colors : color-spec, optional
		    The label colors:
		
		    - If *None*, the color of each label matches the color of
		      the corresponding contour.
		
		    - If one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color.
		
		    - If a tuple of matplotlib color args (string, float, rgb, etc),
		      different labels will be plotted in different colors in the order
		      specified.
		
		inline : bool, optional
		    If ``True`` the underlying contour is removed where the label is
		    placed. Default is ``True``.
		
		inline_spacing : float, optional
		    Space in pixels to leave on each side of label when
		    placing inline. Defaults to 5.
		
		    This spacing will be exact for labels at locations where the
		    contour is straight, less so for labels on curved contours.
		
		fmt : string or dict, optional
		    A format string for the label. Default is '%1.3f'
		
		    Alternatively, this can be a dictionary matching contour
		    levels with arbitrary strings to use for each contour level
		    (i.e., fmt[level]=string), or it can be any callable, such
		    as a :class:`~matplotlib.ticker.Formatter` instance, that
		    returns a string when called with a numeric contour level.
		
		manual : bool or iterable, optional
		    If ``True``, contour labels will be placed manually using
		    mouse clicks. Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels. The third
		    button can be used to remove the last label added, but
		    only if labels are not inline. Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can also be an iterable object of x,y tuples.
		    Contour labels will be created as if mouse is clicked at each
		    x,y positions.
		
		rightside_up : bool, optional
		    If ``True``, label rotations will always be plus
		    or minus 90 degrees from level. Default is ``True``.
		
		use_clabeltext : bool, optional
		    If ``True``, `.ClabelText` class (instead of `.Text`) is used to
		    create labels. `ClabelText` recalculates rotation angles
		    of texts during the drawing time, therefore this can be used if
		    aspect of the axes changes. Default is ``False``.
		
		Returns
		-------
		labels
		    A list of `.Text` instances for the labels.
	**/
	public function clabel(CS:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Clear the axes.
	**/
	public function clear():Dynamic;
	/**
		Plot the coherence between *x* and *y*.
		
		Plot the coherence between *x* and *y*.  Coherence is the
		normalized cross spectral density:
		
		.. math::
		
		  C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
		
		Parameters
		----------
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : int
		    The number of points of overlap between blocks.  The
		    default value is 0 (no overlap).
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		
		Returns
		-------
		Cxy : 1-D array
		    The coherence vector.
		
		freqs : 1-D array
		    The frequencies for the elements in *Cxy*.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function cohere(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Parameters
		----------
		mouseevent : `matplotlib.backend_bases.MouseEvent`
		
		Returns
		-------
		contains : bool
		    Whether any values are within the radius.
		details : dict
		    An artist-specific dictionary of details of the event context,
		    such as which points are contained in the pick radius. See the
		    individual Artist subclasses for details.
		
		See Also
		--------
		set_contains, get_contains
	**/
	public function contains(mouseevent:Dynamic):Bool;
	/**
		Return whether *point* (pair of pixel coordinates) is inside the axes
		patch.
	**/
	public function contains_point(point:Dynamic):Dynamic;
	/**
		Plot contours.
		
		Call signature::
		
		    contour([X, Y,] Z, [levels], **kwargs)
		
		`.contour` and `.contourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values
		are the same for both versions.
		
		Parameters
		----------
		X, Y : array-like, optional
		    The coordinates of the values in *Z*.
		
		    *X* and *Y* must both be 2-D with the same shape as *Z* (e.g.
		    created via `numpy.meshgrid`), or they must both be 1-D such
		    that ``len(X) == M`` is the number of columns in *Z* and
		    ``len(Y) == N`` is the number of rows in *Z*.
		
		    If not given, they are assumed to be integer indices, i.e.
		    ``X = range(M)``, ``Y = range(N)``.
		
		Z : array-like(N, M)
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use *n* data intervals; i.e. draw *n+1* contour
		    lines. The level heights are automatically chosen.
		
		    If array-like, draw contour lines at the specified levels.
		    The values must be in increasing order.
		
		Returns
		-------
		c : `~.contour.QuadContourSet`
		
		Other Parameters
		----------------
		corner_mask : bool, optional
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If ``False``, any quad touching a masked point is
		    masked out.  If ``True``, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		
		    Defaults to :rc:`contour.corner_mask`, which defaults to ``True``.
		
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e. the lines for `.contour` and the
		    areas for `.contourf`.
		
		    The sequence is cycled for the levels in ascending order. If the
		    sequence is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of
		    one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
		    all levels with the same color. This shortcut does only work for
		    color strings, not for other ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap*
		    will be used.
		
		alpha : float, optional
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, optional
		    A `.Colormap` instance or registered colormap name. The colormap
		    maps the level values to colors.
		    Defaults to :rc:`image.cmap`.
		
		    If given, *colors* take precedence over *cmap*.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level
		    values to the canonical colormap range [0, 1] for mapping to
		    colors. If not given, the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, optional
		    Determines the orientation and exact position of *Z* by specifying
		    the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
		    are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
		      corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in
		    `.imshow`: it gives the outer pixel boundaries. In this case, the
		    position of Z[0,0] is the center of the pixel, not a corner. If
		    *origin* is *None*, then (*x0*, *y0*) is the position of Z[0,0],
		    and (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This argument is ignored if *X* and *Y* are specified in the call
		    to contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they
		    are not given explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, optional, default: 'neither'
		    Determines the ``contourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.
		    If 'min', 'max' or 'both', color the values below, above or below
		    and above the *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped
		    to the under/over values of the `.Colormap`. Note, that most
		    colormaps do not have dedicated colors for these by default, so
		    that the over and under values are the edge values of the colormap.
		    You may want to set these values explicitly using
		    `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An exising `.QuadContourSet` does not get notified if
		        properties of its colormap are changed. Therefore, an explicit
		        call `.QuadContourSet.changed()` is needed after modifying the
		        colormap. The explicit call can be left out, if a colorbar is
		        assigned to the `.QuadContourSet` because it internally calls
		        `.QuadContourSet.changed()`.
		
		    Example::
		
		        x = np.arange(1, 10)
		        y = x.reshape(-1, 1)
		        h = x * y
		
		        cs = plt.contourf(h, levels=[10, 30, 50],
		            colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
		        cs.cmap.set_over('red')
		        cs.cmap.set_under('blue')
		        cs.changed()
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		Nchunk : int >= 0, optional
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		linewidths : float or sequence of float, optional
		    *Only applies to* `.contour`.
		
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    Defaults to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    *Only applies to* `.contour`.
		
		    If *linestyles* is *None*, the default is 'solid' unless the lines
		    are monochrome.  In that case, negative contours will take their
		    linestyle from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		hatches : List[str], optional
		    *Only applies to* `.contourf`.
		
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		Notes
		-----
		1. `.contourf` differs from the MATLAB version in that it does not draw
		   the polygon edges. To draw edges, add line contours with calls to
		   `.contour`.
		
		2. `.contourf` fills intervals that are closed at the top; that is, for
		   boundaries *z1* and *z2*, the filled region is::
		
		      z1 < Z <= z2
		
		   except for the lowest interval, which is closed on both sides (i.e.
		   it includes the lowest value).
	**/
	public function contour(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot contours.
		
		Call signature::
		
		    contour([X, Y,] Z, [levels], **kwargs)
		
		`.contour` and `.contourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values
		are the same for both versions.
		
		Parameters
		----------
		X, Y : array-like, optional
		    The coordinates of the values in *Z*.
		
		    *X* and *Y* must both be 2-D with the same shape as *Z* (e.g.
		    created via `numpy.meshgrid`), or they must both be 1-D such
		    that ``len(X) == M`` is the number of columns in *Z* and
		    ``len(Y) == N`` is the number of rows in *Z*.
		
		    If not given, they are assumed to be integer indices, i.e.
		    ``X = range(M)``, ``Y = range(N)``.
		
		Z : array-like(N, M)
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use *n* data intervals; i.e. draw *n+1* contour
		    lines. The level heights are automatically chosen.
		
		    If array-like, draw contour lines at the specified levels.
		    The values must be in increasing order.
		
		Returns
		-------
		c : `~.contour.QuadContourSet`
		
		Other Parameters
		----------------
		corner_mask : bool, optional
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If ``False``, any quad touching a masked point is
		    masked out.  If ``True``, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		
		    Defaults to :rc:`contour.corner_mask`, which defaults to ``True``.
		
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e. the lines for `.contour` and the
		    areas for `.contourf`.
		
		    The sequence is cycled for the levels in ascending order. If the
		    sequence is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of
		    one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
		    all levels with the same color. This shortcut does only work for
		    color strings, not for other ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap*
		    will be used.
		
		alpha : float, optional
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, optional
		    A `.Colormap` instance or registered colormap name. The colormap
		    maps the level values to colors.
		    Defaults to :rc:`image.cmap`.
		
		    If given, *colors* take precedence over *cmap*.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level
		    values to the canonical colormap range [0, 1] for mapping to
		    colors. If not given, the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, optional
		    Determines the orientation and exact position of *Z* by specifying
		    the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
		    are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
		      corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in
		    `.imshow`: it gives the outer pixel boundaries. In this case, the
		    position of Z[0,0] is the center of the pixel, not a corner. If
		    *origin* is *None*, then (*x0*, *y0*) is the position of Z[0,0],
		    and (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This argument is ignored if *X* and *Y* are specified in the call
		    to contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they
		    are not given explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, optional, default: 'neither'
		    Determines the ``contourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.
		    If 'min', 'max' or 'both', color the values below, above or below
		    and above the *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped
		    to the under/over values of the `.Colormap`. Note, that most
		    colormaps do not have dedicated colors for these by default, so
		    that the over and under values are the edge values of the colormap.
		    You may want to set these values explicitly using
		    `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An exising `.QuadContourSet` does not get notified if
		        properties of its colormap are changed. Therefore, an explicit
		        call `.QuadContourSet.changed()` is needed after modifying the
		        colormap. The explicit call can be left out, if a colorbar is
		        assigned to the `.QuadContourSet` because it internally calls
		        `.QuadContourSet.changed()`.
		
		    Example::
		
		        x = np.arange(1, 10)
		        y = x.reshape(-1, 1)
		        h = x * y
		
		        cs = plt.contourf(h, levels=[10, 30, 50],
		            colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
		        cs.cmap.set_over('red')
		        cs.cmap.set_under('blue')
		        cs.changed()
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		Nchunk : int >= 0, optional
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		linewidths : float or sequence of float, optional
		    *Only applies to* `.contour`.
		
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    Defaults to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    *Only applies to* `.contour`.
		
		    If *linestyles* is *None*, the default is 'solid' unless the lines
		    are monochrome.  In that case, negative contours will take their
		    linestyle from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		hatches : List[str], optional
		    *Only applies to* `.contourf`.
		
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		Notes
		-----
		1. `.contourf` differs from the MATLAB version in that it does not draw
		   the polygon edges. To draw edges, add line contours with calls to
		   `.contour`.
		
		2. `.contourf` fills intervals that are closed at the top; that is, for
		   boundaries *z1* and *z2*, the filled region is::
		
		      z1 < Z <= z2
		
		   except for the lowest interval, which is closed on both sides (i.e.
		   it includes the lowest value).
	**/
	public function contourf(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot the cross-spectral density.
		
		The cross spectral density :math:`P_{xy}` by Welch's average
		periodogram method.  The vectors *x* and *y* are divided into
		*NFFT* length segments.  Each segment is detrended by function
		*detrend* and windowed by function *window*.  *noverlap* gives
		the length of the overlap between segments.  The product of
		the direct FFTs of *x* and *y* are averaged over each segment
		to compute :math:`P_{xy}`, with a scaling to correct for power
		loss due to windowing.
		
		If len(*x*) < *NFFT* or len(*y*) < *NFFT*, they will be zero
		padded to *NFFT*.
		
		Parameters
		----------
		x, y : 1-D arrays or sequences
		    Arrays or sequences containing the data.
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : int
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		return_line : bool
		    Whether to include the line object plotted in the returned values.
		    Default is False.
		
		Returns
		-------
		Pxy : 1-D array
		    The values for the cross spectrum `P_{xy}` before scaling
		    (complex valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxy*.
		
		line : a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		    Only returned if *return_line* is True.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See Also
		--------
		:func:`psd`
		    :func:`psd` is the equivalent to setting y=x.
		
		Notes
		-----
		For plotting, the power is plotted as
		:math:`10\log_{10}(P_{xy})` for decibels, though `P_{xy}` itself
		is returned.
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function csd(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?return_line:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Called when the mouse moves during a pan operation.
		
		*button* is the mouse button number:
		
		* 1: LEFT
		* 2: MIDDLE
		* 3: RIGHT
		
		*key* is a "shift" key
		
		*x*, *y* are the mouse coordinates in display coords.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function drag_pan(button:Dynamic, key:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Draw everything (plot lines, axes, labels)
	**/
	public function draw(?renderer:Dynamic, ?inframe:Dynamic):Dynamic;
	/**
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Called when a pan operation completes (when the mouse button
		is up.)
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function end_pan():Dynamic;
	/**
		Plot y versus x as lines and/or markers with attached errorbars.
		
		*x*, *y* define the data locations, *xerr*, *yerr* define the errorbar
		sizes. By default, this draws the data markers/lines as well the
		errorbars. Use fmt='none' to draw errorbars without any data markers.
		
		Parameters
		----------
		x, y : scalar or array-like
		    The data positions.
		
		xerr, yerr : scalar or array-like, shape(N,) or shape(2,N), optional
		    The errorbar sizes:
		
		    - scalar: Symmetric +/- values for all data points.
		    - shape(N,): Symmetric +/-values for each data point.
		    - shape(2,N): Separate - and + values for each bar. First row
		        contains the lower errors, the second row contains the
		        upper errors.
		    - *None*: No errorbar.
		
		    Note that all error arrays should have *positive* values.
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		fmt : plot format string, optional, default: ''
		    The format for the data points / data lines. See `.plot` for
		    details.
		
		    Use 'none' (case insensitive) to plot errorbars without any data
		    markers.
		
		ecolor : mpl color, optional, default: None
		    A matplotlib color arg which gives the color the errorbar lines.
		    If None, use the color of the line connecting the markers.
		
		elinewidth : scalar, optional, default: None
		    The linewidth of the errorbar lines. If None, the linewidth of
		    the current style is used.
		
		capsize : scalar, optional, default: None
		    The length of the error bar caps in points. If None, it will take
		    the value from :rc:`errorbar.capsize`.
		
		capthick : scalar, optional, default: None
		    An alias to the keyword argument *markeredgewidth* (a.k.a. *mew*).
		    This setting is a more sensible name for the property that
		    controls the thickness of the error bar cap in points. For
		    backwards compatibility, if *mew* or *markeredgewidth* are given,
		    then they will over-ride *capthick*. This may change in future
		    releases.
		
		barsabove : bool, optional, default: False
		    If True, will plot the errorbars above the plot
		    symbols. Default is below.
		
		lolims, uplims, xlolims, xuplims : bool, optional, default: None
		    These arguments can be used to indicate that a value gives only
		    upper/lower limits. In that case a caret symbol is used to
		    indicate this. *lims*-arguments may be of the same type as *xerr*
		    and *yerr*.  To use limits with inverted axes, :meth:`set_xlim`
		    or :meth:`set_ylim` must be called before :meth:`errorbar`.
		
		errorevery : positive integer, optional, default: 1
		    Subsamples the errorbars. e.g., if errorevery=5, errorbars for
		    every 5-th datapoint will be plotted. The data plot itself still
		    shows all data points.
		
		Returns
		-------
		container : :class:`~.container.ErrorbarContainer`
		    The container contains:
		
		    - plotline: :class:`~matplotlib.lines.Line2D` instance of
		      x, y plot markers and/or line.
		    - caplines: A tuple of :class:`~matplotlib.lines.Line2D` instances
		      of the error bar caps.
		    - barlinecols: A tuple of
		      :class:`~matplotlib.collections.LineCollection` with the
		      horizontal and vertical error ranges.
		
		Other Parameters
		----------------
		**kwargs
		    All other keyword arguments are passed on to the plot
		    command for the markers. For example, this code makes big red
		    squares with thick green edges::
		
		        x,y,yerr = rand(3,10)
		        errorbar(x, y, yerr, marker='s', mfc='red',
		                 mec='green', ms=20, mew=4)
		
		    where *mfc*, *mec*, *ms* and *mew* are aliases for the longer
		    property names, *markerfacecolor*, *markeredgecolor*, *markersize*
		    and *markeredgewidth*.
		
		    Valid kwargs for the marker properties are `.Lines2D` properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'xerr', 'y', 'yerr'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function errorbar(x:Dynamic, y:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?fmt:Dynamic, ?ecolor:Dynamic, ?elinewidth:Dynamic, ?capsize:Dynamic, ?barsabove:Dynamic, ?lolims:Dynamic, ?uplims:Dynamic, ?xlolims:Dynamic, ?xuplims:Dynamic, ?errorevery:Dynamic, ?capthick:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot identical parallel lines at the given positions.
		
		*positions* should be a 1D or 2D array-like object, with each row
		corresponding to a row or column of lines.
		
		This type of plot is commonly used in neuroscience for representing
		neural events, where it is usually called a spike raster, dot raster,
		or raster plot.
		
		However, it is useful in any situation where you wish to show the
		timing or position of multiple sets of discrete events, such as the
		arrival times of people to a business on each day of the month or the
		date of hurricanes each year of the last century.
		
		Parameters
		----------
		positions : 1D or 2D array-like object
		    Each value is an event. If *positions* is a 2D array-like, each
		    row corresponds to a row or a column of lines (depending on the
		    *orientation* parameter).
		
		orientation : {'horizontal', 'vertical'}, optional
		    Controls the direction of the event collections:
		
		        - 'horizontal' : the lines are arranged horizontally in rows,
		          and are vertical.
		        - 'vertical' : the lines are arranged vertically in columns,
		          and are horizontal.
		
		lineoffsets : scalar or sequence of scalars, optional, default: 1
		    The offset of the center of the lines from the origin, in the
		    direction orthogonal to *orientation*.
		
		linelengths : scalar or sequence of scalars, optional, default: 1
		    The total height of the lines (i.e. the lines stretches from
		    ``lineoffset - linelength/2`` to ``lineoffset + linelength/2``).
		
		linewidths : scalar, scalar sequence or None, optional, default: None
		    The line width(s) of the event lines, in points. If it is None,
		    defaults to its rcParams setting.
		
		colors : color, sequence of colors or None, optional, default: None
		    The color(s) of the event lines. If it is None, defaults to its
		    rcParams setting.
		
		linestyles : str or tuple or a sequence of such values, optional
		    Default is 'solid'. Valid strings are ['solid', 'dashed',
		    'dashdot', 'dotted', '-', '--', '-.', ':']. Dash tuples
		    should be of the form::
		
		        (offset, onoffseq),
		
		    where *onoffseq* is an even length tuple of on and off ink
		    in points.
		
		**kwargs : optional
		    Other keyword arguments are line collection properties.  See
		    :class:`~matplotlib.collections.LineCollection` for a list of
		    the valid properties.
		
		Returns
		-------
		
		list : A list of :class:`~.collections.EventCollection` objects.
		    Contains the :class:`~.collections.EventCollection` that
		    were added.
		
		Notes
		-----
		
		For *linelengths*, *linewidths*, *colors*, and *linestyles*, if only
		a single value is given, that value is applied to all lines.  If an
		array-like is given, it must have the same length as *positions*, and
		each value will be applied to the corresponding row of the array.
		
		Examples
		--------
		
		.. plot:: gallery/lines_bars_and_markers/eventplot_demo.py
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'colors', 'linelengths', 'lineoffsets', 'linestyles', 'linewidths', 'positions'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function eventplot(positions:Dynamic, ?orientation:Dynamic, ?lineoffsets:Dynamic, ?linelengths:Dynamic, ?linewidths:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot filled polygons.
		
		Parameters
		----------
		*args : sequence of x, y, [color]
		    Each polygon is defined by the lists of *x* and *y* positions of
		    its nodes, optionally followed by a *color* specifier. See
		    :mod:`matplotlib.colors` for supported color specifiers. The
		    standard color cycle is used for polygons without a color
		    specifier.
		
		    You can plot multiple polygons by providing multiple *x*, *y*,
		    *[color]* groups.
		
		    For example, each of the following is legal::
		
		        ax.fill(x, y)                    # a polygon with default color
		        ax.fill(x, y, "b")               # a blue polygon
		        ax.fill(x, y, x2, y2)            # two polygons
		        ax.fill(x, y, "b", x2, y2, "r")  # a blue and a red polygon
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*, e.g.::
		
		        ax.fill("time", "signal",
		                data={"time": [0, 1, 2], "signal": [0, 1, 0]})
		
		Returns
		-------
		a list of :class:`~matplotlib.patches.Polygon`
		
		Other Parameters
		----------------
		**kwargs : :class:`~matplotlib.patches.Polygon` properties
		
		Notes
		-----
		Use :meth:`fill_between` if you would like to fill the region between
		two curves.
	**/
	public function fill(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill the area between two horizontal curves.
		
		The curves are defined by the points (*x*, *y1*) and (*x*, *y2*). This
		creates one or multiple polygons describing the filled area.
		
		You may exclude some horizontal sections from filling using *where*.
		
		By default, the edges connect the given points directly. Use *step* if
		the filling should be a step function, i.e. constant in between *x*.
		
		
		Parameters
		----------
		x : array (length N)
		    The x coordinates of the nodes defining the curves.
		
		y1 : array (length N) or scalar
		    The y coordinates of the nodes defining the first curve.
		
		y2 : array (length N) or scalar, optional, default: 0
		    The y coordinates of the nodes defining the second curve.
		
		where : array of bool (length N), optional, default: None
		    Define *where* to exclude some horizontal regions from being
		    filled. The filled regions are defined by the coordinates
		    ``x[where]``.  More precisely, fill between ``x[i]`` and ``x[i+1]``
		    if ``where[i] and where[i+1]``.  Note that this definition implies
		    that an isolated *True* value between two *False* values in
		    *where* will not result in filling.  Both sides of the *True*
		    position remain unfilled due to the adjacent *False* values.
		
		interpolate : bool, optional
		    This option is only relevant if *where* is used and the two curves
		    are crossing each other.
		
		    Semantically, *where* is often used for *y1* > *y2* or similar.
		    By default, the nodes of the polygon defining the filled region
		    will only be placed at the positions in the *x* array.  Such a
		    polygon cannot describe the above semantics close to the
		    intersection.  The x-sections containing the intersection are
		    simply clipped.
		
		    Setting *interpolate* to *True* will calculate the actual
		    intersection point and extend the filled region up to this point.
		
		step : {'pre', 'post', 'mid'}, optional
		    Define *step* if the filling should be a step function,
		    i.e. constant in between *x*. The value determines where the
		    step will occur:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Other Parameters
		----------------
		**kwargs
		    All other keyword arguments are passed on to `.PolyCollection`.
		    They control the `.Polygon` properties:
		
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
		
		Returns
		-------
		`.PolyCollection`
		    A `.PolyCollection` containing the plotted polygons.
		
		See Also
		--------
		fill_betweenx : Fill between two sets of x-values.
		
		Notes
		-----
		.. [notes section required to get data note injection right]
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'where', 'x', 'y1', 'y2'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function fill_between(x:Dynamic, y1:Dynamic, ?y2:Dynamic, ?where:Dynamic, ?interpolate:Dynamic, ?step:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill the area between two vertical curves.
		
		The curves are defined by the points (*x1*, *y*) and (*x2*, *y*). This
		creates one or multiple polygons describing the filled area.
		
		You may exclude some vertical sections from filling using *where*.
		
		By default, the edges connect the given points directly. Use *step* if
		the filling should be a step function, i.e. constant in between *y*.
		
		
		Parameters
		----------
		y : array (length N)
		    The y coordinates of the nodes defining the curves.
		
		x1 : array (length N) or scalar
		    The x coordinates of the nodes defining the first curve.
		
		x2 : array (length N) or scalar, optional, default: 0
		    The x coordinates of the nodes defining the second curve.
		
		where : array of bool (length N), optional, default: None
		    Define *where* to exclude some vertical regions from being
		    filled. The filled regions are defined by the coordinates
		    ``y[where]``.  More precisely, fill between ``y[i]`` and ``y[i+1]``
		    if ``where[i] and where[i+1]``.  Note that this definition implies
		    that an isolated *True* value between two *False* values in
		    *where* will not result in filling.  Both sides of the *True*
		    position remain unfilled due to the adjacent *False* values.
		
		interpolate : bool, optional
		    This option is only relevant if *where* is used and the two curves
		    are crossing each other.
		
		    Semantically, *where* is often used for *x1* > *x2* or similar.
		    By default, the nodes of the polygon defining the filled region
		    will only be placed at the positions in the *y* array.  Such a
		    polygon cannot describe the above semantics close to the
		    intersection.  The y-sections containing the intersection are
		    simply clipped.
		
		    Setting *interpolate* to *True* will calculate the actual
		    intersection point and extend the filled region up to this point.
		
		step : {'pre', 'post', 'mid'}, optional
		    Define *step* if the filling should be a step function,
		    i.e. constant in between *y*. The value determines where the
		    step will occur:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Other Parameters
		----------------
		**kwargs
		    All other keyword arguments are passed on to `.PolyCollection`.
		    They control the `.Polygon` properties:
		
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
		
		Returns
		-------
		`.PolyCollection`
		    A `.PolyCollection` containing the plotted polygons.
		
		See Also
		--------
		fill_between : Fill between two sets of y-values.
		
		Notes
		-----
		.. [notes section required to get data note injection right]
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'where', 'x1', 'x2', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function fill_betweenx(y:Dynamic, x1:Dynamic, ?x2:Dynamic, ?where:Dynamic, ?step:Dynamic, ?interpolate:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a format string formatting the *x*, *y* coordinates.
	**/
	public function format_coord(x:Dynamic, y:Dynamic):Dynamic;
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
		Return *x* formatted as an x-value.
		
		This function will use the `.fmt_xdata` attribute if it is not None,
		else will fall back on the xaxis major formatter.
	**/
	public function format_xdata(x:Dynamic):Dynamic;
	/**
		Return *y* formatted as an y-value.
		
		This function will use the `.fmt_ydata` attribute if it is not None,
		else will fall back on the yaxis major formatter.
	**/
	public function format_ydata(y:Dynamic):Dynamic;
	public function get_adjustable():Dynamic;
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
		Get the anchor location.
		
		See Also
		--------
		matplotlib.axes.Axes.set_anchor
		    for a description of the anchor.
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function get_anchor():Dynamic;
	/**
		Return the animated state.
	**/
	public function get_animated():Dynamic;
	public function get_aspect():Dynamic;
	/**
		Get whether autoscaling is applied for both axes on plot commands
	**/
	public function get_autoscale_on():Dynamic;
	/**
		Get whether autoscaling for the x-axis is applied on plot commands
	**/
	public function get_autoscalex_on():Dynamic;
	/**
		Get whether autoscaling for the y-axis is applied on plot commands
	**/
	public function get_autoscaley_on():Dynamic;
	/**
		Return the axes_locator.
	**/
	public function get_axes_locator():Dynamic;
	/**
		Get whether axis ticks and gridlines are above or below most artists.
		
		Returns
		-------
		axisbelow : bool or 'line'
		
		See Also
		--------
		set_axisbelow
	**/
	public function get_axisbelow():Dynamic;
	/**
		Return a list of the child `.Artist`\s of this `.Artist`.
	**/
	public function get_children():Dynamic;
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
		Return the aspect ratio of the raw data.
		
		Notes
		-----
		This method is intended to be overridden by new projection types.
	**/
	public function get_data_ratio():Dynamic;
	/**
		Return the aspect ratio of the raw data in log scale.
		
		Notes
		-----
		Will be used when both axis are in log scale.
	**/
	public function get_data_ratio_log():Dynamic;
	/**
		Return a default list of artists that are used for the bounding box
		calculation.
		
		Artists are excluded either by not being visible or
		``artist.set_in_layout(False)``.
	**/
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Get the facecolor of the Axes.
	**/
	public function get_facecolor():Dynamic;
	/**
		Get the facecolor of the Axes.
	**/
	public function get_fc():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Get whether the axes rectangle patch is drawn.
	**/
	public function get_frame_on():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		return a list of Axes images contained by the Axes
	**/
	public function get_images():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the `Legend` instance, or None if no legend is defined.
	**/
	public function get_legend():Dynamic;
	/**
		Return handles and labels for legend
		
		``ax.legend()`` is equivalent to ::
		
		  h, l = ax.get_legend_handles_labels()
		  ax.legend(h, l)
	**/
	public function get_legend_handles_labels(?legend_handler_map:Dynamic):Dynamic;
	/**
		Return a list of lines contained by the Axes
	**/
	public function get_lines():Dynamic;
	/**
		Get whether the axes responds to navigation commands
	**/
	public function get_navigate():Dynamic;
	/**
		Get the navigation toolbar button status: 'PAN', 'ZOOM', or None
	**/
	public function get_navigate_mode():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picking behavior of the artist.
		
		The possible values are described in `.set_picker`.
		
		See Also
		--------
		set_picker, pickable, pick
	**/
	public function get_picker():Dynamic;
	/**
		Get a copy of the axes rectangle as a `.Bbox`.
		
		Parameters
		----------
		original : bool
		    If ``True``, return the original position. Otherwise return the
		    active position. For an explanation of the positions see
		    `.set_position`.
		
		Returns
		-------
		pos : `.Bbox`
	**/
	public function get_position(?original:Dynamic):Dynamic;
	/**
		Return the zorder value below which artists will be rasterized.
	**/
	public function get_rasterization_zorder():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	public function get_renderer_cache():Dynamic;
	/**
		Return a reference to the shared axes Grouper object for x axes.
	**/
	public function get_shared_x_axes():Dynamic;
	/**
		Return a reference to the shared axes Grouper object for y axes.
	**/
	public function get_shared_y_axes():Dynamic;
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
		Return the tight bounding box of the axes, including axis and their
		decorators (xlabel, title, etc).
		
		Artists that have ``artist.set_in_layout(False)`` are not included
		in the bbox.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		bbox_extra_artists : list of `.Artist` or ``None``
		    List of artists to include in the tight bounding box.  If
		    ``None`` (default), then all artist children of the axes are
		    included in the tight bounding box.
		
		call_axes_locator : boolean (default ``True``)
		    If *call_axes_locator* is ``False``, it does not call the
		    ``_axes_locator`` attribute, which is necessary to get the correct
		    bounding box. ``call_axes_locator=False`` can be used if the
		    caller is only interested in the relative size of the tightbbox
		    compared to the axes bbox.
		
		Returns
		-------
		bbox : `.BboxBase`
		    bounding box in figure pixel coordinates.
		
		See Also
		--------
		matplotlib.axis.Axes.get_window_extent
		matplotlib.axis.Axis.get_tightbbox
		matplotlib.spines.get_window_extent
	**/
	public function get_tightbbox(renderer:Dynamic, ?call_axes_locator:Dynamic, ?bbox_extra_artists:Dynamic):Dynamic;
	/**
		Get an axes title.
		
		Get one of the three available axes titles. The available titles
		are positioned above the axes in the center, flush with the left
		edge, and flush with the right edge.
		
		Parameters
		----------
		loc : {'center', 'left', 'right'}, str, optional
		    Which title to get, defaults to 'center'.
		
		Returns
		-------
		title : str
		    The title text string.
	**/
	public function get_title(?loc:Dynamic):String;
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
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Return the axes bounding box in display space; *args* and *kwargs*
		are empty.
		
		This bounding box does not include the spines, ticks, ticklables,
		or other labels.  For a bounding box including these elements use
		`~matplotlib.axes.Axes.get_tightbbox`.
		
		See Also
		--------
		matplotlib.axes.Axes.get_tightbbox
		matplotlib.axis.Axis.get_tightbbox
		matplotlib.spines.get_window_extent
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the XAxis instance.
	**/
	public function get_xaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing x-axis labels, which will add
		    *pad_points* of padding (in points) between the axes and the label.
		    The x-direction is in data coordinates and the y-direction is in
		    axis corrdinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_xaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondary x-axis labels, which will
		    add *pad_points* of padding (in points) between the axes and the
		    label.  The x-direction is in data coordinates and the y-direction
		    is in axis corrdinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_xaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, ticks
		and gridlines.  The x-direction is in data coordinates and the
		y-direction is in axis coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    `~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return the lower and upper x-axis bounds, in increasing order.
		
		See Also
		--------
		set_xbound
		get_xlim, set_xlim
		invert_xaxis, xaxis_inverted
	**/
	public function get_xbound():Dynamic;
	/**
		Get the x grid lines as a list of `Line2D` instances.
	**/
	public function get_xgridlines():Dynamic;
	/**
		Get the xlabel text string.
	**/
	public function get_xlabel():Dynamic;
	/**
		Return the x-axis view limits.
		
		Returns
		-------
		left, right : (float, float)
		    The current x-axis limits in data coordinates.
		
		See Also
		--------
		set_xlim
		set_xbound, get_xbound
		invert_xaxis, xaxis_inverted
		
		Notes
		-----
		The x-axis may be inverted, in which case the *left* value will
		be greater than the *right* value.
	**/
	public function get_xlim():Dynamic;
	/**
		Get the major x tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_xmajorticklabels():Array<Dynamic>;
	/**
		Get the minor x tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_xminorticklabels():Array<Dynamic>;
	/**
		Return the x-axis scale as string.
		
		See Also
		--------
		set_xscale
	**/
	public function get_xscale():Dynamic;
	/**
		Get the x tick labels as a list of `~matplotlib.text.Text` instances.
		
		Parameters
		----------
		minor : bool, optional
		   If True return the minor ticklabels,
		   else return the major ticklabels.
		
		which : None, ('minor', 'major', 'both')
		   Overrides `minor`.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		ret : list
		   List of `~matplotlib.text.Text` instances.
	**/
	public function get_xticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the x tick lines as a list of `Line2D` instances.
	**/
	public function get_xticklines():Dynamic;
	/**
		Return the x ticks as a list of locations
	**/
	public function get_xticks(?minor:Dynamic):Dynamic;
	/**
		Return the YAxis instance.
	**/
	public function get_yaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing y-axis labels, which will add
		    *pad_points* of padding (in points) between the axes and the label.
		    The x-direction is in axis coordinates and the y-direction is in
		    data corrdinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_yaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondart y-axis labels, which will
		    add *pad_points* of padding (in points) between the axes and the
		    label.  The x-direction is in axis coordinates and the y-direction
		    is in data corrdinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_yaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, ticks
		and gridlines.  The x-direction is in axis coordinates and the
		y-direction is in data coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    `~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return the lower and upper y-axis bounds, in increasing order.
		
		See Also
		--------
		set_ybound
		get_ylim, set_ylim
		invert_yaxis, yaxis_inverted
	**/
	public function get_ybound():Dynamic;
	/**
		Get the y grid lines as a list of `Line2D` instances.
	**/
	public function get_ygridlines():Dynamic;
	/**
		Get the ylabel text string.
	**/
	public function get_ylabel():Dynamic;
	/**
		Return the y-axis view limits.
		
		Returns
		-------
		bottom, top : (float, float)
		    The current y-axis limits in data coordinates.
		
		See Also
		--------
		set_ylim
		set_ybound, get_ybound
		invert_yaxis, yaxis_inverted
		
		Notes
		-----
		The y-axis may be inverted, in which case the *bottom* value
		will be greater than the *top* value.
	**/
	public function get_ylim():Dynamic;
	/**
		Get the major y tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_ymajorticklabels():Array<Dynamic>;
	/**
		Get the minor y tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_yminorticklabels():Array<Dynamic>;
	/**
		Return the y-axis scale as string.
		
		See Also
		--------
		set_yscale
	**/
	public function get_yscale():Dynamic;
	/**
		Get the y tick labels as a list of `~matplotlib.text.Text` instances.
		
		Parameters
		----------
		minor : bool
		   If True return the minor ticklabels,
		   else return the major ticklabels
		
		which : None, ('minor', 'major', 'both')
		   Overrides `minor`.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		ret : list
		   List of `~matplotlib.text.Text` instances.
	**/
	public function get_yticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the y tick lines as a list of `Line2D` instances.
	**/
	public function get_yticklines():Dynamic;
	/**
		Return the y ticks as a list of locations
	**/
	public function get_yticks(?minor:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Configure the grid lines.
		
		Parameters
		----------
		b : bool or None, optional
		    Whether to show the grid lines. If any *kwargs* are supplied,
		    it is assumed you want the grid on and *b* will be set to True.
		
		    If *b* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}, optional
		    The grid lines to apply the changes on.
		
		axis : {'both', 'x', 'y'}, optional
		    The axis to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
		
		    Valid *kwargs* are
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		Notes
		-----
		The axis is drawn as a unit, so the effective zorder for drawing the
		grid is determined by the zorder of each axis, not by the zorder of the
		`.Line2D` objects comprising the grid.  Therefore, to set grid zorder,
		use `.set_axisbelow` or, for more control, call the
		`~matplotlib.axis.Axis.set_zorder` method of each axis.
	**/
	public function grid(?b:Dynamic, ?which:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if any artists have been added to axes.
		
		This should not be used to determine whether the *dataLim*
		need to be updated, and may not actually be useful for
		anything.
	**/
	public function has_data():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Make a hexagonal binning plot.
		
		Make a hexagonal binning plot of *x* versus *y*, where *x*,
		*y* are 1-D sequences of the same length, *N*. If *C* is *None*
		(the default), this is a histogram of the number of occurrences
		of the observations at (x[i],y[i]).
		
		If *C* is specified, it specifies values at the coordinate
		(x[i], y[i]). These values are accumulated for each hexagonal
		bin and then reduced according to *reduce_C_function*, which
		defaults to `numpy.mean`. (If *C* is specified, it must also
		be a 1-D sequence of the same length as *x* and *y*.)
		
		Parameters
		----------
		x, y : array or masked array
		
		C : array or masked array, optional, default is *None*
		
		gridsize : int or (int, int), optional, default is 100
		    The number of hexagons in the *x*-direction, default is
		    100. The corresponding number of hexagons in the
		    *y*-direction is chosen such that the hexagons are
		    approximately regular. Alternatively, gridsize can be a
		    tuple with two elements specifying the number of hexagons
		    in the *x*-direction and the *y*-direction.
		
		bins : 'log' or int or sequence, optional, default is *None*
		    If *None*, no binning is applied; the color of each hexagon
		    directly corresponds to its count value.
		
		    If 'log', use a logarithmic scale for the color
		    map. Internally, :math:`log_{10}(i+1)` is used to
		    determine the hexagon color.
		
		    If an integer, divide the counts in the specified number
		    of bins, and color the hexagons accordingly.
		
		    If a sequence of values, the values of the lower bound of
		    the bins to be used.
		
		xscale : {'linear', 'log'}, optional, default is 'linear'
		    Use a linear or log10 scale on the horizontal axis.
		
		yscale : {'linear', 'log'}, optional, default is 'linear'
		    Use a linear or log10 scale on the vertical axis.
		
		mincnt : int > 0, optional, default is *None*
		    If not *None*, only display cells with more than *mincnt*
		    number of points in the cell
		
		marginals : bool, optional, default is *False*
		    if marginals is *True*, plot the marginal density as
		    colormapped rectangles along the bottom of the x-axis and
		    left of the y-axis
		
		extent : scalar, optional, default is *None*
		    The limits of the bins. The default assigns the limits
		    based on *gridsize*, *x*, *y*, *xscale* and *yscale*.
		
		    If *xscale* or *yscale* is set to 'log', the limits are
		    expected to be the exponent for a power of 10. E.g. for
		    x-limits of 1 and 50 in 'linear' scale and y-limits
		    of 10 and 1000 in 'log' scale, enter (1, 50, 1, 3).
		
		    Order of scalars is (left, right, bottom, top).
		
		Other Parameters
		----------------
		cmap : object, optional, default is *None*
		    a :class:`matplotlib.colors.Colormap` instance. If *None*,
		    defaults to rc ``image.cmap``.
		
		norm : object, optional, default is *None*
		    :class:`matplotlib.colors.Normalize` instance is used to
		    scale luminance data to 0,1.
		
		vmin, vmax : scalar, optional, default is *None*
		    *vmin* and *vmax* are used in conjunction with *norm* to
		    normalize luminance data. If *None*, the min and max of the
		    color array *C* are used.  Note if you pass a norm instance
		    your settings for *vmin* and *vmax* will be ignored.
		
		alpha : scalar between 0 and 1, optional, default is *None*
		    the alpha value for the patches
		
		linewidths : scalar, optional, default is *None*
		    If *None*, defaults to 1.0.
		
		edgecolors : {'face', 'none', *None*} or color, optional
		
		    If 'face' (the default), draws the edges in the same color as the
		    fill color.
		
		    If 'none', no edge is drawn; this can sometimes lead to unsightly
		    unpainted pixels between the hexagons.
		
		    If *None*, draws outlines in the default color.
		
		    If a matplotlib color arg, draws outlines in the specified color.
		
		Returns
		-------
		polycollection
		    A `.PolyCollection` instance; use `.PolyCollection.get_array` on
		    this to get the counts in each hexagon.
		
		    If *marginals* is *True*, horizontal
		    bar and vertical bar (both PolyCollections) will be attached
		    to the return collection as attributes *hbar* and *vbar*.
		
		Notes
		-----
		The standard descriptions of all the
		:class:`~matplotlib.collections.Collection` parameters:
		
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
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function hexbin(x:Dynamic, y:Dynamic, ?C:Dynamic, ?gridsize:Dynamic, ?bins:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?extent:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?edgecolors:Dynamic, ?reduce_C_function:Dynamic, ?mincnt:Dynamic, ?marginals:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a histogram.
		
		Compute and draw the histogram of *x*.  The return value is a tuple
		(*n*, *bins*, *patches*) or ([*n0*, *n1*, ...], *bins*, [*patches0*,
		*patches1*,...]) if the input contains multiple data.  See the
		documentation of the *weights* parameter to draw a histogram of
		already-binned data.
		
		Multiple data can be provided via *x* as a list of datasets
		of potentially different length ([*x0*, *x1*, ...]), or as
		a 2-D ndarray in which each column is a dataset.  Note that
		the ndarray form is transposed relative to the list form.
		
		Masked arrays are not supported at present.
		
		Parameters
		----------
		x : (n,) array or sequence of (n,) arrays
		    Input values, this takes either a single array or a sequence of
		    arrays which are not required to be of the same length.
		
		bins : int or sequence or str, optional
		    If an integer is given, ``bins + 1`` bin edges are calculated and
		    returned, consistent with `numpy.histogram`.
		
		    If `bins` is a sequence, gives bin edges, including left edge of
		    first bin and right edge of last bin.  In this case, `bins` is
		    returned unmodified.
		
		    All but the last (righthand-most) bin is half-open.  In other
		    words, if `bins` is::
		
		        [1, 2, 3, 4]
		
		    then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		    the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		    *includes* 4.
		
		    Unequally spaced bins are supported if *bins* is a sequence.
		
		    With Numpy 1.11 or newer, you can alternatively provide a string
		    describing a binning strategy, such as 'auto', 'sturges', 'fd',
		    'doane', 'scott', 'rice' or 'sqrt', see
		    `numpy.histogram`.
		
		    The default is taken from :rc:`hist.bins`.
		
		range : tuple or None, optional
		    The lower and upper range of the bins. Lower and upper outliers
		    are ignored. If not provided, *range* is ``(x.min(), x.max())``.
		    Range has no effect if *bins* is a sequence.
		
		    If *bins* is a sequence or *range* is specified, autoscaling
		    is based on the specified bin range instead of the
		    range of x.
		
		    Default is ``None``
		
		density : bool, optional
		    If ``True``, the first element of the return tuple will
		    be the counts normalized to form a probability density, i.e.,
		    the area (or integral) under the histogram will sum to 1.
		    This is achieved by dividing the count by the number of
		    observations times the bin width and not dividing by the total
		    number of observations. If *stacked* is also ``True``, the sum of
		    the histograms is normalized to 1.
		
		    Default is ``None`` for both *normed* and *density*. If either is
		    set, then that value will be used. If neither are set, then the
		    args will be treated as ``False``.
		
		    If both *density* and *normed* are set an error is raised.
		
		weights : (n, ) array_like or None, optional
		    An array of weights, of the same shape as *x*.  Each value in *x*
		    only contributes its associated weight towards the bin count
		    (instead of 1).  If *normed* or *density* is ``True``,
		    the weights are normalized, so that the integral of the density
		    over the range remains 1.
		
		    Default is ``None``.
		
		    This parameter can be used to draw a histogram of data that has
		    already been binned, e.g. using `np.histogram` (by treating each
		    bin as a single point with a weight equal to its count) ::
		
		        counts, bins = np.histogram(data)
		        plt.hist(bins[:-1], bins, weights=counts)
		
		    (or you may alternatively use `~.bar()`).
		
		cumulative : bool, optional
		    If ``True``, then a histogram is computed where each bin gives the
		    counts in that bin plus all bins for smaller values. The last bin
		    gives the total number of datapoints. If *normed* or *density*
		    is also ``True`` then the histogram is normalized such that the
		    last bin equals 1. If *cumulative* evaluates to less than 0
		    (e.g., -1), the direction of accumulation is reversed.
		    In this case, if *normed* and/or *density* is also ``True``, then
		    the histogram is normalized such that the first bin equals 1.
		
		    Default is ``False``
		
		bottom : array_like, scalar, or None
		    Location of the bottom baseline of each bin.  If a scalar,
		    the base line for each bin is shifted by the same amount.
		    If an array, each bin is shifted independently and the length
		    of bottom must match the number of bins.  If None, defaults to 0.
		
		    Default is ``None``
		
		histtype : {'bar', 'barstacked', 'step',  'stepfilled'}, optional
		    The type of histogram to draw.
		
		    - 'bar' is a traditional bar-type histogram.  If multiple data
		      are given the bars are arranged side by side.
		
		    - 'barstacked' is a bar-type histogram where multiple
		      data are stacked on top of each other.
		
		    - 'step' generates a lineplot that is by default
		      unfilled.
		
		    - 'stepfilled' generates a lineplot that is by default
		      filled.
		
		    Default is 'bar'
		
		align : {'left', 'mid', 'right'}, optional
		    Controls how the histogram is plotted.
		
		        - 'left': bars are centered on the left bin edges.
		
		        - 'mid': bars are centered between the bin edges.
		
		        - 'right': bars are centered on the right bin edges.
		
		    Default is 'mid'
		
		orientation : {'horizontal', 'vertical'}, optional
		    If 'horizontal', `~matplotlib.pyplot.barh` will be used for
		    bar-type histograms and the *bottom* kwarg will be the left edges.
		
		rwidth : scalar or None, optional
		    The relative width of the bars as a fraction of the bin width.  If
		    ``None``, automatically compute the width.
		
		    Ignored if *histtype* is 'step' or 'stepfilled'.
		
		    Default is ``None``
		
		log : bool, optional
		    If ``True``, the histogram axis will be set to a log scale. If
		    *log* is ``True`` and *x* is a 1D array, empty bins will be
		    filtered out and only the non-empty ``(n, bins, patches)``
		    will be returned.
		
		    Default is ``False``
		
		color : color or array_like of colors or None, optional
		    Color spec or sequence of color specs, one per dataset.  Default
		    (``None``) uses the standard line color sequence.
		
		    Default is ``None``
		
		label : str or None, optional
		    String, or sequence of strings to match multiple datasets.  Bar
		    charts yield multiple patches per dataset, but only the first gets
		    the label, so that the legend command will work as expected.
		
		    default is ``None``
		
		stacked : bool, optional
		    If ``True``, multiple data are stacked on top of each other If
		    ``False`` multiple data are arranged side by side if histtype is
		    'bar' or on top of each other if histtype is 'step'
		
		    Default is ``False``
		
		normed : bool, optional
		    Deprecated; use the density keyword argument instead.
		
		Returns
		-------
		n : array or list of arrays
		    The values of the histogram bins. See *density* and *weights* for a
		    description of the possible semantics.  If input *x* is an array,
		    then this is an array of length *nbins*. If input is a sequence of
		    arrays ``[data1, data2,..]``, then this is a list of arrays with
		    the values of the histograms for each of the arrays in the same
		    order.  The dtype of the array *n* (or of its element arrays) will
		    always be float even if no weighting or normalization is used.
		
		bins : array
		    The edges of the bins. Length nbins + 1 (nbins left edges and right
		    edge of last bin).  Always a single array even when multiple data
		    sets are passed in.
		
		patches : list or list of lists
		    Silent list of individual patches used to create the histogram
		    or list of such list if multiple input datasets.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.patches.Patch` properties
		
		See also
		--------
		hist2d : 2D histograms
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'weights', 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function hist(x:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?density:Dynamic, ?weights:Dynamic, ?cumulative:Dynamic, ?bottom:Dynamic, ?histtype:Dynamic, ?align:Dynamic, ?orientation:Dynamic, ?rwidth:Dynamic, ?log:Dynamic, ?color:Dynamic, ?label:Dynamic, ?stacked:Dynamic, ?normed:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a 2D histogram plot.
		
		Parameters
		----------
		x, y : array_like, shape (n, )
		    Input values
		
		bins : None or int or [int, int] or array_like or [array, array]
		
		    The bin specification:
		
		        - If int, the number of bins for the two dimensions
		          (nx=ny=bins).
		
		        - If ``[int, int]``, the number of bins in each dimension
		          (nx, ny = bins).
		
		        - If array_like, the bin edges for the two dimensions
		          (x_edges=y_edges=bins).
		
		        - If ``[array, array]``, the bin edges in each dimension
		          (x_edges, y_edges = bins).
		
		    The default value is 10.
		
		range : array_like shape(2, 2), optional, default: None
		     The leftmost and rightmost edges of the bins along each dimension
		     (if not specified explicitly in the bins parameters): ``[[xmin,
		     xmax], [ymin, ymax]]``. All values outside of this range will be
		     considered outliers and not tallied in the histogram.
		
		density : bool, optional, default: False
		     Normalize histogram.  *normed* is a deprecated synonym for this
		     parameter.
		
		weights : array_like, shape (n, ), optional, default: None
		    An array of values w_i weighing each sample (x_i, y_i).
		
		cmin : scalar, optional, default: None
		     All bins that has count less than cmin will not be displayed and
		     these count values in the return value count histogram will also
		     be set to nan upon return
		
		cmax : scalar, optional, default: None
		     All bins that has count more than cmax will not be displayed (set
		     to none before passing to imshow) and these count values in the
		     return value count histogram will also be set to nan upon return
		
		Returns
		-------
		h : 2D array
		    The bi-dimensional histogram of samples x and y. Values in x are
		    histogrammed along the first dimension and values in y are
		    histogrammed along the second dimension.
		xedges : 1D array
		    The bin edges along the x axis.
		yedges : 1D array
		    The bin edges along the y axis.
		image : `~.matplotlib.collections.QuadMesh`
		
		Other Parameters
		----------------
		cmap : Colormap or str, optional
		    A `.colors.Colormap` instance.  If not set, use rc settings.
		
		norm : Normalize, optional
		    A `.colors.Normalize` instance is used to
		    scale luminance data to ``[0, 1]``. If not set, defaults to
		    `.colors.Normalize()`.
		
		vmin/vmax : None or scalar, optional
		    Arguments passed to the `~.colors.Normalize` instance.
		
		alpha : ``0 <= scalar <= 1`` or ``None``, optional
		    The alpha blending value.
		
		See also
		--------
		hist : 1D histogram plotting
		
		Notes
		-----
		- Currently ``hist2d`` calculates it's own axis limits, and any limits
		  previously set are ignored.
		- Rendering the histogram with a logarithmic color scale is
		  accomplished by passing a `.colors.LogNorm` instance to the *norm*
		  keyword argument. Likewise, power-law normalization (similar
		  in effect to gamma correction) can be accomplished with
		  `.colors.PowerNorm`.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'weights', 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function hist2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?density:Dynamic, ?weights:Dynamic, ?cmin:Dynamic, ?cmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot horizontal lines at each *y* from *xmin* to *xmax*.
		
		Parameters
		----------
		y : scalar or sequence of scalar
		    y-indexes where to plot the lines.
		
		xmin, xmax : scalar or 1D array_like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : array_like of colors, optional, default: 'k'
		
		linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, optional
		
		label : string, optional, default: ''
		
		Returns
		-------
		lines : `~matplotlib.collections.LineCollection`
		
		Other Parameters
		----------------
		**kwargs :  `~matplotlib.collections.LineCollection` properties.
		
		See also
		--------
		vlines : vertical lines
		axhline: horizontal line across the axes
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'colors', 'xmax', 'xmin', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function hlines(y:Dynamic, xmin:Dynamic, xmax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Display an image, i.e. data on a 2D regular raster.
		
		Parameters
		----------
		X : array-like or PIL image
		    The image data. Supported array shapes are:
		
		    - (M, N): an image with scalar data. The data is visualized
		      using a colormap.
		    - (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
		    - (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
		      i.e. including transparency.
		
		    The first two dimensions (M, N) define the rows and columns of
		    the image.
		
		    Out-of-range RGB(A) values are clipped.
		
		cmap : str or `~matplotlib.colors.Colormap`, optional
		    The Colormap instance or registered colormap name used to map
		    scalar data to colors. This parameter is ignored for RGB(A) data.
		    Defaults to :rc:`image.cmap`.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The `Normalize` instance used to scale scalar data to the [0, 1]
		    range before mapping to colors using *cmap*. By default, a linear
		    scaling mapping the lowest value to 0 and the highest to 1 is used.
		    This parameter is ignored for RGB(A) data.
		
		aspect : {'equal', 'auto'} or float, optional
		    Controls the aspect ratio of the axes. The aspect is of particular
		    relevance for images since it may distort the image, i.e. pixel
		    will not be square.
		
		    This parameter is a shortcut for explicitly calling
		    `.Axes.set_aspect`. See there for further details.
		
		    - 'equal': Ensures an aspect ratio of 1. Pixels will be square
		      (unless pixel sizes are explicitly made non-square in data
		      coordinates using *extent*).
		    - 'auto': The axes is kept fixed and the aspect is adjusted so
		      that the data fit in the axes. In general, this will result in
		      non-square pixels.
		
		    If not given, use :rc:`image.aspect` (default: 'equal').
		
		interpolation : str, optional
		    The interpolation method used. If *None*
		    :rc:`image.interpolation` is used, which defaults to 'nearest'.
		
		    Supported values are 'none', 'nearest', 'bilinear', 'bicubic',
		    'spline16', 'spline36', 'hanning', 'hamming', 'hermite', 'kaiser',
		    'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell', 'sinc',
		    'lanczos'.
		
		    If *interpolation* is 'none', then no interpolation is performed
		    on the Agg, ps, pdf and svg backends. Other backends will fall back
		    to 'nearest'. Note that most SVG renders perform interpolation at
		    rendering and that the default interpolation method they implement
		    may differ.
		
		    See
		    :doc:`/gallery/images_contours_and_fields/interpolation_methods`
		    for an overview of the supported interpolation methods.
		
		    Some interpolation methods require an additional radius parameter,
		    which can be set by *filterrad*. Additionally, the antigrain image
		    resize filter is controlled by the parameter *filternorm*.
		
		alpha : scalar, optional
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		    This parameter is ignored for RGBA input data.
		
		vmin, vmax : scalar, optional
		    When using scalar data and no explicit *norm*, *vmin* and *vmax*
		    define the data range that the colormap covers. By default,
		    the colormap covers the complete value range of the supplied
		    data. *vmin*, *vmax* are ignored if the *norm* parameter is used.
		
		origin : {'upper', 'lower'}, optional
		    Place the [0,0] index of the array in the upper left or lower left
		    corner of the axes. The convention 'upper' is typically used for
		    matrices and images.
		    If not given, :rc:`image.origin` is used, defaulting to 'upper'.
		
		    Note that the vertical axes points upward for 'lower'
		    but downward for 'upper'.
		
		extent : scalars (left, right, bottom, top), optional
		    The bounding box in data coordinates that the image will fill.
		    The image is stretched individually along x and y to fill the box.
		
		    The default extent is determined by the following conditions.
		    Pixels have unit size in data coordinates. Their centers are on
		    integer coordinates, and their center coordinates range from 0 to
		    columns-1 horizontally and from 0 to rows-1 vertically.
		
		    Note that the direction of the vertical axis and thus the default
		    values for top and bottom depend on *origin*:
		
		    - For ``origin == 'upper'`` the default is
		      ``(-0.5, numcols-0.5, numrows-0.5, -0.5)``.
		    - For ``origin == 'lower'`` the default is
		      ``(-0.5, numcols-0.5, -0.5, numrows-0.5)``.
		
		    See the example :doc:`/tutorials/intermediate/imshow_extent` for a
		    more detailed description.
		
		filternorm : bool, optional, default: True
		    A parameter for the antigrain image resize filter (see the
		    antigrain documentation).  If *filternorm* is set, the filter
		    normalizes integer values and corrects the rounding errors. It
		    doesn't do anything with the source floating point values, it
		    corrects only integers according to the rule of 1.0 which means
		    that any sum of pixel weights must be equal to 1.0.  So, the
		    filter function must produce a graph of the proper shape.
		
		filterrad : float > 0, optional, default: 4.0
		    The filter radius for filters that have a radius parameter, i.e.
		    when interpolation is one of: 'sinc', 'lanczos' or 'blackman'.
		
		resample : bool, optional
		    When *True*, use a full resampling method.  When *False*, only
		    resample when the output image is larger than the input image.
		
		url : str, optional
		    Set the url of the created `.AxesImage`. See `.Artist.set_url`.
		
		Returns
		-------
		image : `~matplotlib.image.AxesImage`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.artist.Artist` properties
		    These parameters are passed on to the constructor of the
		    `.AxesImage` artist.
		
		See also
		--------
		matshow : Plot a matrix or an array as an image.
		
		Notes
		-----
		Unless *extent* is used, pixel centers will be located at integer
		coordinates. In other words: the origin will coincide with the center
		of pixel (0, 0).
		
		There are two common representations for RGB images with an alpha
		channel:
		
		-   Straight (unassociated) alpha: R, G, and B channels represent the
		    color of the pixel, disregarding its opacity.
		-   Premultiplied (associated) alpha: R, G, and B channels represent
		    the color of the pixel, adjusted for its opacity by multiplication.
		
		`~matplotlib.pyplot.imshow` expects RGB images adopting the straight
		(unassociated) alpha representation.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function imshow(X:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?aspect:Dynamic, ?interpolation:Dynamic, ?alpha:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?origin:Dynamic, ?extent:Dynamic, ?shape:Dynamic, ?filternorm:Dynamic, ?filterrad:Dynamic, ?imlim:Dynamic, ?resample:Dynamic, ?url:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if the given *mouseevent* (in display coords)
		is in the Axes
	**/
	public function in_axes(mouseevent:Dynamic):Dynamic;
	/**
		Add an inset indicator to the axes.  This is a rectangle on the plot
		at the position indicated by *bounds* that optionally has lines that
		connect the rectangle to an inset axes
		(`.Axes.inset_axes`).
		
		Warnings
		--------
		
		This method is experimental as of 3.0, and the API may change.
		
		
		Parameters
		----------
		
		bounds : [x0, y0, width, height]
		    Lower-left corner of rectangle to be marked, and its width
		    and height.
		
		inset_ax : `.Axes`
		    An optional inset axes to draw connecting lines to.  Two lines are
		    drawn connecting the indicator box to the inset axes on corners
		    chosen so as to not overlap with the indicator box.
		
		transform : `.Transform`
		    Transform for the rectangle co-ordinates. Defaults to
		    `ax.transAxes`, i.e. the units of *rect* are in axes-relative
		    coordinates.
		
		facecolor : Matplotlib color
		    Facecolor of the rectangle (default 'none').
		
		edgecolor : Matplotlib color
		    Color of the rectangle and color of the connecting lines.  Default
		    is '0.5'.
		
		alpha : number
		    Transparency of the rectangle and connector lines.  Default is 0.5.
		
		zorder : number
		    Drawing order of the rectangle and connector lines. Default is 4.99
		    (just below the default level of inset axes).
		
		**kwargs
		    Other *kwargs* are passed on to the rectangle patch.
		
		Returns
		-------
		
		rectangle_patch : `.Patches.Rectangle`
		     Rectangle artist.
		
		connector_lines : 4-tuple of `.Patches.ConnectionPatch`
		    One for each of four connector lines.  Two are set with visibility
		    to *False*,  but the user can set the visibility to True if the
		    automatic choice is not deemed correct.
	**/
	public function indicate_inset(bounds:Dynamic, ?inset_ax:Dynamic, ?transform:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?alpha:Dynamic, ?zorder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an inset indicator rectangle to the axes based on the axis
		limits for an *inset_ax* and draw connectors between *inset_ax*
		and the rectangle.
		
		Warnings
		--------
		
		This method is experimental as of 3.0, and the API may change.
		
		Parameters
		----------
		
		inset_ax : `.Axes`
		    Inset axes to draw connecting lines to.  Two lines are
		    drawn connecting the indicator box to the inset axes on corners
		    chosen so as to not overlap with the indicator box.
		
		**kwargs
		    Other *kwargs* are passed on to `.Axes.inset_rectangle`
		
		Returns
		-------
		
		rectangle_patch : `.Patches.Rectangle`
		     Rectangle artist.
		
		connector_lines : 4-tuple of `.Patches.ConnectionPatch`
		    One for each of four connector lines.  Two are set with visibility
		    to *False*,  but the user can set the visibility to True if the
		    automatic choice is not deemed correct.
	**/
	public function indicate_inset_zoom(inset_ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a child inset axes to this existing axes.
		
		Warnings
		--------
		
		This method is experimental as of 3.0, and the API may change.
		
		Parameters
		----------
		
		bounds : [x0, y0, width, height]
		    Lower-left corner of inset axes, and its width and height.
		
		transform : `.Transform`
		    Defaults to `ax.transAxes`, i.e. the units of *rect* are in
		    axes-relative coordinates.
		
		zorder : number
		    Defaults to 5 (same as `.Axes.legend`).  Adjust higher or lower
		    to change whether it is above or below data plotted on the
		    parent axes.
		
		**kwargs
		
		    Other *kwargs* are passed on to the `axes.Axes` child axes.
		
		Returns
		-------
		
		Axes
		    The created `.axes.Axes` instance.
		
		Examples
		--------
		
		This example makes two inset axes, the first is in axes-relative
		coordinates, and the second in data-coordinates::
		
		    fig, ax = plt.subplots()
		    ax.plot(range(10))
		    axin1 = ax.inset_axes([0.8, 0.1, 0.15, 0.15])
		    axin2 = ax.inset_axes(
		            [5, 7, 2.3, 2.3], transform=ax.transData)
	**/
	public function inset_axes(bounds:Dynamic, ?transform:Dynamic, ?zorder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Invert the x-axis.
		
		See Also
		--------
		xaxis_inverted
		get_xlim, set_xlim
		get_xbound, set_xbound
	**/
	public function invert_xaxis():Dynamic;
	/**
		Invert the y-axis.
		
		See Also
		--------
		yaxis_inverted
		get_ylim, set_ylim
		get_ybound, set_ybound
	**/
	public function invert_yaxis():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	/**
		Place a legend on the axes.
		
		Call signatures::
		
		    legend()
		    legend(labels)
		    legend(handles, labels)
		
		The call signatures correspond to three different ways how to use
		this method.
		
		**1. Automatic detection of elements to be shown in the legend**
		
		The elements to be added to the legend are automatically determined,
		when you do not pass in any extra arguments.
		
		In this case, the labels are taken from the artist. You can specify
		them either at artist creation or by calling the
		:meth:`~.Artist.set_label` method on the artist::
		
		    line, = ax.plot([1, 2, 3], label='Inline label')
		    ax.legend()
		
		or::
		
		    line.set_label('Label via method')
		    line, = ax.plot([1, 2, 3])
		    ax.legend()
		
		Specific lines can be excluded from the automatic legend element
		selection by defining a label starting with an underscore.
		This is default for all artists, so calling `Axes.legend` without
		any arguments and without setting the labels manually will result in
		no legend being drawn.
		
		
		**2. Labeling existing plot elements**
		
		To make a legend for lines which already exist on the axes
		(via plot for instance), simply call this function with an iterable
		of strings, one for each legend item. For example::
		
		    ax.plot([1, 2, 3])
		    ax.legend(['A simple line'])
		
		Note: This way of using is discouraged, because the relation between
		plot elements and labels is only implicit by their order and can
		easily be mixed up.
		
		
		**3. Explicitly defining the elements in the legend**
		
		For full control of which artists have a legend entry, it is possible
		to pass an iterable of legend artists followed by an iterable of
		legend labels respectively::
		
		    legend((line1, line2, line3), ('label1', 'label2', 'label3'))
		
		Parameters
		----------
		
		handles : sequence of `.Artist`, optional
		    A list of Artists (lines, patches) to be added to the legend.
		    Use this together with *labels*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		    The length of handles and labels should be the same in this
		    case. If they are not, they are truncated to the smaller length.
		
		labels : sequence of strings, optional
		    A list of labels to show next to the artists.
		    Use this together with *handles*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		Other Parameters
		----------------
		
		
		loc : str or pair of floats, default: :rc:`legend.loc` ('best' for axes, 'upper right' for figures)
		    The location of the legend.
		
		    The strings
		    ``'upper left', 'upper right', 'lower left', 'lower right'``
		    place the legend at the corresponding corner of the axes/figure.
		
		    The strings
		    ``'upper center', 'lower center', 'center left', 'center right'``
		    place the legend at the center of the corresponding edge of the
		    axes/figure.
		
		    The string ``'center'`` places the legend at the center of the axes/figure.
		
		    The string ``'best'`` places the legend at the location, among the nine
		    locations defined so far, with the minimum overlap with other drawn
		    artists.  This option can be quite slow for plots with large amounts of
		    data; your plotting speed may benefit from providing a specific location.
		
		    The location can also be a 2-tuple giving the coordinates of the lower-left
		    corner of the legend in axes coordinates (in which case *bbox_to_anchor*
		    will be ignored).
		
		    For back-compatibility, ``'center right'`` (but no other location) can also
		    be spelled ``'right'``, and each "string" locations can also be given as a
		    numeric value:
		
		        ===============   =============
		        Location String   Location Code
		        ===============   =============
		        'best'            0
		        'upper right'     1
		        'upper left'      2
		        'lower left'      3
		        'lower right'     4
		        'right'           5
		        'center left'     6
		        'center right'    7
		        'lower center'    8
		        'upper center'    9
		        'center'          10
		        ===============   =============
		
		bbox_to_anchor : `.BboxBase`, 2-tuple, or 4-tuple of floats
		    Box that is used to position the legend in conjunction with *loc*.
		    Defaults to `axes.bbox` (if called as a method to `.Axes.legend`) or
		    `figure.bbox` (if `.Figure.legend`).  This argument allows arbitrary
		    placement of the legend.
		
		    Bbox coordinates are interpreted in the coordinate system given by
		    `bbox_transform`, with the default transform
		    Axes or Figure coordinates, depending on which ``legend`` is called.
		
		    If a 4-tuple or `.BboxBase` is given, then it specifies the bbox
		    ``(x, y, width, height)`` that the legend is placed in.
		    To put the legend in the best location in the bottom right
		    quadrant of the axes (or figure)::
		
		        loc='best', bbox_to_anchor=(0.5, 0., 0.5, 0.5)
		
		    A 2-tuple ``(x, y)`` places the corner of the legend specified by *loc* at
		    x, y.  For example, to put the legend's upper right-hand corner in the
		    center of the axes (or figure) the following keywords can be used::
		
		        loc='upper right', bbox_to_anchor=(0.5, 0.5)
		
		ncol : integer
		    The number of columns that the legend has. Default is 1.
		
		prop : None or :class:`matplotlib.font_manager.FontProperties` or dict
		    The font properties of the legend. If None (default), the current
		    :data:`matplotlib.rcParams` will be used.
		
		fontsize : int or float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    Controls the font size of the legend. If the value is numeric the
		    size will be the absolute font size in points. String values are
		    relative to the current default font size. This argument is only
		    used if `prop` is not specified.
		
		numpoints : None or int
		    The number of marker points in the legend when creating a legend
		    entry for a `.Line2D` (line).
		    Default is ``None``, which will take the value from
		    :rc:`legend.numpoints`.
		
		scatterpoints : None or int
		    The number of marker points in the legend when creating
		    a legend entry for a `.PathCollection` (scatter plot).
		    Default is ``None``, which will take the value from
		    :rc:`legend.scatterpoints`.
		
		scatteryoffsets : iterable of floats
		    The vertical offset (relative to the font size) for the markers
		    created for a scatter plot legend entry. 0.0 is at the base the
		    legend text, and 1.0 is at the top. To draw all markers at the
		    same height, set to ``[0.5]``. Default is ``[0.375, 0.5, 0.3125]``.
		
		markerscale : None or int or float
		    The relative size of legend markers compared with the originally
		    drawn ones.
		    Default is ``None``, which will take the value from
		    :rc:`legend.markerscale`.
		
		markerfirst : bool
		    If *True*, legend marker is placed to the left of the legend label.
		    If *False*, legend marker is placed to the right of the legend
		    label.
		    Default is *True*.
		
		frameon : None or bool
		    Control whether the legend should be drawn on a patch
		    (frame).
		    Default is ``None``, which will take the value from
		    :rc:`legend.frameon`.
		
		fancybox : None or bool
		    Control whether round edges should be enabled around the
		    :class:`~matplotlib.patches.FancyBboxPatch` which makes up the
		    legend's background.
		    Default is ``None``, which will take the value from
		    :rc:`legend.fancybox`.
		
		shadow : None or bool
		    Control whether to draw a shadow behind the legend.
		    Default is ``None``, which will take the value from
		    :rc:`legend.shadow`.
		
		framealpha : None or float
		    Control the alpha transparency of the legend's background.
		    Default is ``None``, which will take the value from
		    :rc:`legend.framealpha`.  If shadow is activated and
		    *framealpha* is ``None``, the default value is ignored.
		
		facecolor : None or "inherit" or a color spec
		    Control the legend's background color.
		    Default is ``None``, which will take the value from
		    :rc:`legend.facecolor`.  If ``"inherit"``, it will take
		    :rc:`axes.facecolor`.
		
		edgecolor : None or "inherit" or a color spec
		    Control the legend's background patch edge color.
		    Default is ``None``, which will take the value from
		    :rc:`legend.edgecolor` If ``"inherit"``, it will take
		    :rc:`axes.edgecolor`.
		
		mode : {"expand", None}
		    If `mode` is set to ``"expand"`` the legend will be horizontally
		    expanded to fill the axes area (or `bbox_to_anchor` if defines
		    the legend's size).
		
		bbox_transform : None or :class:`matplotlib.transforms.Transform`
		    The transform for the bounding box (`bbox_to_anchor`). For a value
		    of ``None`` (default) the Axes'
		    :data:`~matplotlib.axes.Axes.transAxes` transform will be used.
		
		title : str or None
		    The legend's title. Default is no title (``None``).
		
		title_fontsize: str or None
		    The fontsize of the legend's title.  Default is the default fontsize.
		
		borderpad : float or None
		    The fractional whitespace inside the legend border.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.borderpad`.
		
		labelspacing : float or None
		    The vertical space between the legend entries.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.labelspacing`.
		
		handlelength : float or None
		    The length of the legend handles.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.handlelength`.
		
		handletextpad : float or None
		    The pad between the legend handle and text.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.handletextpad`.
		
		borderaxespad : float or None
		    The pad between the axes and legend border.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.borderaxespad`.
		
		columnspacing : float or None
		    The spacing between columns.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.columnspacing`.
		
		handler_map : dict or None
		    The custom dictionary mapping instances or types to a legend
		    handler. This `handler_map` updates the default handler map
		    found at :func:`matplotlib.legend.Legend.get_legend_handler_map`.
		
		
		
		Returns
		-------
		
		:class:`matplotlib.legend.Legend` instance
		
		Notes
		-----
		
		Not all kinds of artist are supported by the legend command. See
		:doc:`/tutorials/intermediate/legend_guide` for details.
		
		Examples
		--------
		
		.. plot:: gallery/text_labels_and_annotations/legend.py
	**/
	public function legend(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Control behavior of major tick locators.
		
		Because the locator is involved in autoscaling, `~.Axes.autoscale_view`
		is called automatically after the parameters are changed.
		
		Parameters
		----------
		axis : {'both', 'x', 'y'}, optional
		    The axis on which to operate.
		
		tight : bool or None, optional
		    Parameter passed to `~.Axes.autoscale_view`.
		    Default is None, for no change.
		
		Other Parameters
		----------------
		**kwargs
		    Remaining keyword arguments are passed to directly to the
		    ``set_params()`` method of the locator. Supported keywords depend
		    on the type of the locator. See for example
		    `~.ticker.MaxNLocator.set_params` for the `.ticker.MaxNLocator`
		    used by default for linear axes.
		
		Examples
		--------
		When plotting small subplots, one might want to reduce the maximum
		number of ticks and use tight bounds, for example::
		
		    ax.locator_params(tight=True, nbins=4)
	**/
	public function locator_params(?axis:Dynamic, ?tight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on both the x and y axis.
		
		Call signatures::
		
		    loglog([x], y, [fmt], data=None, **kwargs)
		    loglog([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		both the x-axis and the y-axis to log scaling. All of the concepts and
		parameters of plot can be used here as well.
		
		The additional parameters *basex/y*, *subsx/y* and *nonposx/y* control
		the x/y-axis properties. They are just forwarded to `.Axes.set_xscale`
		and `.Axes.set_yscale`.
		
		Parameters
		----------
		basex, basey : scalar, optional, default 10
		    Base of the x/y logarithm.
		
		subsx, subsy : sequence, optional
		    The location of the minor x/y ticks. If *None*, reasonable
		    locations are automatically chosen depending on the number of
		    decades in the plot.
		    See `.Axes.set_xscale` / `.Axes.set_yscale` for details.
		
		nonposx, nonposy : {'mask', 'clip'}, optional, default 'mask'
		    Non-positive values in x or y can be masked as invalid, or clipped
		    to a very small positive number.
		
		Returns
		-------
		lines
		    A list of `~.Line2D` objects representing the plotted data.
		
		Other Parameters
		----------------
		**kwargs
		    All parameters supported by `.plot`.
	**/
	public function loglog(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the magnitude spectrum.
		
		Compute the magnitude spectrum of *x*.  Data is padded to a
		length of *pad_to* and the windowing function *window* is applied to
		the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		scale : {'default', 'linear', 'dB'}
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale, i.e., the dB amplitude
		    (20 * log10). 'default' is 'linear'.
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the magnitude spectrum before scaling (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See Also
		--------
		:func:`psd`
		    :func:`psd` plots the power spectral density.`.
		
		:func:`angle_spectrum`
		    :func:`angle_spectrum` plots the angles of the corresponding
		    frequencies.
		
		:func:`phase_spectrum`
		    :func:`phase_spectrum` plots the phase (unwrapped angle) of the
		    corresponding frequencies.
		
		:func:`specgram`
		    :func:`specgram` can plot the magnitude spectrum of segments within
		    the signal in a colormap.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set or retrieve autoscaling margins.
		
		The padding added to each limit of the axes is the *margin*
		times the data interval. All input parameters must be floats
		within the range [0, 1]. Passing both positional and keyword
		arguments is invalid and will raise a TypeError. If no
		arguments (positional or otherwise) are provided, the current
		margins will remain in place and simply be returned.
		
		Specifying any margin changes only the autoscaling; for example,
		if *xmargin* is not None, then *xmargin* times the X data
		interval will be added to each end of that interval before
		it is used in autoscaling.
		
		Parameters
		----------
		*margins : float, optional
		    If a single positional argument is provided, it specifies
		    both margins of the x-axis and y-axis limits. If two
		    positional arguments are provided, they will be interpreted
		    as *xmargin*, *ymargin*. If setting the margin on a single
		    axis is desired, use the keyword arguments described below.
		
		x, y : float, optional
		    Specific margin values for the x-axis and y-axis,
		    respectively. These cannot be used with positional
		    arguments, but can be used individually to alter on e.g.,
		    only the y-axis.
		
		tight : bool or None, default is True
		    The *tight* parameter is passed to :meth:`autoscale_view`,
		    which is executed after a margin is changed; the default
		    here is *True*, on the assumption that when margins are
		    specified, no additional padding to match tick marks is
		    usually desired.  Set *tight* to *None* will preserve
		    the previous setting.
		
		Returns
		-------
		xmargin, ymargin : float
		
		Notes
		-----
		If a previously used Axes method such as :meth:`pcolor` has set
		:attr:`use_sticky_edges` to `True`, only the limits not set by
		the "sticky artists" will be modified. To force all of the
		margins to be set, set :attr:`use_sticky_edges` to `False`
		before calling :meth:`margins`.
	**/
	public function margins(?margins:python.VarArgs<Dynamic>, ?x:Dynamic, ?y:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Plot the values of a 2D matrix or array as color-coded image.
		
		The matrix will be shown the way it would be printed, with the first
		row at the top.  Row and column numbering is zero-based.
		
		Parameters
		----------
		Z : array-like(M, N)
		    The matrix to be displayed.
		
		Returns
		-------
		image : `~matplotlib.image.AxesImage`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.axes.Axes.imshow` arguments
		
		See Also
		--------
		imshow : More general function to plot data on a 2D regular raster.
		
		Notes
		-----
		This is just a convenience function wrapping `.imshow` to set useful
		defaults for a displaying a matrix. In particular:
		
		- Set ``origin='upper'``.
		- Set ``interpolation='nearest'``.
		- Set ``aspect='equal'``.
		- Ticks are placed to the left and above.
		- Ticks are formatted to show integer indices.
	**/
	public function matshow(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove minor ticks from the axes.
	**/
	public function minorticks_off():Dynamic;
	/**
		Display minor ticks on the axes.
		
		Displaying minor ticks may reduce performance; you may turn them off
		using `minorticks_off()` if drawing speed is a problem.
	**/
	public function minorticks_on():Dynamic;
	public var mouseover : Dynamic;
	public var mouseover_set : Dynamic;
	static public var name : Dynamic;
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
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		    pcolor([X, Y,] C, **kwargs)
		
		*X* and *Y* can be used to specify the corners of the quadrilaterals.
		
		.. hint::
		
		    ``pcolor()`` can be very slow for large arrays. In most
		    cases you should use the similar but much faster
		    `~.Axes.pcolormesh` instead. See there for a discussion of the
		    differences.
		
		Parameters
		----------
		C : array_like
		    A scalar 2-D array. The values will be color-mapped.
		
		X, Y : array_like, optional
		    The coordinates of the quadrilateral corners. The quadrilateral
		    for ``C[i,j]`` has corners at::
		
		        (X[i+1, j], Y[i+1, j])          (X[i+1, j+1], Y[i+1, j+1])
		                              +--------+
		                              | C[i,j] |
		                              +--------+
		            (X[i, j], Y[i, j])          (X[i, j+1], Y[i, j+1]),
		
		    Note that the column index corresponds to the
		    x-coordinate, and the row index corresponds to y. For
		    details, see the :ref:`Notes <axes-pcolor-grid-orientation>`
		    section below.
		
		    The dimensions of *X* and *Y* should be one greater than those of
		    *C*. Alternatively, *X*, *Y* and *C* may have equal dimensions, in
		    which case the last row and column of *C* will be ignored.
		
		    If *X* and/or *Y* are 1-D arrays or column vectors they will be
		    expanded as needed into the appropriate 2-D arrays, making a
		    rectangular grid.
		
		cmap : str or `~matplotlib.colors.Colormap`, optional
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors. Defaults to :rc:`image.cmap`.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : scalar, optional, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `~.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		
		edgecolors : {'none', None, 'face', color, color sequence}, optional
		    The color of the edges. Defaults to 'none'. Possible values:
		
		    - 'none' or '': No edge.
		    - *None*: :rc:`patch.edgecolor` will be used. Note that currently
		      :rc:`patch.force_edgecolor` has to be True for this to work.
		    - 'face': Use the adjacent face color.
		    - An mpl color or sequence of colors will set the edge color.
		
		    The singular form *edgecolor* works as an alias.
		
		alpha : scalar, optional, default: None
		    The alpha blending value of the face color, between 0 (transparent)
		    and 1 (opaque). Note: The edgecolor is currently not affected by
		    this.
		
		snap : bool, optional, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		Returns
		-------
		collection : `matplotlib.collections.Collection`
		
		Other Parameters
		----------------
		antialiaseds : bool, optional, default: False
		    The default *antialiaseds* is False if the default
		    *edgecolors*\ ="none" is used.  This eliminates artificial lines
		    at patch boundaries, and works regardless of the value of alpha.
		    If *edgecolors* is not "none", then the default *antialiaseds*
		    is taken from :rc:`patch.antialiased`, which defaults to True.
		    Stroking the edges may be preferred if *alpha* is 1, but will
		    cause artifacts otherwise.
		
		**kwargs
		    Additionally, the following arguments are allowed. They are passed
		    along to the `~matplotlib.collections.PolyCollection` constructor:
		
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
		pcolormesh : for an explanation of the differences between
		    pcolor and pcolormesh.
		imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
		    faster alternative.
		
		Notes
		-----
		
		**Masked arrays**
		
		*X*, *Y* and *C* may be masked arrays. If either ``C[i, j]``, or one
		of the vertices surrounding ``C[i,j]`` (*X* or *Y* at
		``[i, j], [i+1, j], [i, j+1], [i+1, j+1]``) is masked, nothing is
		plotted.
		
		.. _axes-pcolor-grid-orientation:
		
		**Grid orientation**
		
		The grid orientation follows the standard matrix convention: An array
		*C* with shape (nrows, ncolumns) is plotted with the column number as
		*X* and the row number as *Y*.
		
		**Handling of pcolor() end-cases**
		
		``pcolor()`` displays all columns of *C* if *X* and *Y* are not
		specified, or if *X* and *Y* have one more column than *C*.
		If *X* and *Y* have the same number of columns as *C* then the last
		column of *C* is dropped. Similarly for the rows.
		
		Note: This behavior is different from MATLAB's ``pcolor()``, which
		always discards the last row and column of *C*.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function pcolor(?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		  ax.pcolorfast([X, Y], C, /, **kwargs)
		
		This method is similar to ~.Axes.pcolor` and `~.Axes.pcolormesh`.
		It's designed to provide the fastest pcolor-type plotting with the
		Agg backend. To achieve this, it uses different algorithms internally
		depending on the complexity of the input grid (regular rectangular,
		non-regular rectangular or arbitrary quadrilateral).
		
		.. warning::
		
		   This method is experimental. Compared to `~.Axes.pcolor` or
		   `~.Axes.pcolormesh` it has some limitations:
		
		   - It supports only flat shading (no outlines)
		   - It lacks support for log scaling of the axes.
		   - It does not have a have a pyplot wrapper.
		
		Parameters
		----------
		C : array-like(M, N)
		    A 2D array or masked array. The values will be color-mapped.
		    This argument can only be passed positionally.
		
		    C can in some cases be 3D with the last dimension as rgb(a).
		    This is available when C qualifies for image or pcolorimage type,
		    will throw a TypeError if C is 3D and quadmesh.
		
		X, Y : tuple or array-like, default: ``(0, N)``, ``(0, M)``
		    *X* and *Y* are used to specify the coordinates of the
		    quadrilaterals. There are different ways to do this:
		
		    - Use tuples ``X=(xmin, xmax)`` and ``Y=(ymin, ymax)`` to define
		      a *uniform rectangular grid*.
		
		      The tuples define the outer edges of the grid. All individual
		      quadrilaterals will be of the same size. This is the fastest
		      version.
		
		    - Use 1D arrays *X*, *Y* to specify a *non-uniform rectangular
		      grid*.
		
		      In this case *X* and *Y* have to be monotonic 1D arrays of length
		      *N+1* and *M+1*, specifying the x and y boundaries of the cells.
		
		      The speed is intermediate. Note: The grid is checked, and if
		      found to be uniform the fast version is used.
		
		    - Use 2D arrays *X*, *Y* if you need an *arbitrary quadrilateral
		      grid* (i.e. if the quadrilaterals are not rectangular).
		
		      In this case *X* and *Y* are 2D arrays with shape (M, N),
		      specifying the x and y coordinates of the corners of the colored
		      quadrilaterals. See `~.Axes.pcolormesh` for details.
		
		      This is the most general, but the slowest to render.  It may
		      produce faster and more compact output using ps, pdf, and
		      svg backends, however.
		
		    These arguments can only be passed positionally.
		
		cmap : str or `~matplotlib.colors.Colormap`, optional
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors. Defaults to :rc:`image.cmap`.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : scalar, optional, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `~.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		
		alpha : scalar, optional, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		snap : bool, optional, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		Returns
		-------
		image : `.AxesImage` or `.PcolorImage` or `.QuadMesh`
		    The return type depends on the type of grid:
		
		    - `.AxesImage` for a regular rectangular grid.
		    - `.PcolorImage` for a non-regular rectangular grid.
		    - `.QuadMesh` for a non-rectangular grid.
		
		Notes
		-----
		.. [notes section required to get data note injection right]
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function pcolorfast(?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		    pcolor([X, Y,] C, **kwargs)
		
		*X* and *Y* can be used to specify the corners of the quadrilaterals.
		
		.. note::
		
		   ``pcolormesh()`` is similar to :func:`~Axes.pcolor`. It's much
		   faster and preferred in most cases. For a detailed discussion on
		   the differences see
		   :ref:`Differences between pcolor() and pcolormesh()
		   <differences-pcolor-pcolormesh>`.
		
		Parameters
		----------
		C : array_like
		    A scalar 2-D array. The values will be color-mapped.
		
		X, Y : array_like, optional
		    The coordinates of the quadrilateral corners. The quadrilateral
		    for ``C[i,j]`` has corners at::
		
		        (X[i+1, j], Y[i+1, j])          (X[i+1, j+1], Y[i+1, j+1])
		                              +--------+
		                              | C[i,j] |
		                              +--------+
		            (X[i, j], Y[i, j])          (X[i, j+1], Y[i, j+1]),
		
		    Note that the column index corresponds to the
		    x-coordinate, and the row index corresponds to y. For
		    details, see the :ref:`Notes <axes-pcolormesh-grid-orientation>`
		    section below.
		
		    The dimensions of *X* and *Y* should be one greater than those of
		    *C*. Alternatively, *X*, *Y* and *C* may have equal dimensions, in
		    which case the last row and column of *C* will be ignored.
		
		    If *X* and/or *Y* are 1-D arrays or column vectors they will be
		    expanded as needed into the appropriate 2-D arrays, making a
		    rectangular grid.
		
		cmap : str or `~matplotlib.colors.Colormap`, optional
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors. Defaults to :rc:`image.cmap`.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : scalar, optional, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `~.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		
		edgecolors : {'none', None, 'face', color, color sequence}, optional
		    The color of the edges. Defaults to 'none'. Possible values:
		
		    - 'none' or '': No edge.
		    - *None*: :rc:`patch.edgecolor` will be used. Note that currently
		      :rc:`patch.force_edgecolor` has to be True for this to work.
		    - 'face': Use the adjacent face color.
		    - An mpl color or sequence of colors will set the edge color.
		
		    The singular form *edgecolor* works as an alias.
		
		alpha : scalar, optional, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		shading : {'flat', 'gouraud'}, optional
		    The fill style, Possible values:
		
		    - 'flat': A solid color is used for each quad. The color of the
		      quad (i, j), (i+1, j), (i, j+1), (i+1, j+1) is given by
		      ``C[i,j]``.
		    - 'gouraud': Each quad will be Gouraud shaded: The color of the
		      corners (i', j') are given by ``C[i',j']``. The color values of
		      the area in between is interpolated from the corner values.
		      When Gouraud shading is used, *edgecolors* is ignored.
		
		snap : bool, optional, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		Returns
		-------
		mesh : `matplotlib.collections.QuadMesh`
		
		Other Parameters
		----------------
		**kwargs
		    Additionally, the following arguments are allowed. They are passed
		    along to the `~matplotlib.collections.QuadMesh` constructor:
		
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
		pcolor : An alternative implementation with slightly different
		    features. For a detailed discussion on the differences see
		    :ref:`Differences between pcolor() and pcolormesh()
		    <differences-pcolor-pcolormesh>`.
		imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
		    faster alternative.
		
		Notes
		-----
		
		**Masked arrays**
		
		*C* may be a masked array. If ``C[i, j]`` is masked, the corresponding
		quadrilateral will be transparent. Masking of *X* and *Y* is not
		supported. Use `~.Axes.pcolor` if you need this functionality.
		
		.. _axes-pcolormesh-grid-orientation:
		
		**Grid orientation**
		
		The grid orientation follows the standard matrix convention: An array
		*C* with shape (nrows, ncolumns) is plotted with the column number as
		*X* and the row number as *Y*.
		
		.. _differences-pcolor-pcolormesh:
		
		**Differences between pcolor() and pcolormesh()**
		
		Both methods are used to create a pseudocolor plot of a 2-D array
		using quadrilaterals.
		
		The main difference lies in the created object and internal data
		handling:
		While `~.Axes.pcolor` returns a `.PolyCollection`, `~.Axes.pcolormesh`
		returns a `.QuadMesh`. The latter is more specialized for the given
		purpose and thus is faster. It should almost always be preferred.
		
		There is also a slight difference in the handling of masked arrays.
		Both `~.Axes.pcolor` and `~.Axes.pcolormesh` support masked arrays
		for *C*. However, only `~.Axes.pcolor` supports masked arrays for *X*
		and *Y*. The reason lies in the internal handling of the masked values.
		`~.Axes.pcolor` leaves out the respective polygons from the
		PolyCollection. `~.Axes.pcolormesh` sets the facecolor of the masked
		elements to transparent. You can see the difference when using
		edgecolors. While all edges are drawn irrespective of masking in a
		QuadMesh, the edge between two adjacent masked quadrilaterals in
		`~.Axes.pcolor` is not drawn as the corresponding polygons do not
		exist in the PolyCollection.
		
		Another difference is the support of Gouraud shading in
		`~.Axes.pcolormesh`, which is not available with `~.Axes.pcolor`.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function pcolormesh(?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?shading:Dynamic, ?antialiased:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the phase spectrum.
		
		Compute the phase spectrum (unwrapped angle spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the phase spectrum in radians (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See Also
		--------
		:func:`magnitude_spectrum`
		    :func:`magnitude_spectrum` plots the magnitudes of the
		    corresponding frequencies.
		
		:func:`angle_spectrum`
		    :func:`angle_spectrum` plots the wrapped version of this function.
		
		:func:`specgram`
		    :func:`specgram` can plot the phase spectrum of segments within the
		    signal in a colormap.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function phase_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot a pie chart.
		
		Make a pie chart of array *x*.  The fractional area of each wedge is
		given by ``x/sum(x)``.  If ``sum(x) < 1``, then the values of *x* give
		the fractional area directly and the array will not be normalized. The
		resulting pie will have an empty wedge of size ``1 - sum(x)``.
		
		The wedges are plotted counterclockwise, by default starting from the
		x-axis.
		
		Parameters
		----------
		x : array-like
		    The wedge sizes.
		
		explode : array-like, optional, default: None
		    If not *None*, is a ``len(x)`` array which specifies the fraction
		    of the radius with which to offset each wedge.
		
		labels : list, optional, default: None
		    A sequence of strings providing the labels for each wedge
		
		colors : array-like, optional, default: None
		    A sequence of matplotlib color args through which the pie chart
		    will cycle.  If *None*, will use the colors in the currently
		    active cycle.
		
		autopct : None (default), string, or function, optional
		    If not *None*, is a string or function used to label the wedges
		    with their numeric value.  The label will be placed inside the
		    wedge.  If it is a format string, the label will be ``fmt%pct``.
		    If it is a function, it will be called.
		
		pctdistance : float, optional, default: 0.6
		    The ratio between the center of each pie slice and the start of
		    the text generated by *autopct*.  Ignored if *autopct* is *None*.
		
		shadow : bool, optional, default: False
		    Draw a shadow beneath the pie.
		
		labeldistance : float or None, optional, default: 1.1
		    The radial distance at which the pie labels are drawn.
		    If set to ``None``, label are not drawn, but are stored for use in
		    ``legend()``
		
		startangle : float, optional, default: None
		    If not *None*, rotates the start of the pie chart by *angle*
		    degrees counterclockwise from the x-axis.
		
		radius : float, optional, default: None
		    The radius of the pie, if *radius* is *None* it will be set to 1.
		
		counterclock : bool, optional, default: True
		    Specify fractions direction, clockwise or counterclockwise.
		
		wedgeprops : dict, optional, default: None
		    Dict of arguments passed to the wedge objects making the pie.
		    For example, you can pass in ``wedgeprops = {'linewidth': 3}``
		    to set the width of the wedge border lines equal to 3.
		    For more details, look at the doc/arguments of the wedge object.
		    By default ``clip_on=False``.
		
		textprops : dict, optional, default: None
		    Dict of arguments to pass to the text objects.
		
		center :  list of float, optional, default: (0, 0)
		    Center position of the chart. Takes value (0, 0) or is a sequence
		    of 2 scalars.
		
		frame : bool, optional, default: False
		    Plot axes frame with the chart if true.
		
		rotatelabels : bool, optional, default: False
		    Rotate each label to the angle of the corresponding slice if true.
		
		Returns
		-------
		patches : list
		    A sequence of :class:`matplotlib.patches.Wedge` instances
		
		texts : list
		    A list of the label :class:`matplotlib.text.Text` instances.
		
		autotexts : list
		    A list of :class:`~matplotlib.text.Text` instances for the numeric
		    labels. This will only be returned if the parameter *autopct* is
		    not *None*.
		
		Notes
		-----
		The pie chart will probably look best if the figure and axes are
		square, or the Axes aspect is equal.
		This method sets the aspect ratio of the axis to "equal".
		The axes aspect ratio can be controlled with `Axes.set_aspect`.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'colors', 'explode', 'labels', 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function pie(x:Dynamic, ?explode:Dynamic, ?labels:Dynamic, ?colors:Dynamic, ?autopct:Dynamic, ?pctdistance:Dynamic, ?shadow:Dynamic, ?labeldistance:Dynamic, ?startangle:Dynamic, ?radius:Dynamic, ?counterclock:Dynamic, ?wedgeprops:Dynamic, ?textprops:Dynamic, ?center:Dynamic, ?frame:Dynamic, ?rotatelabels:Dynamic, ?data:Dynamic):Array<Dynamic>;
	/**
		Plot y versus x as lines and/or markers.
		
		Call signatures::
		
		    plot([x], y, [fmt], *, data=None, **kwargs)
		    plot([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		The coordinates of the points or line nodes are given by *x*, *y*.
		
		The optional parameter *fmt* is a convenient way for defining basic
		formatting like color, marker and linestyle. It's a shortcut string
		notation described in the *Notes* section below.
		
		>>> plot(x, y)        # plot x and y using default line style and color
		>>> plot(x, y, 'bo')  # plot x and y using blue circle markers
		>>> plot(y)           # plot y using x as index array 0..N-1
		>>> plot(y, 'r+')     # ditto, but with red plusses
		
		You can use `.Line2D` properties as keyword arguments for more
		control on the appearance. Line properties and *fmt* can be mixed.
		The following two calls yield identical results:
		
		>>> plot(x, y, 'go--', linewidth=2, markersize=12)
		>>> plot(x, y, color='green', marker='o', linestyle='dashed',
		...      linewidth=2, markersize=12)
		
		When conflicting with *fmt*, keyword arguments take precedence.
		
		
		**Plotting labelled data**
		
		There's a convenient way for plotting objects with labelled data (i.e.
		data that can be accessed by index ``obj['y']``). Instead of giving
		the data in *x* and *y*, you can provide the object in the *data*
		parameter and just give the labels for *x* and *y*::
		
		>>> plot('xlabel', 'ylabel', data=obj)
		
		All indexable objects are supported. This could e.g. be a `dict`, a
		`pandas.DataFame` or a structured numpy array.
		
		
		**Plotting multiple sets of data**
		
		There are various ways to plot multiple sets of data.
		
		- The most straight forward way is just to call `plot` multiple times.
		  Example:
		
		  >>> plot(x1, y1, 'bo')
		  >>> plot(x2, y2, 'go')
		
		- Alternatively, if your data is already a 2d array, you can pass it
		  directly to *x*, *y*. A separate data set will be drawn for every
		  column.
		
		  Example: an array ``a`` where the first column represents the *x*
		  values and the other columns are the *y* columns::
		
		  >>> plot(a[0], a[1:])
		
		- The third way is to specify multiple sets of *[x]*, *y*, *[fmt]*
		  groups::
		
		  >>> plot(x1, y1, 'g^', x2, y2, 'g-')
		
		  In this case, any additional keyword argument applies to all
		  datasets. Also this syntax cannot be combined with the *data*
		  parameter.
		
		By default, each line is assigned a different style specified by a
		'style cycle'. The *fmt* and line property parameters are only
		necessary if you want explicit deviations from these defaults.
		Alternatively, you can also change the style cycle using the
		'axes.prop_cycle' rcParam.
		
		
		Parameters
		----------
		x, y : array-like or scalar
		    The horizontal / vertical coordinates of the data points.
		    *x* values are optional and default to `range(len(y))`.
		
		    Commonly, these parameters are 1D arrays.
		
		    They can also be scalars, or two-dimensional (in that case, the
		    columns represent separate data sets).
		
		    These arguments cannot be passed as keywords.
		
		fmt : str, optional
		    A format string, e.g. 'ro' for red circles. See the *Notes*
		    section for a full description of the format strings.
		
		    Format strings are just an abbreviation for quickly setting
		    basic line properties. All of these and more can also be
		    controlled by keyword arguments.
		
		    This argument cannot be passed as keyword.
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*.
		
		    .. note::
		        Technically there's a slight ambiguity in calls where the
		        second label is a valid *fmt*. `plot('n', 'o', data=obj)`
		        could be `plt(x, y)` or `plt(y, fmt)`. In such cases,
		        the former interpretation is chosen, but a warning is issued.
		        You may suppress the warning by adding an empty format string
		        `plot('n', 'o', '', data=obj)`.
		
		Other Parameters
		----------------
		scalex, scaley : bool, optional, default: True
		    These parameters determined if the view limits are adapted to
		    the data limits. The values are passed on to `autoscale_view`.
		
		**kwargs : `.Line2D` properties, optional
		    *kwargs* are used to specify properties like a line label (for
		    auto legends), linewidth, antialiasing, marker face color.
		    Example::
		
		    >>> plot([1,2,3], [1,2,3], 'go-', label='line 1', linewidth=2)
		    >>> plot([1,2,3], [1,4,9], 'rs',  label='line 2')
		
		    If you make multiple lines with one plot command, the kwargs
		    apply to all those lines.
		
		    Here is a list of available `.Line2D` properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		Returns
		-------
		lines
		    A list of `.Line2D` objects representing the plotted data.
		
		See Also
		--------
		scatter : XY scatter plot with markers of varying size and/or color (
		    sometimes also called bubble chart).
		
		Notes
		-----
		**Format Strings**
		
		A format string consists of a part for color, marker and line::
		
		    fmt = '[marker][line][color]'
		
		Each of them is optional. If not provided, the value from the style
		cycle is used. Exception: If ``line`` is given, but no ``marker``,
		the data will be a line without markers.
		
		Other combinations such as ``[color][marker][line]`` are also
		supported, but note that their parsing may be ambiguous.
		
		**Markers**
		
		=============    ===============================
		character        description
		=============    ===============================
		``'.'``          point marker
		``','``          pixel marker
		``'o'``          circle marker
		``'v'``          triangle_down marker
		``'^'``          triangle_up marker
		``'<'``          triangle_left marker
		``'>'``          triangle_right marker
		``'1'``          tri_down marker
		``'2'``          tri_up marker
		``'3'``          tri_left marker
		``'4'``          tri_right marker
		``'s'``          square marker
		``'p'``          pentagon marker
		``'*'``          star marker
		``'h'``          hexagon1 marker
		``'H'``          hexagon2 marker
		``'+'``          plus marker
		``'x'``          x marker
		``'D'``          diamond marker
		``'d'``          thin_diamond marker
		``'|'``          vline marker
		``'_'``          hline marker
		=============    ===============================
		
		**Line Styles**
		
		=============    ===============================
		character        description
		=============    ===============================
		``'-'``          solid line style
		``'--'``         dashed line style
		``'-.'``         dash-dot line style
		``':'``          dotted line style
		=============    ===============================
		
		Example format strings::
		
		    'b'    # blue markers with default shape
		    'or'   # red circles
		    '-g'   # green solid line
		    '--'   # dashed line with default color
		    '^k:'  # black triangle_up markers connected by a dotted line
		
		**Colors**
		
		The supported color abbreviations are the single letter codes
		
		=============    ===============================
		character        color
		=============    ===============================
		``'b'``          blue
		``'g'``          green
		``'r'``          red
		``'c'``          cyan
		``'m'``          magenta
		``'y'``          yellow
		``'k'``          black
		``'w'``          white
		=============    ===============================
		
		and the ``'CN'`` colors that index into the default property cycle.
		
		If the color is the only part of the format string, you can
		additionally use any  `matplotlib.colors` spec, e.g. full names
		(``'green'``) or hex strings (``'#008000'``).
	**/
	public function plot(?args:python.VarArgs<Dynamic>, ?scalex:Dynamic, ?scaley:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot data that contains dates.
		
		Similar to `.plot`, this plots *y* vs. *x* as lines or markers.
		However, the axis labels are formatted as dates depending on *xdate*
		and *ydate*.
		
		Parameters
		----------
		x, y : array-like
		    The coordinates of the data points. If *xdate* or *ydate* is
		    *True*, the respective values *x* or *y* are interpreted as
		    :ref:`Matplotlib dates <date-format>`.
		
		fmt : str, optional
		    The plot format string. For details, see the corresponding
		    parameter in `.plot`.
		
		tz : [ *None* | timezone string | :class:`tzinfo` instance]
		    The time zone to use in labeling dates. If *None*, defaults to
		    rcParam ``timezone``.
		
		xdate : bool, optional, default: True
		    If *True*, the *x*-axis will be interpreted as Matplotlib dates.
		
		ydate : bool, optional, default: False
		    If *True*, the *y*-axis will be interpreted as Matplotlib dates.
		
		
		Returns
		-------
		lines
		    A list of `~.Line2D` objects representing the plotted data.
		
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		
		See Also
		--------
		matplotlib.dates : Helper functions on dates.
		matplotlib.dates.date2num : Convert dates to num.
		matplotlib.dates.num2date : Convert num to dates.
		matplotlib.dates.drange : Create an equally spaced sequence of dates.
		
		
		Notes
		-----
		If you are using custom date tickers and formatters, it may be
		necessary to set the formatters/locators after the call to
		`.plot_date`. `.plot_date` will set the default tick locator to
		`.AutoDateLocator` (if the tick locator is not already set to a
		`.DateLocator` instance) and the default tick formatter to
		`.AutoDateFormatter` (if the tick formatter is not already set to a
		`.DateFormatter` instance).
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function plot_date(x:Dynamic, y:Dynamic, ?fmt:Dynamic, ?tz:Dynamic, ?xdate:Dynamic, ?ydate:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	/**
		Plot the power spectral density.
		
		The power spectral density :math:`P_{xx}` by Welch's average
		periodogram method.  The vector *x* is divided into *NFFT* length
		segments.  Each segment is detrended by function *detrend* and
		windowed by function *window*.  *noverlap* gives the length of
		the overlap between segments.  The :math:`|\mathrm{fft}(i)|^2`
		of each segment :math:`i` are averaged to compute :math:`P_{xx}`,
		with a scaling to correct for power loss due to windowing.
		
		If len(*x*) < *NFFT*, it will be zero padded to *NFFT*.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		noverlap : int
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		return_line : bool
		    Whether to include the line object plotted in the returned values.
		    Default is False.
		
		Returns
		-------
		Pxx : 1-D array
		    The values for the power spectrum `P_{xx}` before scaling
		    (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxx*.
		
		line : a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		    Only returned if *return_line* is True.
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments control the :class:`~matplotlib.lines.Line2D`
		    properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See Also
		--------
		:func:`specgram`
		    :func:`specgram` differs in the default overlap; in not returning
		    the mean of the segment periodograms; in returning the times of the
		    segments; and in plotting a colormap instead of a line.
		
		:func:`magnitude_spectrum`
		    :func:`magnitude_spectrum` plots the magnitude spectrum.
		
		:func:`csd`
		    :func:`csd` plots the spectral density between two signals.
		
		Notes
		-----
		For plotting, the power is plotted as
		:math:`10\log_{10}(P_{xx})` for decibels, though *Pxx* itself
		is returned.
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function psd(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?return_line:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
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
	public function quiver(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a key to a quiver plot.
		
		Call signature::
		
		  quiverkey(Q, X, Y, U, label, **kw)
		
		Arguments:
		
		  *Q*:
		    The Quiver instance returned by a call to quiver.
		
		  *X*, *Y*:
		    The location of the key; additional explanation follows.
		
		  *U*:
		    The length of the key
		
		  *label*:
		    A string with the length and units of the key
		
		Keyword arguments:
		
		  *angle* = 0
		    The angle of the key arrow. Measured in degrees anti-clockwise from the
		    x-axis.
		
		  *coordinates* = [ 'axes' | 'figure' | 'data' | 'inches' ]
		    Coordinate system and units for *X*, *Y*: 'axes' and 'figure' are
		    normalized coordinate systems with 0,0 in the lower left and 1,1
		    in the upper right; 'data' are the axes data coordinates (used for
		    the locations of the vectors in the quiver plot itself); 'inches'
		    is position in the figure in inches, with 0,0 at the lower left
		    corner.
		
		  *color*:
		    overrides face and edge colors from *Q*.
		
		  *labelpos* = [ 'N' | 'S' | 'E' | 'W' ]
		    Position the label above, below, to the right, to the left of the
		    arrow, respectively.
		
		  *labelsep*:
		    Distance in inches between the arrow and the label.  Default is
		    0.1
		
		  *labelcolor*:
		    defaults to default :class:`~matplotlib.text.Text` color.
		
		  *fontproperties*:
		    A dictionary with keyword arguments accepted by the
		    :class:`~matplotlib.font_manager.FontProperties` initializer:
		    *family*, *style*, *variant*, *size*, *weight*
		
		Any additional keyword arguments are used to override vector
		properties taken from *Q*.
		
		The positioning of the key depends on *X*, *Y*, *coordinates*, and
		*labelpos*.  If *labelpos* is 'N' or 'S', *X*, *Y* give the position
		of the middle of the key arrow.  If *labelpos* is 'E', *X*, *Y*
		positions the head, and if *labelpos* is 'W', *X*, *Y* positions the
		tail; in either of these two cases, *X*, *Y* is somewhere in the
		middle of the arrow+label key object.
	**/
	public function quiverkey(Q:Dynamic, X:Dynamic, Y:Dynamic, U:Dynamic, label:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function redraw_in_frame():Dynamic;
	/**
		Recompute the data limits based on current artists.
		
		At present, `~.Collection` instances are not supported.
		
		Parameters
		----------
		visible_only : bool
		    Whether to exclude invisible artists.  Defaults to False.
	**/
	public function relim(?visible_only:Dynamic):Dynamic;
	/**
		Remove the artist from the figure if possible.
		
		The effect will not be visible until the figure is redrawn, e.g.,
		with `.FigureCanvasBase.draw_idle`.  Call `~.axes.Axes.relim` to
		update the axes limits if desired.
		
		Note: `~.axes.Axes.relim` will not see collections even if the
		collection was added to the axes with *autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
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
		Reset the active position to the original position.
		
		This resets the a possible position change due to aspect constraints.
		For an explanation of the positions see `.set_position`.
	**/
	public function reset_position():Dynamic;
	/**
		A scatter plot of *y* vs *x* with varying marker size and/or color.
		
		Parameters
		----------
		x, y : array_like, shape (n, )
		    The data positions.
		
		s : scalar or array_like, shape (n, ), optional
		    The marker size in points**2.
		    Default is ``rcParams['lines.markersize'] ** 2``.
		
		c : color, sequence, or sequence of color, optional
		    The marker color. Possible values:
		
		    - A single color format string.
		    - A sequence of color specifications of length n.
		    - A sequence of n numbers to be mapped to colors using *cmap* and
		      *norm*.
		    - A 2-D array in which the rows are RGB or RGBA.
		
		    Note that *c* should not be a single numeric RGB or RGBA sequence
		    because that is indistinguishable from an array of values to be
		    colormapped. If you want to specify the same RGB or RGBA value for
		    all points, use a 2-D array with a single row.  Otherwise, value-
		    matching will have precedence in case of a size matching with *x*
		    and *y*.
		
		    Defaults to ``None``. In that case the marker color is determined
		    by the value of ``color``, ``facecolor`` or ``facecolors``. In case
		    those are not specified or ``None``, the marker color is determined
		    by the next color of the ``Axes``' current "shape and fill" color
		    cycle. This cycle defaults to :rc:`axes.prop_cycle`.
		
		marker : `~matplotlib.markers.MarkerStyle`, optional
		    The marker style. *marker* can be either an instance of the class
		    or the text shorthand for a particular marker.
		    Defaults to ``None``, in which case it takes the value of
		    :rc:`scatter.marker` = 'o'.
		    See `~matplotlib.markers` for more information about marker styles.
		
		cmap : `~matplotlib.colors.Colormap`, optional, default: None
		    A `.Colormap` instance or registered colormap name. *cmap* is only
		    used if *c* is an array of floats. If ``None``, defaults to rc
		    ``image.cmap``.
		
		norm : `~matplotlib.colors.Normalize`, optional, default: None
		    A `.Normalize` instance is used to scale luminance data to 0, 1.
		    *norm* is only used if *c* is an array of floats. If *None*, use
		    the default `.colors.Normalize`.
		
		vmin, vmax : scalar, optional, default: None
		    *vmin* and *vmax* are used in conjunction with *norm* to normalize
		    luminance data. If None, the respective min and max of the color
		    array is used. *vmin* and *vmax* are ignored if you pass a *norm*
		    instance.
		
		alpha : scalar, optional, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		linewidths : scalar or array_like, optional, default: None
		    The linewidth of the marker edges. Note: The default *edgecolors*
		    is 'face'. You may want to change this as well.
		    If *None*, defaults to rcParams ``lines.linewidth``.
		
		edgecolors : {'face', 'none', *None*} or color or sequence of color, optional.
		    The edge color of the marker. Possible values:
		
		    - 'face': The edge color will always be the same as the face color.
		    - 'none': No patch boundary will be drawn.
		    - A Matplotlib color or sequence of color.
		
		    Defaults to ``None``, in which case it takes the value of
		    :rc:`scatter.edgecolors` = 'face'.
		
		    For non-filled markers, the *edgecolors* kwarg is ignored and
		    forced to 'face' internally.
		
		plotnonfinite : boolean, optional, default: False
		    Set to plot points with nonfinite *c*, in conjunction with
		    `~matplotlib.colors.Colormap.set_bad`.
		
		Returns
		-------
		paths : `~matplotlib.collections.PathCollection`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.collections.Collection` properties
		
		See Also
		--------
		plot : To plot scatter plots when markers are identical in size and
		    color.
		
		Notes
		-----
		
		* The `.plot` function will be faster for scatterplots where markers
		  don't vary in size or color.
		
		* Any or all of *x*, *y*, *s*, and *c* may be masked arrays, in which
		  case all masks will be combined and only unmasked points will be
		  plotted.
		
		* Fundamentally, scatter works with 1-D arrays; *x*, *y*, *s*, and *c*
		  may be input as 2-D arrays, but within scatter they will be
		  flattened. The exception is *c*, which will be flattened only if its
		  size matches the size of *x* and *y*.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'c', 'color', 'edgecolors', 'facecolor', 'facecolors', 'linewidths', 's', 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function scatter(x:Dynamic, y:Dynamic, ?s:Dynamic, ?c:Dynamic, ?marker:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?verts:Dynamic, ?edgecolors:Dynamic, ?plotnonfinite:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a second x-axis to this axes.
		
		For example if we want to have a second scale for the data plotted on
		the xaxis.
		
		
		Warnings
		--------
		
		This method is experimental as of 3.1, and the API may change.
		
		Parameters
		----------
		location : string or scalar
		    The position to put the secondary axis.  Strings can be 'top' or
		    'bottom', for x-oriented axises or 'left' or 'right' for y-oriented axises
		    or a scalar can be a float indicating the relative position
		    on the axes to put the new axes (0 being the bottom (left), and 1.0 being
		    the top (right).)
		
		functions : 2-tuple of func, or Transform with an inverse
		
		    If a 2-tuple of functions, the user specifies the transform
		    function and its inverse.  i.e.
		    `functions=(lambda x: 2 / x, lambda x: 2 / x)` would be an
		    reciprocal transform with a factor of 2.
		
		    The user can also directly supply a subclass of
		    `.transforms.Transform` so long as it has an inverse.
		
		    See :doc:`/gallery/subplots_axes_and_figures/secondary_axis`
		    for examples of making these conversions.
		
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.axes.Axes` properties.
		    Other miscellaneous axes parameters.
		
		Returns
		-------
		ax : axes._secondary_axes.SecondaryAxis
		
		
		Examples
		--------
		
		The main axis shows frequency, and the secondary axis shows period.
		
		.. plot::
		
		    fig, ax = plt.subplots()
		    ax.loglog(range(1, 360, 5), range(1, 360, 5))
		    ax.set_xlabel('frequency [Hz]')
		
		
		    def invert(x):
		        return 1 / x
		
		    secax = ax.secondary_xaxis('top', functions=(invert, invert))
		    secax.set_xlabel('Period [s]')
		    plt.show()
	**/
	public function secondary_xaxis(location:Dynamic, ?functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a second y-axis to this axes.
		
		For example if we want to have a second scale for the data plotted on
		the yaxis.
		
		%(_secax_docstring)s
		
		Examples
		--------
		
		Add a secondary axes that converts from radians to degrees
		
		.. plot::
		
		    fig, ax = plt.subplots()
		    ax.plot(range(1, 360, 5), range(1, 360, 5))
		    ax.set_ylabel('degrees')
		    secax = ax.secondary_yaxis('right', functions=(np.deg2rad,
		                                                   np.rad2deg))
		    secax.set_ylabel('radians')
	**/
	public function secondary_yaxis(location:Dynamic, ?functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the x axis.
		
		Call signatures::
		
		    semilogx([x], y, [fmt], data=None, **kwargs)
		    semilogx([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		the x-axis to log scaling. All of the concepts and parameters of plot
		can be used here as well.
		
		The additional parameters *basex*, *subsx* and *nonposx* control the
		x-axis properties. They are just forwarded to `.Axes.set_xscale`.
		
		Parameters
		----------
		basex : scalar, optional, default 10
		    Base of the x logarithm.
		
		subsx : array_like, optional
		    The location of the minor xticks. If *None*, reasonable locations
		    are automatically chosen depending on the number of decades in the
		    plot. See `.Axes.set_xscale` for details.
		
		nonposx : {'mask', 'clip'}, optional, default 'mask'
		    Non-positive values in x can be masked as invalid, or clipped to a
		    very small positive number.
		
		Returns
		-------
		lines
		    A list of `~.Line2D` objects representing the plotted data.
		
		Other Parameters
		----------------
		**kwargs
		    All parameters supported by `.plot`.
	**/
	public function semilogx(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the y axis.
		
		Call signatures::
		
		    semilogy([x], y, [fmt], data=None, **kwargs)
		    semilogy([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		the y-axis to log scaling. All of the concepts and parameters of plot
		can be used here as well.
		
		The additional parameters *basey*, *subsy* and *nonposy* control the
		y-axis properties. They are just forwarded to `.Axes.set_yscale`.
		
		Parameters
		----------
		basey : scalar, optional, default 10
		    Base of the y logarithm.
		
		subsy : array_like, optional
		    The location of the minor yticks. If *None*, reasonable locations
		    are automatically chosen depending on the number of decades in the
		    plot. See `.Axes.set_yscale` for details.
		
		nonposy : {'mask', 'clip'}, optional, default 'mask'
		    Non-positive values in y can be masked as invalid, or clipped to a
		    very small positive number.
		
		Returns
		-------
		lines
		    A list of `~.Line2D` objects representing the plotted data.
		
		Other Parameters
		----------------
		**kwargs
		    All parameters supported by `.plot`.
	**/
	public function semilogy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Define which parameter the Axes will change to achieve a given aspect.
		
		Parameters
		----------
		adjustable : {'box', 'datalim'}
		    If 'box', change the physical dimensions of the Axes.
		    If 'datalim', change the ``x`` or ``y`` data limits.
		
		share : bool, optional
		    If ``True``, apply the settings to all shared Axes.
		    Default is ``False``.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
		
		Notes
		-----
		Shared Axes (of which twinned Axes are a special case)
		impose restrictions on how aspect ratios can be imposed.
		For twinned Axes, use 'datalim'.  For Axes that share both
		x and y, use 'box'.  Otherwise, either 'datalim' or 'box'
		may be used.  These limitations are partly a requirement
		to avoid over-specification, and partly a result of the
		particular implementation we are currently using, in
		which the adjustments for aspect ratios are done sequentially
		and independently on each Axes as it is drawn.
	**/
	public function set_adjustable(adjustable:Dynamic, ?share:Dynamic):Dynamic;
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
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : float
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Define the anchor location.
		
		The actual drawing area (active position) of the Axes may be smaller
		than the Bbox (original position) when a fixed aspect is required. The
		anchor defines where the drawing area will be located within the
		available space.
		
		Parameters
		----------
		anchor : 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		    The anchor position may be either:
		
		    - a sequence (*cx*, *cy*). *cx* and *cy* may range from 0
		      to 1, where 0 is left or bottom and 1 is right or top.
		
		    - a string using cardinal directions as abbreviation:
		
		      - 'C' for centered
		      - 'S' (south) for bottom-center
		      - 'SW' (south west) for bottom-left
		      - etc.
		
		      Here is an overview of the possible positions:
		
		      +------+------+------+
		      | 'NW' | 'N'  | 'NE' |
		      +------+------+------+
		      | 'W'  | 'C'  | 'E'  |
		      +------+------+------+
		      | 'SW' | 'S'  | 'SE' |
		      +------+------+------+
		
		share : bool, optional
		    If ``True``, apply the settings to all shared Axes.
		    Default is ``False``.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function set_anchor(anchor:Dynamic, ?share:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the aspect of the axis scaling, i.e. the ratio of y-unit to x-unit.
		
		Parameters
		----------
		aspect : {'auto', 'equal'} or num
		    Possible values:
		
		    ========   ================================================
		    value      description
		    ========   ================================================
		    'auto'     automatic; fill the position rectangle with data
		    'equal'    same scaling from data to plot units for x and y
		     num       a circle will be stretched such that the height
		               is num times the width. aspect=1 is the same as
		               aspect='equal'.
		    ========   ================================================
		
		adjustable : None or {'box', 'datalim'}, optional
		    If not ``None``, this defines which parameter will be adjusted to
		    meet the required aspect. See `.set_adjustable` for further
		    details.
		
		anchor : None or str or 2-tuple of float, optional
		    If not ``None``, this defines where the Axes will be drawn if there
		    is extra space due to aspect constraints. The most common way to
		    to specify the anchor are abbreviations of cardinal directions:
		
		    =====   =====================
		    value   description
		    =====   =====================
		    'C'     centered
		    'SW'    lower left corner
		    'S'     middle of bottom edge
		    'SE'    lower right corner
		    etc.
		    =====   =====================
		
		    See `.set_anchor` for further details.
		
		share : bool, optional
		    If ``True``, apply the settings to all shared Axes.
		    Default is ``False``.
		
		See Also
		--------
		matplotlib.axes.Axes.set_adjustable
		    defining the parameter to adjust in order to meet the required
		    aspect.
		matplotlib.axes.Axes.set_anchor
		    defining the position in case of extra space.
	**/
	public function set_aspect(aspect:Dynamic, ?adjustable:Dynamic, ?anchor:Dynamic, ?share:Dynamic):Dynamic;
	/**
		Set whether autoscaling is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscale_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the x-axis is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscalex_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the y-axis is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscaley_on(b:Dynamic):Dynamic;
	/**
		Set the axes locator.
		
		Parameters
		----------
		locator : Callable[[Axes, Renderer], Bbox]
	**/
	public function set_axes_locator(locator:Dynamic):Dynamic;
	/**
		Turn the x- and y-axis off.
		
		This affects the axis lines, ticks, ticklabels, grid and axis labels.
	**/
	public function set_axis_off():Dynamic;
	/**
		Turn the x- and y-axis on.
		
		This affects the axis lines, ticks, ticklabels, grid and axis labels.
	**/
	public function set_axis_on():Dynamic;
	/**
		Set whether axis ticks and gridlines are above or below most artists.
		
		This controls the zorder of the ticks and gridlines. For more
		information on the zorder see :doc:`/gallery/misc/zorder_demo`.
		
		Parameters
		----------
		b : bool or 'line'
		    Possible values:
		
		    - *True* (zorder = 0.5): Ticks and gridlines are below all Artists.
		    - 'line' (zorder = 1.5): Ticks and gridlines are above patches
		      (e.g. rectangles, with default zorder = 1) but still below lines
		      and markers (with their default zorder = 2).
		    - *False* (zorder = 2.5): Ticks and gridlines are above patches
		      and lines / markers.
		
		See Also
		--------
		get_axisbelow
	**/
	public function set_axisbelow(b:Dynamic):Dynamic;
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
		Set the facecolor of the Axes.
		
		Parameters
		----------
		color : color
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the facecolor of the Axes.
		
		Parameters
		----------
		color : color
	**/
	public function set_fc(color:Dynamic):Dynamic;
	/**
		Set the `.Figure` for this `.Axes`.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the axes rectangle patch is drawn.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
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
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set whether the axes responds to navigation toolbar commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_navigate(b:Dynamic):Dynamic;
	/**
		Set the navigation toolbar button status;
		
		.. warning::
		    this is not a user-API function.
	**/
	public function set_navigate_mode(b:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
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
		Set the axes position.
		
		Axes have two position attributes. The 'original' position is the
		position allocated for the Axes. The 'active' position is the
		position the Axes is actually drawn at. These positions are usually
		the same unless a fixed aspect is set to the Axes. See `.set_aspect`
		for details.
		
		Parameters
		----------
		pos : [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		    The new position of the in `.Figure` coordinates.
		
		which : {'both', 'active', 'original'}, optional
		    Determines which position variables to change.
	**/
	public function set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set the property cycle of the Axes.
		
		The property cycle controls the style properties such as color,
		marker and linestyle of future plot commands. The style properties
		of data already added to the Axes are not modified.
		
		Call signatures::
		
		  set_prop_cycle(cycler)
		  set_prop_cycle(label=values[, label2=values2[, ...]])
		  set_prop_cycle(label, values)
		
		Form 1 sets given `~cycler.Cycler` object.
		
		Form 2 creates a `~cycler.Cycler` which cycles over one or more
		properties simultaneously and set it as the property cycle of the
		axes. If multiple properties are given, their value lists must have
		the same length. This is just a shortcut for explicitly creating a
		cycler and passing it to the function, i.e. it's short for
		``set_prop_cycle(cycler(label=values label2=values2, ...))``.
		
		Form 3 creates a `~cycler.Cycler` for a single property and set it
		as the property cycle of the axes. This form exists for compatibility
		with the original `cycler.cycler` interface. Its use is discouraged
		in favor of the kwarg form, i.e. ``set_prop_cycle(label=values)``.
		
		Parameters
		----------
		cycler : Cycler
		    Set the given Cycler. *None* resets to the cycle defined by the
		    current style.
		
		label : str
		    The property key. Must be a valid `.Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		values : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Examples
		--------
		Setting the property cycle for a single property:
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'])
		
		Setting the property cycle for simultaneously cycling over multiple
		properties (e.g. red circle, green plus, blue cross):
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'],
		...                   marker=['o', '+', 'x'])
		
		See Also
		--------
		matplotlib.rcsetup.cycler
		    Convenience function for creating validated cyclers for properties.
		cycler.cycler
		    The original function for creating unvalidated cyclers.
	**/
	public function set_prop_cycle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		z : float or None
		    zorder below which artists are rasterized.  ``None`` means that
		    artists do not get rasterized based on zorder.
	**/
	public function set_rasterization_zorder(z:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
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
		Set a title for the axes.
		
		Set one of the three available axes titles. The available titles
		are positioned above the axes in the center, flush with the left
		edge, and flush with the right edge.
		
		Parameters
		----------
		label : str
		    Text to use for the title
		
		fontdict : dict
		    A dictionary controlling the appearance of the title text,
		    the default `fontdict` is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight' : rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		loc : {'center', 'left', 'right'}, str, optional
		    Which title to set, defaults to 'center'
		
		pad : float
		    The offset of the title from the top of the axes, in points.
		    Default is ``None`` to use rcParams['axes.titlepad'].
		
		Returns
		-------
		text : :class:`~matplotlib.text.Text`
		    The matplotlib text instance representing the title
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.text.Text` properties
		    Other keyword arguments are text properties, see
		    :class:`~matplotlib.text.Text` for a list of valid text
		    properties.
	**/
	public function set_title(label:Dynamic, ?fontdict:Dynamic, ?loc:Dynamic, ?pad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the lower and upper numerical bounds of the x-axis.
		
		This method will honor axes inversion regardless of parameter order.
		It will not change the autoscaling setting (``Axes._autoscaleXon``).
		
		Parameters
		----------
		lower, upper : float or None
		    The lower and upper bounds. If *None*, the respective axis bound
		    is not modified.
		
		See Also
		--------
		get_xbound
		get_xlim, set_xlim
		invert_xaxis, xaxis_inverted
	**/
	public function set_xbound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the x-axis.
		
		Parameters
		----------
		xlabel : str
		    The label text.
		
		labelpad : scalar, optional, default: None
		    Spacing in points from the axes bounding box including ticks
		    and tick labels.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_xlabel(xlabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x-axis view limits.
		
		.. ACCEPTS: (left: float, right: float)
		
		Parameters
		----------
		left : scalar, optional
		    The left xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		    The left and right xlims may be passed as the tuple
		    (*left*, *right*) as the first positional argument (or as
		    the *left* keyword argument).
		
		right : scalar, optional
		    The right xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		emit : bool, optional
		    Whether to notify observers of limit change (default: True).
		
		auto : bool or None, optional
		    Whether to turn on autoscaling of the x-axis. True turns on,
		    False turns off (default action), None leaves unchanged.
		
		xmin, xmax : scalar, optional
		    They are equivalent to left and right respectively,
		    and it is an error to pass both *xmin* and *left* or
		    *xmax* and *right*.
		
		Returns
		-------
		left, right : (float, float)
		    The new x-axis limits in data coordinates.
		
		See Also
		--------
		get_xlim
		set_xbound, get_xbound
		invert_xaxis, xaxis_inverted
		
		Notes
		-----
		The *left* value may be greater than the *right* value, in which
		case the x-axis values will decrease from left to right.
		
		Examples
		--------
		>>> set_xlim(left, right)
		>>> set_xlim((left, right))
		>>> left, right = set_xlim(left, right)
		
		One limit may be left unchanged.
		
		>>> set_xlim(right=right_lim)
		
		Limits may be passed in reverse order to flip the direction of
		the x-axis. For example, suppose *x* represents the number of
		years before present. The x-axis limits might be set like the
		following so 5000 years ago is on the left of the plot and the
		present is on the right.
		
		>>> set_xlim(5000, 0)
	**/
	public function set_xlim(?left:Dynamic, ?right:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic):Dynamic;
	/**
		Set padding of X data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		For example, if your data is in the range [0, 2], a factor of
		``m = 0.1`` will result in a range [-0.2, 2.2].
		
		Negative values -0.5 < m < 0 will result in clipping of the data range.
		I.e. for a data range [0, 2], a factor of ``m = -0.1`` will result in
		a range [0.2, 1.8].
		
		Parameters
		----------
		m : float greater than -0.5
	**/
	public function set_xmargin(m:Dynamic):Dynamic;
	/**
		Set the x-axis scale.
		
		Parameters
		----------
		value : {"linear", "log", "symlog", "logit", ...}
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_xscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x-tick labels with list of string labels.
		
		Parameters
		----------
		labels : List[str]
		    List of string labels.
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default `fontdict` is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, optional
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		A list of `~.text.Text` instances.
		
		Other Parameters
		-----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_xticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x ticks with list of *ticks*
		
		Parameters
		----------
		ticks : list
		    List of x-axis tick locations.
		
		minor : bool, optional
		    If ``False`` sets major ticks, if ``True`` sets minor ticks.
		    Default is ``False``.
	**/
	public function set_xticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the lower and upper numerical bounds of the y-axis.
		
		This method will honor axes inversion regardless of parameter order.
		It will not change the autoscaling setting (``Axes._autoscaleYon``).
		
		Parameters
		----------
		lower, upper : float or None
		    The lower and upper bounds. If *None*, the respective axis bound
		    is not modified.
		
		See Also
		--------
		get_ybound
		get_ylim, set_ylim
		invert_yaxis, yaxis_inverted
	**/
	public function set_ybound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the y-axis.
		
		Parameters
		----------
		ylabel : str
		    The label text.
		
		labelpad : scalar, optional, default: None
		    Spacing in points from the axes bounding box including ticks
		    and tick labels.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_ylabel(ylabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y-axis view limits.
		
		.. ACCEPTS: (bottom: float, top: float)
		
		Parameters
		----------
		bottom : scalar, optional
		    The bottom ylim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		    The bottom and top ylims may be passed as the tuple
		    (*bottom*, *top*) as the first positional argument (or as
		    the *bottom* keyword argument).
		
		top : scalar, optional
		    The top ylim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		emit : bool, optional
		    Whether to notify observers of limit change (default: ``True``).
		
		auto : bool or None, optional
		    Whether to turn on autoscaling of the y-axis. *True* turns on,
		    *False* turns off (default action), *None* leaves unchanged.
		
		ymin, ymax : scalar, optional
		    They are equivalent to bottom and top respectively,
		    and it is an error to pass both *ymin* and *bottom* or
		    *ymax* and *top*.
		
		Returns
		-------
		bottom, top : (float, float)
		    The new y-axis limits in data coordinates.
		
		See Also
		--------
		get_ylim
		set_ybound, get_ybound
		invert_yaxis, yaxis_inverted
		
		Notes
		-----
		The *bottom* value may be greater than the *top* value, in which
		case the y-axis values will decrease from *bottom* to *top*.
		
		Examples
		--------
		>>> set_ylim(bottom, top)
		>>> set_ylim((bottom, top))
		>>> bottom, top = set_ylim(bottom, top)
		
		One limit may be left unchanged.
		
		>>> set_ylim(top=top_lim)
		
		Limits may be passed in reverse order to flip the direction of
		the y-axis. For example, suppose ``y`` represents depth of the
		ocean in m. The y-axis limits might be set like the following
		so 5000 m depth is at the bottom of the plot and the surface,
		0 m, is at the top.
		
		>>> set_ylim(5000, 0)
	**/
	public function set_ylim(?bottom:Dynamic, ?top:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic):Dynamic;
	/**
		Set padding of Y data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		For example, if your data is in the range [0, 2], a factor of
		``m = 0.1`` will result in a range [-0.2, 2.2].
		
		Negative values -0.5 < m < 0 will result in clipping of the data range.
		I.e. for a data range [0, 2], a factor of ``m = -0.1`` will result in
		a range [0.2, 1.8].
		
		Parameters
		----------
		m : float greater than -0.5
	**/
	public function set_ymargin(m:Dynamic):Dynamic;
	/**
		Set the y-axis scale.
		
		Parameters
		----------
		value : {"linear", "log", "symlog", "logit", ...}
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_yscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y-tick labels with list of strings labels.
		
		Parameters
		----------
		labels : List[str]
		    list of string labels
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default `fontdict` is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, optional
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		A list of `~.text.Text` instances.
		
		Other Parameters
		----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_yticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y ticks with list of *ticks*
		
		Parameters
		----------
		ticks : list
		    List of y-axis tick locations
		
		minor : bool, optional
		    If ``False`` sets major ticks, if ``True`` sets minor ticks.
		    Default is ``False``.
	**/
	public function set_yticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Plot a spectrogram.
		
		Compute and plot a spectrogram of data in *x*.  Data are split into
		*NFFT* length segments and the spectrum of each section is
		computed.  The windowing function *window* is applied to each
		segment, and the amount of overlap of each segment is
		specified with *noverlap*. The spectrogram is plotted as a colormap
		(using imshow).
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : scalar
		    The sampling frequency (samples per time unit).  It is used
		    to calculate the Fourier frequencies, freqs, in cycles per time
		    unit. The default value is 2.
		
		window : callable or ndarray
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `window_hanning`, `window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  The
		    default is `window_hanning`.  If a function is passed as the argument,
		    it must take a data segment as an argument and return the windowed
		    version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}
		    Specifies which sides of the spectrum to return.  Default gives the
		    default behavior, which returns one-sided for real data and both
		    for complex data.  'onesided' forces the return of a one-sided
		    spectrum, while 'twosided' forces two-sided.
		
		pad_to : int
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		NFFT : int
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default 'none'
		    The function applied to each segment before fft-ing, designed to
		    remove the mean or linear trend.  Unlike in MATLAB, where the
		    *detrend* parameter is a vector, in Matplotlib is it a function.
		    The :mod:`~matplotlib.mlab` module defines `.detrend_none`,
		    `.detrend_mean`, and `.detrend_linear`, but you can use a custom
		    function as well.  You can also use a string to choose one of the
		    functions: 'none' calls `.detrend_none`. 'mean' calls `.detrend_mean`.
		    'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, optional
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		mode : {'default', 'psd', 'magnitude', 'angle', 'phase'}
		    What sort of spectrum to use.  Default is 'psd', which takes the
		    power spectral density.  'magnitude' returns the magnitude
		    spectrum.  'angle' returns the phase spectrum without unwrapping.
		    'phase' returns the phase spectrum with unwrapping.
		
		noverlap : int
		    The number of points of overlap between blocks.  The
		    default value is 128.
		
		scale : {'default', 'linear', 'dB'}
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale.  When *mode* is 'psd',
		    this is dB power (10 * log10).  Otherwise this is dB amplitude
		    (20 * log10). 'default' is 'dB' if *mode* is 'psd' or
		    'magnitude' and 'linear' otherwise.  This must be 'linear'
		    if *mode* is 'angle' or 'phase'.
		
		Fc : int
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		cmap
		    A :class:`matplotlib.colors.Colormap` instance; if *None*, use
		    default determined by rc
		
		xextent : *None* or (xmin, xmax)
		    The image extent along the x-axis. The default sets *xmin* to the
		    left border of the first bin (*spectrum* column) and *xmax* to the
		    right border of the last bin. Note that for *noverlap>0* the width
		    of the bins is smaller than those of the segments.
		
		**kwargs
		    Additional kwargs are passed on to imshow which makes the
		    specgram image.
		
		Returns
		-------
		spectrum : 2-D array
		    Columns are the periodograms of successive segments.
		
		freqs : 1-D array
		    The frequencies corresponding to the rows in *spectrum*.
		
		t : 1-D array
		    The times corresponding to midpoints of segments (i.e., the columns
		    in *spectrum*).
		
		im : instance of class :class:`~matplotlib.image.AxesImage`
		    The image created by imshow containing the spectrogram
		
		See Also
		--------
		:func:`psd`
		    :func:`psd` differs in the default overlap; in returning the mean
		    of the segment periodograms; in not returning times; and in
		    generating a line plot instead of colormap.
		
		:func:`magnitude_spectrum`
		    A single spectrum, similar to having a single segment when *mode*
		    is 'magnitude'. Plots a line instead of a colormap.
		
		:func:`angle_spectrum`
		    A single spectrum, similar to having a single segment when *mode*
		    is 'angle'. Plots a line instead of a colormap.
		
		:func:`phase_spectrum`
		    A single spectrum, similar to having a single segment when *mode*
		    is 'phase'. Plots a line instead of a colormap.
		
		Notes
		-----
		The parameters *detrend* and *scale_by_freq* do only apply when *mode*
		is set to 'psd'.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function specgram(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?cmap:Dynamic, ?xextent:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic, ?scale:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the sparsity pattern of a 2D array.
		
		This visualizes the non-zero values of the array.
		
		Two plotting styles are available: image and marker. Both
		are available for full arrays, but only the marker style
		works for `scipy.sparse.spmatrix` instances.
		
		**Image style**
		
		If *marker* and *markersize* are *None*, `~.Axes.imshow` is used. Any
		extra remaining kwargs are passed to this method.
		
		**Marker style**
		
		If *Z* is a `scipy.sparse.spmatrix` or *marker* or *markersize* are
		*None*, a `~matplotlib.lines.Line2D` object will be returned with
		the value of marker determining the marker type, and any
		remaining kwargs passed to `~.Axes.plot`.
		
		Parameters
		----------
		Z : array-like (M, N)
		    The array to be plotted.
		
		precision : float or 'present', optional, default: 0
		    If *precision* is 0, any non-zero value will be plotted. Otherwise,
		    values of :math:`|Z| > precision` will be plotted.
		
		    For :class:`scipy.sparse.spmatrix` instances, you can also
		    pass 'present'. In this case any value present in the array
		    will be plotted, even if it is identically zero.
		
		origin : {'upper', 'lower'}, optional
		    Place the [0,0] index of the array in the upper left or lower left
		    corner of the axes. The convention 'upper' is typically used for
		    matrices and images.
		    If not given, :rc:`image.origin` is used, defaulting to 'upper'.
		
		
		aspect : {'equal', 'auto', None} or float, optional
		    Controls the aspect ratio of the axes. The aspect is of particular
		    relevance for images since it may distort the image, i.e. pixel
		    will not be square.
		
		    This parameter is a shortcut for explicitly calling
		    `.Axes.set_aspect`. See there for further details.
		
		    - 'equal': Ensures an aspect ratio of 1. Pixels will be square.
		    - 'auto': The axes is kept fixed and the aspect is adjusted so
		      that the data fit in the axes. In general, this will result in
		      non-square pixels.
		    - *None*: Use :rc:`image.aspect` (default: 'equal').
		
		    Default: 'equal'
		
		Returns
		-------
		ret : `~matplotlib.image.AxesImage` or `.Line2D`
		    The return type depends on the plotting style (see above).
		
		Other Parameters
		----------------
		**kwargs
		    The supported additional parameters depend on the plotting style.
		
		    For the image style, you can pass the following additional
		    parameters of `~.Axes.imshow`:
		
		    - *cmap*
		    - *alpha*
		    - *url*
		    - any `.Artist` properties (passed on to the `.AxesImage`)
		
		    For the marker style, you can pass any `.Line2D` property except
		    for *linestyle*:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
	**/
	public function spy(Z:Dynamic, ?precision:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?aspect:Dynamic, ?origin:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a stacked area plot.
		
		Parameters
		----------
		x : 1d array of dimension N
		
		y : 2d array (dimension MxN), or sequence of 1d arrays (each dimension 1xN)
		
		    The data is assumed to be unstacked. Each of the following
		    calls is legal::
		
		        stackplot(x, y)               # where y is MxN
		        stackplot(x, y1, y2, y3, y4)  # where y1, y2, y3, y4, are all 1xNm
		
		baseline : {'zero', 'sym', 'wiggle', 'weighted_wiggle'}
		    Method used to calculate the baseline:
		
		    - ``'zero'``: Constant zero baseline, i.e. a simple stacked plot.
		    - ``'sym'``:  Symmetric around zero and is sometimes called
		      'ThemeRiver'.
		    - ``'wiggle'``: Minimizes the sum of the squared slopes.
		    - ``'weighted_wiggle'``: Does the same but weights to account for
		      size of each layer. It is also called 'Streamgraph'-layout. More
		      details can be found at http://leebyron.com/streamgraph/.
		
		labels : Length N sequence of strings
		    Labels to assign to each data series.
		
		colors : Length N sequence of colors
		    A list or tuple of colors. These will be cycled through and used to
		    colour the stacked areas.
		
		**kwargs
		    All other keyword arguments are passed to `Axes.fill_between()`.
		
		
		Returns
		-------
		list : list of `.PolyCollection`
		    A list of `.PolyCollection` instances, one for each element in the
		    stacked area plot.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	static public function stackplot(axes:Dynamic, x:Dynamic, ?args:python.VarArgs<Dynamic>, ?labels:Dynamic, ?colors:Dynamic, ?baseline:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		Called when a pan operation has started.
		
		*x*, *y* are the mouse coordinates in display coords.
		button is the mouse button number:
		
		* 1: LEFT
		* 2: MIDDLE
		* 3: RIGHT
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function start_pan(x:Dynamic, y:Dynamic, button:Dynamic):Dynamic;
	/**
		Create a stem plot.
		
		A stem plot plots vertical lines at each *x* location from the baseline
		to *y*, and places a marker there.
		
		Call signature::
		
		  stem([x,] y, linefmt=None, markerfmt=None, basefmt=None)
		
		The x-positions are optional. The formats may be provided either as
		positional or as keyword-arguments.
		
		Parameters
		----------
		x : array-like, optional
		    The x-positions of the stems. Default: (0, 1, ..., len(y) - 1).
		
		y : array-like
		    The y-values of the stem heads.
		
		linefmt : str, optional
		    A string defining the properties of the vertical lines. Usually,
		    this will be a color or a color and a linestyle:
		
		    =========  =============
		    Character  Line Style
		    =========  =============
		    ``'-'``    solid line
		    ``'--'``   dashed line
		    ``'-.'``   dash-dot line
		    ``':'``    dotted line
		    =========  =============
		
		    Default: 'C0-', i.e. solid line with the first color of the color
		    cycle.
		
		    Note: While it is technically possible to specify valid formats
		    other than color or color and linestyle (e.g. 'rx' or '-.'), this
		    is beyond the intention of the method and will most likely not
		    result in a reasonable reasonable plot.
		
		markerfmt : str, optional
		    A string defining the properties of the markers at the stem heads.
		    Default: 'C0o', i.e. filled circles with the first color of the
		    color cycle.
		
		basefmt : str, optional
		    A format string defining the properties of the baseline.
		
		    Default: 'C3-' ('C2-' in classic mode).
		
		bottom : float, optional, default: 0
		    The y-position of the baseline.
		
		label : str, optional, default: None
		    The label to use for the stems in legends.
		
		use_line_collection : bool, optional, default: False
		    If ``True``, store and plot the stem lines as a
		    `~.collections.LineCollection` instead of individual lines. This
		    significantly increases performance, and will become the default
		    option in Matplotlib 3.3. If ``False``, defaults to the old
		    behavior of using a list of `.Line2D` objects.
		
		
		Returns
		-------
		container : :class:`~matplotlib.container.StemContainer`
		    The container may be treated like a tuple
		    (*markerline*, *stemlines*, *baseline*)
		
		
		Notes
		-----
		
		.. seealso::
		    The MATLAB function
		    `stem <http://www.mathworks.com/help/techdoc/ref/stem.html>`_
		    which inspired this method.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All positional and all keyword arguments.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function stem(?args:python.VarArgs<Dynamic>, ?linefmt:Dynamic, ?markerfmt:Dynamic, ?basefmt:Dynamic, ?bottom:Dynamic, ?label:Dynamic, ?use_line_collection:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Make a step plot.
		
		Call signatures::
		
		    step(x, y, [fmt], *, data=None, where='pre', **kwargs)
		    step(x, y, [fmt], x2, y2, [fmt2], ..., *, where='pre', **kwargs)
		
		This is just a thin wrapper around `.plot` which changes some
		formatting options. Most of the concepts and parameters of plot can be
		used here as well.
		
		Parameters
		----------
		x : array_like
		    1-D sequence of x positions. It is assumed, but not checked, that
		    it is uniformly increasing.
		
		y : array_like
		    1-D sequence of y levels.
		
		fmt : str, optional
		    A format string, e.g. 'g' for a green line. See `.plot` for a more
		    detailed description.
		
		    Note: While full format strings are accepted, it is recommended to
		    only specify the color. Line styles are currently ignored (use
		    the keyword argument *linestyle* instead). Markers are accepted
		    and plotted on the given positions, however, this is a rarely
		    needed feature for step plots.
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*.
		
		where : {'pre', 'post', 'mid'}, optional, default 'pre'
		    Define where the steps should be placed:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Returns
		-------
		lines
		    A list of `.Line2D` objects representing the plotted data.
		
		Other Parameters
		----------------
		**kwargs
		    Additional parameters are the same as those for `.plot`.
		
		Notes
		-----
		.. [notes section required to get data note injection right]
	**/
	public function step(x:Dynamic, y:Dynamic, ?args:python.VarArgs<Dynamic>, ?where:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Draw streamlines of a vector flow.
		
		Parameters
		----------
		x, y : 1d arrays
		    An evenly spaced grid.
		u, v : 2d arrays
		    *x* and *y*-velocities. Number of rows should match length of *y*, and
		    the number of columns should match *x*.
		density : float or 2-tuple
		    Controls the closeness of streamlines. When ``density = 1``, the domain
		    is divided into a 30x30 grid---*density* linearly scales this grid.
		    Each cell in the grid can have, at most, one traversing streamline.
		    For different densities in each direction, use [density_x, density_y].
		linewidth : numeric or 2d array
		    Vary linewidth when given a 2d array with the same shape as velocities.
		color : matplotlib color code, or 2d array
		    Streamline color. When given an array with the same shape as
		    velocities, *color* values are converted to colors using *cmap*.
		cmap : `~matplotlib.colors.Colormap`
		    Colormap used to plot streamlines and arrows. Only necessary when using
		    an array input for *color*.
		norm : `~matplotlib.colors.Normalize`
		    Normalize object used to scale luminance data to 0, 1. If ``None``,
		    stretch (min, max) to (0, 1). Only necessary when *color* is an array.
		arrowsize : float
		    Factor scale arrow size.
		arrowstyle : str
		    Arrow style specification.
		    See `~matplotlib.patches.FancyArrowPatch`.
		minlength : float
		    Minimum length of streamline in axes coordinates.
		start_points : Nx2 array
		    Coordinates of starting points for the streamlines.
		    In data coordinates, the same as the *x* and *y* arrays.
		zorder : int
		    Any number.
		maxlength : float
		    Maximum length of streamline in axes coordinates.
		integration_direction : ['forward' | 'backward' | 'both']
		    Integrate the streamline in forward, backward or both directions.
		    default is ``'both'``.
		
		Returns
		-------
		stream_container : StreamplotSet
		    Container object with attributes
		
		    - lines: `matplotlib.collections.LineCollection` of streamlines
		
		    - arrows: collection of `matplotlib.patches.FancyArrowPatch`
		      objects representing arrows half-way along stream
		      lines.
		
		    This container will probably change in the future to allow changes
		    to the colormap, alpha, etc. for both lines and arrows, but these
		    changes should be backward compatible.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'start_points', 'u', 'v', 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	static public function streamplot(axes:Dynamic, x:Dynamic, y:Dynamic, u:Dynamic, v:Dynamic, ?density:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?arrowsize:Dynamic, ?arrowstyle:Dynamic, ?minlength:Dynamic, ?transform:Dynamic, ?zorder:Dynamic, ?start_points:Dynamic, ?maxlength:Dynamic, ?integration_direction:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Add a table to an `~.axes.Axes`.
		
		At least one of *cellText* or *cellColours* must be specified. These
		parameters must be 2D lists, in which the outer lists define the rows and
		the inner list define the column values per row. Each row must have the
		same number of elements.
		
		The table can optionally have row and column headers, which are configured
		using *rowLabels*, *rowColours*, *rowLoc* and *colLabels*, *colColours*,
		*colLoc* respectively.
		
		For finer grained control over tables, use the `.Table` class and add it to
		the axes with `.Axes.add_table`.
		
		Parameters
		----------
		cellText : 2D list of str, optional
		    The texts to place into the table cells.
		
		    *Note*: Line breaks in the strings are currently not accounted for and
		    will result in the text exceeding the cell boundaries.
		
		cellColours : 2D list of matplotlib color specs, optional
		    The background colors of the cells.
		
		cellLoc : {'left', 'center', 'right'}, default: 'right'
		    The alignment of the text within the cells.
		
		colWidths : list of float, optional
		    The column widths in units of the axes. If not given, all columns will
		    have a width of *1 / ncols*.
		
		rowLabels : list of str, optional
		    The text of the row header cells.
		
		rowColours : list of matplotlib color specs, optional
		    The colors of the row header cells.
		
		rowLoc : {'left', 'center', 'right'}, optional, default: 'left'
		    The text alignment of the row header cells.
		
		colLabels : list of str, optional
		    The text of the column header cells.
		
		colColours : list of matplotlib color specs, optional
		    The colors of the column header cells.
		
		rowLoc : {'left', 'center', 'right'}, optional, default: 'left'
		    The text alignment of the column header cells.
		
		loc : str, optional
		    The position of the cell with respect to *ax*. This must be one of
		    the `~.Table.codes`.
		
		bbox : `.Bbox`, optional
		    A bounding box to draw the table into. If this is not *None*, this
		    overrides *loc*.
		
		edges : substring of 'BRTL' or {'open', 'closed', 'horizontal', 'vertical'}
		    The cell edges to be drawn with a line. See also
		    `~.CustomCell.visible_edges`.
		
		Other Parameters
		----------------
		**kwargs
		    `.Table` properties.
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  contains: callable
		  figure: `.Figure`
		  fontsize: float
		  gid: str
		  in_layout: bool
		  label: object
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
		
		Returns
		-------
		table : `~matplotlib.table.Table`
		    The created table.
	**/
	static public function table(ax:Dynamic, ?cellText:Dynamic, ?cellColours:Dynamic, ?cellLoc:Dynamic, ?colWidths:Dynamic, ?rowLabels:Dynamic, ?rowColours:Dynamic, ?rowLoc:Dynamic, ?colLabels:Dynamic, ?colColours:Dynamic, ?colLoc:Dynamic, ?loc:Dynamic, ?bbox:Dynamic, ?edges:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add text to the axes.
		
		Add the text *s* to the axes at location *x*, *y* in data coordinates.
		
		Parameters
		----------
		x, y : scalars
		    The position to place the text. By default, this is in data
		    coordinates. The coordinate system can be changed using the
		    *transform* parameter.
		
		s : str
		    The text.
		
		fontdict : dictionary, optional, default: None
		    A dictionary to override the default text properties. If fontdict
		    is None, the defaults are determined by your rc parameters.
		
		withdash : boolean, optional, default: False
		    Creates a `~matplotlib.text.TextWithDash` instance instead of a
		    `~matplotlib.text.Text` instance.
		
		Returns
		-------
		text : `.Text`
		    The created `.Text` instance.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.text.Text` properties.
		    Other miscellaneous text parameters.
		
		Examples
		--------
		Individual keyword arguments can be used to override any given
		parameter::
		
		    >>> text(x, y, s, fontsize=12)
		
		The default transform specifies that text is in data coords,
		alternatively, you can specify text in axis coords (0,0 is
		lower-left and 1,1 is upper-right).  The example below places
		text in the center of the axes::
		
		    >>> text(0.5, 0.5, 'matplotlib', horizontalalignment='center',
		    ...      verticalalignment='center', transform=ax.transAxes)
		
		You can put a rectangular box around the text instance (e.g., to
		set a background color) by using the keyword `bbox`.  `bbox` is
		a dictionary of `~matplotlib.patches.Rectangle`
		properties.  For example::
		
		    >>> text(x, y, s, bbox=dict(facecolor='red', alpha=0.5))
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?fontdict:Dynamic, ?withdash:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change the appearance of ticks, tick labels, and gridlines.
		
		Parameters
		----------
		axis : {'x', 'y', 'both'}, optional
		    Which axis to apply the parameters to.
		
		Other Parameters
		----------------
		
		axis : {'x', 'y', 'both'}
		    Axis on which to operate; default is 'both'.
		
		reset : bool
		    If *True*, set all parameters to defaults
		    before processing other keyword arguments.  Default is
		    *False*.
		
		which : {'major', 'minor', 'both'}
		    Default is 'major'; apply arguments to *which* ticks.
		
		direction : {'in', 'out', 'inout'}
		    Puts ticks inside the axes, outside the axes, or both.
		
		length : float
		    Tick length in points.
		
		width : float
		    Tick width in points.
		
		color : color
		    Tick color; accepts any mpl color spec.
		
		pad : float
		    Distance in points between tick and label.
		
		labelsize : float or str
		    Tick label font size in points or as a string (e.g., 'large').
		
		labelcolor : color
		    Tick label color; mpl color spec.
		
		colors : color
		    Changes the tick color and the label color to the same value:
		    mpl color spec.
		
		zorder : float
		    Tick and label zorder.
		
		bottom, top, left, right : bool
		    Whether to draw the respective ticks.
		
		labelbottom, labeltop, labelleft, labelright : bool
		    Whether to draw the respective tick labels.
		
		labelrotation : float
		    Tick label rotation
		
		grid_color : color
		    Changes the gridline color to the given mpl color spec.
		
		grid_alpha : float
		    Transparency of gridlines: 0 (transparent) to 1 (opaque).
		
		grid_linewidth : float
		    Width of gridlines in points.
		
		grid_linestyle : string
		    Any valid `~matplotlib.lines.Line2D` line style spec.
		
		Examples
		--------
		
		Usage ::
		
		    ax.tick_params(direction='out', length=6, width=2, colors='r',
		                   grid_color='r', grid_alpha=0.5)
		
		This will make all major ticks be red, pointing out of the box,
		and with dimensions 6 points by 2 points.  Tick labels will
		also be red.  Gridlines will be red and translucent.
	**/
	public function tick_params(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change the `~matplotlib.ticker.ScalarFormatter` used by
		default for linear axes.
		
		Optional keyword arguments:
		
		  ==============   =========================================
		  Keyword          Description
		  ==============   =========================================
		  *axis*           [ 'x' | 'y' | 'both' ]
		  *style*          [ 'sci' (or 'scientific') | 'plain' ]
		                   plain turns off scientific notation
		  *scilimits*      (m, n), pair of integers; if *style*
		                   is 'sci', scientific notation will
		                   be used for numbers outside the range
		                   10\ :sup:`m` to 10\ :sup:`n`.
		                   Use (0,0) to include all numbers.
		                   Use (m,m) where m <> 0 to fix the order
		                   of magnitude to 10\ :sup:`m`.
		  *useOffset*      [ bool | offset ]; if True,
		                   the offset will be calculated as needed;
		                   if False, no offset will be used; if a
		                   numeric offset is specified, it will be
		                   used.
		  *useLocale*      If True, format the number according to
		                   the current locale.  This affects things
		                   such as the character used for the
		                   decimal separator.  If False, use
		                   C-style (English) formatting.  The
		                   default setting is controlled by the
		                   axes.formatter.use_locale rcparam.
		  *useMathText*    If True, render the offset and scientific
		                   notation in mathtext
		  ==============   =========================================
		
		Only the major ticks are affected.
		If the method is called when the `~matplotlib.ticker.ScalarFormatter`
		is not the `~matplotlib.ticker.Formatter` being used, an
		`AttributeError` will be raised.
	**/
	public function ticklabel_format(?axis:Dynamic, ?style:Dynamic, ?scilimits:Dynamic, ?useOffset:Dynamic, ?useLocale:Dynamic, ?useMathText:Dynamic):Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		
		`.tricontour` and `.tricontourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values are
		the same for both versions.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontour(triangulation, ...)
		
		where *triangulation* is a `matplotlib.tri.Triangulation` object, or ::
		
		    tricontour(x, y, ...)
		    tricontour(x, y, triangles, ...)
		    tricontour(x, y, triangles=triangles, ...)
		    tricontour(x, y, mask=mask, ...)
		    tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontour(..., Z, N)
		
		contour up to *N+1* automatically chosen contour levels (*N* intervals).
		
		::
		
		    tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*,
		which must be in increasing order.
		
		::
		
		    tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*,
		which must be in increasing order.
		
		::
		
		    tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		`.tricontour(...)` returns a `~matplotlib.contour.TriContourSet` object.
		
		Optional keyword arguments:
		
		    *colors*: [ *None* | string | (mpl_colors) ]
		    If *None*, the colormap specified by cmap will be used.
		
		    If a string, like 'r' or 'red', all levels will be plotted in this
		    color.
		
		    If a tuple of matplotlib color args (string, float, rgb, etc),
		    different levels will be plotted in different colors in the order
		    specified.
		
		    *alpha*: float
		    The alpha blending value
		
		    *cmap*: [ *None* | Colormap ]
		    A cm :class:`~matplotlib.colors.Colormap` instance or
		    *None*. If *cmap* is *None* and *colors* is *None*, a
		    default Colormap is used.
		
		    *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance for
		    scaling data values to colors. If *norm* is *None* and
		    *colors* is *None*, the default linear scaling is used.
		
		    *levels* [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw, in increasing order; e.g., to draw just
		    the zero contour pass ``levels=[0]``
		
		    *origin*: [ *None* | 'upper' | 'lower' | 'image' ]
		    If *None*, the first value of *Z* will correspond to the
		    lower left corner, location (0,0). If 'image', the rc
		    value for ``image.origin`` will be used.
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		    *extent*: [ *None* | (x0,x1,y0,y1) ]
		
		    If *origin* is not *None*, then *extent* is interpreted as
		    in :func:`matplotlib.pyplot.imshow`: it gives the outer
		    pixel boundaries. In this case, the position of Z[0,0]
		    is the center of the pixel, not a corner. If *origin* is
		    *None*, then (*x0*, *y0*) is the position of Z[0,0], and
		    (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		    *locator*: [ *None* | ticker.Locator subclass ]
		    If *locator* is None, the default
		    :class:`~matplotlib.ticker.MaxNLocator` is used. The
		    locator is used to determine the contour levels if they
		    are not given explicitly via the *V* argument.
		
		    *extend*: [ 'neither' | 'both' | 'min' | 'max' ]
		    Unless this is 'neither', contour levels are automatically
		    added to one or both ends of the range so that all data
		    are included. These added ranges are then mapped to the
		    special colormap values which default to the ends of the
		    colormap range, but can be set via
		    :meth:`matplotlib.colors.Colormap.set_under` and
		    :meth:`matplotlib.colors.Colormap.set_over` methods.
		
		    *xunits*, *yunits*: [ *None* | registered units ]
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		tricontour-only keyword arguments:
		
		    *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, defaults to rc:`lines.linewidth`.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified
		
		    *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the 'solid' is used.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		    If contour is using a monochrome colormap and the contour
		    level is less than 0, then the linestyle specified
		    in :rc:`contour.negative_linestyle` will be used.
		
		tricontourf-only keyword arguments:
		
		    *antialiased*: bool
		    enable antialiasing
		
		Note: `.tricontourf` fills intervals that are closed at the top; that is,
		for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < Z <= z2
		
		except for the lowest interval, which is closed on both sides (i.e. it
		includes the lowest value).
	**/
	static public function tricontour(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		
		`.tricontour` and `.tricontourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values are
		the same for both versions.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontour(triangulation, ...)
		
		where *triangulation* is a `matplotlib.tri.Triangulation` object, or ::
		
		    tricontour(x, y, ...)
		    tricontour(x, y, triangles, ...)
		    tricontour(x, y, triangles=triangles, ...)
		    tricontour(x, y, mask=mask, ...)
		    tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontour(..., Z, N)
		
		contour up to *N+1* automatically chosen contour levels (*N* intervals).
		
		::
		
		    tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*,
		which must be in increasing order.
		
		::
		
		    tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*,
		which must be in increasing order.
		
		::
		
		    tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		`.tricontour(...)` returns a `~matplotlib.contour.TriContourSet` object.
		
		Optional keyword arguments:
		
		    *colors*: [ *None* | string | (mpl_colors) ]
		    If *None*, the colormap specified by cmap will be used.
		
		    If a string, like 'r' or 'red', all levels will be plotted in this
		    color.
		
		    If a tuple of matplotlib color args (string, float, rgb, etc),
		    different levels will be plotted in different colors in the order
		    specified.
		
		    *alpha*: float
		    The alpha blending value
		
		    *cmap*: [ *None* | Colormap ]
		    A cm :class:`~matplotlib.colors.Colormap` instance or
		    *None*. If *cmap* is *None* and *colors* is *None*, a
		    default Colormap is used.
		
		    *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance for
		    scaling data values to colors. If *norm* is *None* and
		    *colors* is *None*, the default linear scaling is used.
		
		    *levels* [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw, in increasing order; e.g., to draw just
		    the zero contour pass ``levels=[0]``
		
		    *origin*: [ *None* | 'upper' | 'lower' | 'image' ]
		    If *None*, the first value of *Z* will correspond to the
		    lower left corner, location (0,0). If 'image', the rc
		    value for ``image.origin`` will be used.
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		    *extent*: [ *None* | (x0,x1,y0,y1) ]
		
		    If *origin* is not *None*, then *extent* is interpreted as
		    in :func:`matplotlib.pyplot.imshow`: it gives the outer
		    pixel boundaries. In this case, the position of Z[0,0]
		    is the center of the pixel, not a corner. If *origin* is
		    *None*, then (*x0*, *y0*) is the position of Z[0,0], and
		    (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		    *locator*: [ *None* | ticker.Locator subclass ]
		    If *locator* is None, the default
		    :class:`~matplotlib.ticker.MaxNLocator` is used. The
		    locator is used to determine the contour levels if they
		    are not given explicitly via the *V* argument.
		
		    *extend*: [ 'neither' | 'both' | 'min' | 'max' ]
		    Unless this is 'neither', contour levels are automatically
		    added to one or both ends of the range so that all data
		    are included. These added ranges are then mapped to the
		    special colormap values which default to the ends of the
		    colormap range, but can be set via
		    :meth:`matplotlib.colors.Colormap.set_under` and
		    :meth:`matplotlib.colors.Colormap.set_over` methods.
		
		    *xunits*, *yunits*: [ *None* | registered units ]
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		tricontour-only keyword arguments:
		
		    *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, defaults to rc:`lines.linewidth`.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified
		
		    *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the 'solid' is used.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		    If contour is using a monochrome colormap and the contour
		    level is less than 0, then the linestyle specified
		    in :rc:`contour.negative_linestyle` will be used.
		
		tricontourf-only keyword arguments:
		
		    *antialiased*: bool
		    enable antialiasing
		
		Note: `.tricontourf` fills intervals that are closed at the top; that is,
		for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < Z <= z2
		
		except for the lowest interval, which is closed on both sides (i.e. it
		includes the lowest value).
	**/
	static public function tricontourf(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot of an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either::
		
		  tripcolor(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tripcolor(x, y, ...)
		  tripcolor(x, y, triangles, ...)
		  tripcolor(x, y, triangles=triangles, ...)
		  tripcolor(x, y, mask=mask, ...)
		  tripcolor(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The next argument must be *C*, the array of color values, either
		one per point in the triangulation if color values are defined at
		points, or one per triangle in the triangulation if color values
		are defined at triangles. If there are the same number of points
		and triangles in the triangulation it is assumed that color
		values are defined at points; to force the use of color values at
		triangles use the kwarg ``facecolors=C`` instead of just ``C``.
		
		*shading* may be 'flat' (the default) or 'gouraud'. If *shading*
		is 'flat' and C values are defined at points, the color values
		used for each triangle are from the mean C of the triangle's
		three points. If *shading* is 'gouraud' then color values must be
		defined at points.
		
		The remaining kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.pcolor`.
	**/
	static public function tripcolor(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?shading:Dynamic, ?facecolors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a unstructured triangular grid as lines and/or markers.
		
		The triangulation to plot can be specified in one of two ways;
		either::
		
		  triplot(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  triplot(x, y, ...)
		  triplot(x, y, triangles, ...)
		  triplot(x, y, triangles=triangles, ...)
		  triplot(x, y, mask=mask, ...)
		  triplot(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The remaining args and kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.plot`.
		
		Return a list of 2 :class:`~matplotlib.lines.Line2D` containing
		respectively:
		
		    - the lines plotted for triangles edges
		    - the markers plotted for triangles nodes
	**/
	static public function triplot(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a twin Axes sharing the xaxis
		
		Create a new Axes instance with an invisible x-axis and an independent
		y-axis positioned opposite to the original one (i.e. at right). The
		x-axis autoscale setting will be inherited from the original Axes.
		To ensure that the tick marks of both y-axes align, see
		`~matplotlib.ticker.LinearLocator`
		
		Returns
		-------
		ax_twin : Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twinx, pick
		events are only called for the artists in the top-most axes.
	**/
	public function twinx():Dynamic;
	/**
		Create a twin Axes sharing the yaxis
		
		Create a new Axes instance with an invisible y-axis and an independent
		x-axis positioned opposite to the original one (i.e. at top). The
		y-axis autoscale setting will be inherited from the original Axes.
		To ensure that the tick marks of both x-axes align, see
		`~matplotlib.ticker.LinearLocator`
		
		Returns
		-------
		ax_twin : Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twiny, pick
		events are only called for the artists in the top-most axes.
	**/
	public function twiny():Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Extend the `~.Axes.dataLim` BBox to include the given points.
		
		If no data is set currently, the BBox will ignore its limits and set
		the bound to be the bounds of the xydata (*xys*). Otherwise, it will
		compute the bounds of the union of its current data and the data in
		*xys*.
		
		Parameters
		----------
		xys : 2D array-like
		    The points to include in the data limits BBox. This can be either
		    a list of (x, y) tuples or a Nx2 array.
		
		updatex, updatey : bool, optional, default *True*
		    Whether to update the x/y limits.
	**/
	public function update_datalim(xys:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Extend the `~.Axes.datalim` BBox to include the given
		`~matplotlib.transforms.Bbox`.
		
		Parameters
		----------
		bounds : `~matplotlib.transforms.Bbox`
	**/
	public function update_datalim_bounds(bounds:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		When autoscaling, whether to obey all `Artist.sticky_edges`.
		
		Default is ``True``.
		
		Setting this to ``False`` ensures that the specified margins
		will be applied, even if the plot includes an image, for
		example, which would otherwise force a view limit to coincide
		with its data limit.
		
		The changing this property does not change the plot until
		`autoscale` or `autoscale_view` is called.
	**/
	public var use_sticky_edges : Dynamic;
	/**
		Drawing function for violin plots.
		
		Draw a violin plot for each column of `vpstats`. Each filled area
		extends to represent the entire data range, with optional lines at the
		mean, the median, the minimum, and the maximum.
		
		Parameters
		----------
		
		vpstats : list of dicts
		  A list of dictionaries containing stats for each violin plot.
		  Required keys are:
		
		  - ``coords``: A list of scalars containing the coordinates that
		    the violin's kernel density estimate were evaluated at.
		
		  - ``vals``: A list of scalars containing the values of the
		    kernel density estimate at each of the coordinates given
		    in *coords*.
		
		  - ``mean``: The mean value for this violin's dataset.
		
		  - ``median``: The median value for this violin's dataset.
		
		  - ``min``: The minimum value for this violin's dataset.
		
		  - ``max``: The maximum value for this violin's dataset.
		
		positions : array-like, default = [1, 2, ..., n]
		  Sets the positions of the violins. The ticks and limits are
		  automatically set to match the positions.
		
		vert : bool, default = True.
		  If true, plots the violins vertically.
		  Otherwise, plots the violins horizontally.
		
		widths : array-like, default = 0.5
		  Either a scalar or a vector that sets the maximal width of
		  each violin. The default is 0.5, which uses about half of the
		  available horizontal space.
		
		showmeans : bool, default = False
		  If true, will toggle rendering of the means.
		
		showextrema : bool, default = True
		  If true, will toggle rendering of the extrema.
		
		showmedians : bool, default = False
		  If true, will toggle rendering of the medians.
		
		Returns
		-------
		result : dict
		  A dictionary mapping each component of the violinplot to a
		  list of the corresponding collection instances created. The
		  dictionary has the following keys:
		
		    - ``bodies``: A list of the
		      :class:`matplotlib.collections.PolyCollection` instances
		      containing the filled area of each violin.
		
		    - ``cmeans``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the mean values of each of the
		      violin's distribution.
		
		    - ``cmins``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the bottom of each violin's
		      distribution.
		
		    - ``cmaxes``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the top of each violin's
		      distribution.
		
		    - ``cbars``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the centers of each violin's
		      distribution.
		
		    - ``cmedians``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the median values of each of the
		      violin's distribution.
	**/
	public function violin(vpstats:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Make a violin plot.
		
		Make a violin plot for each column of *dataset* or each vector in
		sequence *dataset*.  Each filled area extends to represent the
		entire data range, with optional lines at the mean, the median,
		the minimum, and the maximum.
		
		Parameters
		----------
		dataset : Array or a sequence of vectors.
		  The input data.
		
		positions : array-like, default = [1, 2, ..., n]
		  Sets the positions of the violins. The ticks and limits are
		  automatically set to match the positions.
		
		vert : bool, default = True.
		  If true, creates a vertical violin plot.
		  Otherwise, creates a horizontal violin plot.
		
		widths : array-like, default = 0.5
		  Either a scalar or a vector that sets the maximal width of
		  each violin. The default is 0.5, which uses about half of the
		  available horizontal space.
		
		showmeans : bool, default = False
		  If `True`, will toggle rendering of the means.
		
		showextrema : bool, default = True
		  If `True`, will toggle rendering of the extrema.
		
		showmedians : bool, default = False
		  If `True`, will toggle rendering of the medians.
		
		points : scalar, default = 100
		  Defines the number of points to evaluate each of the
		  gaussian kernel density estimations at.
		
		bw_method : str, scalar or callable, optional
		  The method used to calculate the estimator bandwidth.  This can be
		  'scott', 'silverman', a scalar constant or a callable.  If a
		  scalar, this will be used directly as `kde.factor`.  If a
		  callable, it should take a `GaussianKDE` instance as its only
		  parameter and return a scalar. If None (default), 'scott' is used.
		
		Returns
		-------
		
		result : dict
		  A dictionary mapping each component of the violinplot to a
		  list of the corresponding collection instances created. The
		  dictionary has the following keys:
		
		    - ``bodies``: A list of the
		      :class:`matplotlib.collections.PolyCollection` instances
		      containing the filled area of each violin.
		
		    - ``cmeans``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the mean values of each of the
		      violin's distribution.
		
		    - ``cmins``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the bottom of each violin's
		      distribution.
		
		    - ``cmaxes``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the top of each violin's
		      distribution.
		
		    - ``cbars``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the centers of each violin's
		      distribution.
		
		    - ``cmedians``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the median values of each of the
		      violin's distribution.
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'dataset'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function violinplot(dataset:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic, ?points:Dynamic, ?bw_method:Dynamic, ?data:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Plot vertical lines.
		
		Plot vertical lines at each *x* from *ymin* to *ymax*.
		
		Parameters
		----------
		x : scalar or 1D array_like
		    x-indexes where to plot the lines.
		
		ymin, ymax : scalar or 1D array_like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : array_like of colors, optional, default: 'k'
		
		linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, optional
		
		label : string, optional, default: ''
		
		Returns
		-------
		lines : `~matplotlib.collections.LineCollection`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.collections.LineCollection` properties.
		
		See also
		--------
		hlines : horizontal lines
		axvline: vertical line across the axes
		
		Notes
		-----
		
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'colors', 'x', 'ymax', 'ymin'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function vlines(x:Dynamic, ymin:Dynamic, ymax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets up x-axis ticks and labels that treat the x data as dates.
		
		Parameters
		----------
		tz : string or `tzinfo` instance, optional
		    Timezone.  Defaults to :rc:`timezone`.
	**/
	public function xaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the x-axis is inverted.
		
		The axis is inverted if the left value is larger than the right value.
		
		See Also
		--------
		invert_xaxis
		get_xlim, set_xlim
		get_xbound, set_xbound
	**/
	public function xaxis_inverted():Dynamic;
	/**
		Plot the cross correlation between *x* and *y*.
		
		The correlation with lag k is defined as
		:math:`\sum_n x[n+k] \cdot y^*[n]`, where :math:`y^*` is the complex
		conjugate of :math:`y`.
		
		Parameters
		----------
		x : array-like of length n
		
		y : array-like of length n
		
		detrend : callable, optional, default: `mlab.detrend_none`
		    *x* and *y* are detrended by the *detrend* callable. This must be a
		    function ``x = detrend(x)`` accepting and returning an
		    `numpy.array`. Default is no normalization.
		
		normed : bool, optional, default: True
		    If ``True``, input vectors are normalised to unit length.
		
		usevlines : bool, optional, default: True
		    Determines the plot style.
		
		    If ``True``, vertical lines are plotted from 0 to the xcorr value
		    using `Axes.vlines`. Additionally, a horizontal line is plotted
		    at y=0 using `Axes.axhline`.
		
		    If ``False``, markers are plotted at the xcorr values using
		    `Axes.plot`.
		
		maxlags : int, optional, default: 10
		    Number of lags to show. If None, will return all ``2 * len(x) - 1``
		    lags.
		
		Returns
		-------
		lags : array (length ``2*maxlags+1``)
		    The lag vector.
		c : array  (length ``2*maxlags+1``)
		    The auto correlation vector.
		line : `.LineCollection` or `.Line2D`
		    `.Artist` added to the axes of the correlation:
		
		    - `.LineCollection` if *usevlines* is True.
		    - `.Line2D` if *usevlines* is False.
		b : `.Line2D` or None
		    Horizontal line at 0 if *usevlines* is True
		    None *usevlines* is False.
		
		Other Parameters
		----------------
		linestyle : `.Line2D` property, optional
		    The linestyle for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		marker : str, optional, default: 'o'
		    The marker for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		Notes
		-----
		The cross correlation is performed with :func:`numpy.correlate` with
		``mode = "full"``.
		
		.. note::
		    In addition to the above described arguments, this function can take a
		    **data** keyword argument. If such a **data** argument is given, the
		    following arguments are replaced by **data[<arg>]**:
		
		    * All arguments with the following names: 'x', 'y'.
		
		    Objects passed as **data** must support item access (``data[<arg>]``) and
		    membership test (``<arg> in data``).
	**/
	public function xcorr(x:Dynamic, y:Dynamic, ?normed:Dynamic, ?detrend:Dynamic, ?usevlines:Dynamic, ?maxlags:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets up y-axis ticks and labels that treat the y data as dates.
		
		Parameters
		----------
		tz : string or `tzinfo` instance, optional
		    Timezone.  Defaults to :rc:`timezone`.
	**/
	public function yaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the y-axis is inverted.
		
		The axis is inverted if the bottom value is larger than the top value.
		
		See Also
		--------
		invert_yaxis
		get_ylim, set_ylim
		get_ybound, set_ybound
	**/
	public function yaxis_inverted():Dynamic;
	static public var zorder : Dynamic;
}