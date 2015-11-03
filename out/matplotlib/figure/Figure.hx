/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure", "Figure") extern class Figure {
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
		*figsize*
		    w,h tuple in inches
		
		*dpi*
		    Dots per inch
		
		*facecolor*
		    The figure patch facecolor; defaults to rc ``figure.facecolor``
		
		*edgecolor*
		    The figure patch edge color; defaults to rc ``figure.edgecolor``
		
		*linewidth*
		    The figure patch edge linewidth; the default linewidth of the frame
		
		*frameon*
		    If *False*, suppress drawing the figure frame
		
		*subplotpars*
		    A :class:`SubplotParams` instance, defaults to rc
		
		*tight_layout*
		    If *False* use *subplotpars*; if *True* adjust subplot
		    parameters using :meth:`tight_layout` with default padding.
		    When providing a dict containing the keys `pad`, `w_pad`, `h_pad`
		    and `rect`, the default :meth:`tight_layout` paddings will be
		    overridden.
		    Defaults to rc ``figure.autolayout``.
	**/
	@:native("__init__")
	public function ___init__(?figsize:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?frameon:Dynamic, ?subplotpars:Dynamic, ?tight_layout:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		helper for :func:`~matplotlib.pyplot.gci`;
		do not use elsewhere.
	**/
	public function _gci():Dynamic;
	public function _get_axes():Dynamic;
	public function _get_dpi():Dynamic;
	/**
		make a hashable key out of args and kwargs
	**/
	public function _make_key(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _repr_html_():Dynamic;
	public function _set_artist_props(a:Dynamic):Dynamic;
	public function _set_dpi(dpi:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Add an axes at position *rect* [*left*, *bottom*, *width*,
		*height*] where all quantities are in fractions of figure
		width and height.  kwargs are legal
		:class:`~matplotlib.axes.Axes` kwargs plus *projection* which
		sets the projection type of the axes.  (For backward
		compatibility, ``polar=True`` may also be provided, which is
		equivalent to ``projection='polar'``).  Valid values for
		*projection* are: ['aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear'].  Some of these
		projections support  additional kwargs, which may be provided
		to :meth:`add_axes`. Typical usage::
		
		    rect = l,b,w,h
		    fig.add_axes(rect)
		    fig.add_axes(rect, frameon=False, axisbg='g')
		    fig.add_axes(rect, polar=True)
		    fig.add_axes(rect, projection='polar')
		    fig.add_axes(ax)
		
		If the figure already has an axes with the same parameters,
		then it will simply make that axes current and return it.  If
		you do not want this behavior, e.g., you want to force the
		creation of a new Axes, you must use a unique set of args and
		kwargs.  The axes :attr:`~matplotlib.axes.Axes.label`
		attribute has been exposed for this purpose.  e.g., if you want
		two axes that are otherwise identical to be added to the
		figure, make sure you give them unique labels::
		
		    fig.add_axes(rect, label='axes1')
		    fig.add_axes(rect, label='axes2')
		
		In rare circumstances, add_axes may be called with a single
		argument, an Axes instance already created in the present
		figure but not in the figure's list of axes.  For example,
		if an axes has been removed with :meth:`delaxes`, it can
		be restored with::
		
		    fig.add_axes(ax)
		
		In all cases, the :class:`~matplotlib.axes.Axes` instance
		will be returned.
		
		In addition to *projection*, the following kwargs are supported:
		
		  adjustable: [ 'box' | 'datalim' | 'box-forced']         
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  anchor: unknown
		  animated: [True | False]         
		  aspect: unknown
		  autoscale_on: unknown
		  autoscalex_on: unknown
		  autoscaley_on: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  axes_locator: unknown
		  axis_bgcolor: any matplotlib color - see         :func:`~matplotlib.pyplot.colors`         
		  axisbelow: [ *True* | *False* ]         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color_cycle: unknown
		  contains: a callable function         
		  figure: unknown
		  frame_on: [ *True* | *False* ]         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  navigate: [ *True* | *False* ]         
		  navigate_mode: unknown
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: unknown
		  rasterization_zorder: unknown
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  title: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xbound: unknown
		  xlabel: unknown
		  xlim: length 2 sequence of floats         
		  xmargin: unknown
		  xscale: ['linear' | 'log' | 'logit' | 'symlog']
		  xticklabels: sequence of strings
		  xticks: sequence of floats         
		  ybound: unknown
		  ylabel: unknown
		  ylim: length 2 sequence of floats         
		  ymargin: unknown
		  yscale: ['linear' | 'log' | 'logit' | 'symlog']
		  yticklabels: sequence of strings
		  yticks: sequence of floats
		  zorder: any number         
	**/
	public function add_axes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		whenever the axes state change, ``func(self)`` will be called
	**/
	public function add_axobserver(func:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Add a subplot.  Examples::
		
		    fig.add_subplot(111)
		
		    # equivalent but more general
		    fig.add_subplot(1,1,1)
		
		    # add subplot with red background
		    fig.add_subplot(212, axisbg='r')
		
		    # add a polar subplot
		    fig.add_subplot(111, projection='polar')
		
		    # add Subplot instance sub
		    fig.add_subplot(sub)
		
		*kwargs* are legal :class:`~matplotlib.axes.Axes` kwargs plus
		*projection*, which chooses a projection type for the axes.
		(For backward compatibility, *polar=True* may also be
		provided, which is equivalent to *projection='polar'*). Valid
		values for *projection* are: ['aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear'].  Some of
		these projections
		support additional *kwargs*, which may be provided to
		:meth:`add_axes`.
		
		The :class:`~matplotlib.axes.Axes` instance will be returned.
		
		If the figure already has a subplot with key (*args*,
		*kwargs*) then it will simply make that subplot current and
		return it.
		
		.. seealso:: :meth:`~matplotlib.pyplot.subplot` for an
		   explanation of the args.
		
		The following kwargs are supported:
		
		  adjustable: [ 'box' | 'datalim' | 'box-forced']         
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  anchor: unknown
		  animated: [True | False]         
		  aspect: unknown
		  autoscale_on: unknown
		  autoscalex_on: unknown
		  autoscaley_on: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  axes_locator: unknown
		  axis_bgcolor: any matplotlib color - see         :func:`~matplotlib.pyplot.colors`         
		  axisbelow: [ *True* | *False* ]         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color_cycle: unknown
		  contains: a callable function         
		  figure: unknown
		  frame_on: [ *True* | *False* ]         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  navigate: [ *True* | *False* ]         
		  navigate_mode: unknown
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: unknown
		  rasterization_zorder: unknown
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  title: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xbound: unknown
		  xlabel: unknown
		  xlim: length 2 sequence of floats         
		  xmargin: unknown
		  xscale: ['linear' | 'log' | 'logit' | 'symlog']
		  xticklabels: sequence of strings
		  xticks: sequence of floats         
		  ybound: unknown
		  ylabel: unknown
		  ylim: length 2 sequence of floats         
		  ymargin: unknown
		  yscale: ['linear' | 'log' | 'logit' | 'symlog']
		  yticklabels: sequence of strings
		  yticks: sequence of floats
		  zorder: any number         
	**/
	public function add_subplot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var aname : Dynamic;
	/**
		Date ticklabels often overlap, so it is useful to rotate them
		and right align them.  Also, a common use case is a number of
		subplots with shared xaxes where the x-axis is date data.  The
		ticklabels are often long, and it helps to rotate them on the
		bottom subplot and turn them off on other subplots, as well as
		turn off xlabels.
		
		*bottom*
		    The bottom of the subplots for :meth:`subplots_adjust`
		
		*rotation*
		    The rotation of the xtick labels
		
		*ha*
		    The horizontal alignment of the xticklabels
	**/
	public function autofmt_xdate(?bottom:Dynamic, ?rotation:Dynamic, ?ha:Dynamic):Dynamic;
	/**
		Read-only: list of axes in Figure
	**/
	public var axes : Dynamic;
	/**
		Clear the figure -- synonym for :meth:`clf`.
	**/
	public function clear():Dynamic;
	/**
		Clear the figure.
		
		Set *keep_observers* to True if, for example,
		a gui widget is tracking the axes in the figure.
	**/
	public function clf(?keep_observers:Dynamic):Dynamic;
	/**
		Create a colorbar for a ScalarMappable instance, *mappable*.
		
		Documentation for the pylab thin wrapper:
		
		
		Add a colorbar to a plot.
		
		Function signatures for the :mod:`~matplotlib.pyplot` interface; all
		but the first are also method signatures for the
		:meth:`~matplotlib.figure.Figure.colorbar` method::
		
		  colorbar(**kwargs)
		  colorbar(mappable, **kwargs)
		  colorbar(mappable, cax=cax, **kwargs)
		  colorbar(mappable, ax=ax, **kwargs)
		
		arguments:
		
		  *mappable*
		    the :class:`~matplotlib.image.Image`,
		    :class:`~matplotlib.contour.ContourSet`, etc. to
		    which the colorbar applies; this argument is mandatory for the
		    :meth:`~matplotlib.figure.Figure.colorbar` method but optional for the
		    :func:`~matplotlib.pyplot.colorbar` function, which sets the
		    default to the current image.
		
		keyword arguments:
		
		  *cax*
		    None | axes object into which the colorbar will be drawn
		  *ax*
		    None | parent axes object(s) from which space for a new
		    colorbar axes will be stolen. If a list of axes is given
		    they will all be resized to make room for the colorbar axes.
		  *use_gridspec*
		    False | If *cax* is None, a new *cax* is created as an instance of
		    Axes. If *ax* is an instance of Subplot and *use_gridspec* is True,
		    *cax* is created as an instance of Subplot using the
		    grid_spec module.
		
		
		Additional keyword arguments are of two kinds:
		
		  axes properties:
		
		
		    ============= ====================================================
		    Property      Description
		    ============= ====================================================
		    *orientation* vertical or horizontal
		    *fraction*    0.15; fraction of original axes to use for colorbar
		    *pad*         0.05 if vertical, 0.15 if horizontal; fraction
		                  of original axes between colorbar and new image axes
		    *shrink*      1.0; fraction by which to shrink the colorbar
		    *aspect*      20; ratio of long to short dimensions
		    *anchor*      (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal;
		                  the anchor point of the colorbar axes
		    *panchor*     (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal;
		                  the anchor point of the colorbar parent axes. If
		                  False, the parent axes' anchor will be unchanged
		    ============= ====================================================
		
		
		  colorbar properties:
		
		
		    ============  ====================================================
		    Property      Description
		    ============  ====================================================
		    *extend*      [ 'neither' | 'both' | 'min' | 'max' ]
		                  If not 'neither', make pointed end(s) for out-of-
		                  range values.  These are set for a given colormap
		                  using the colormap set_under and set_over methods.
		    *extendfrac*  [ *None* | 'auto' | length | lengths ]
		                  If set to *None*, both the minimum and maximum
		                  triangular colorbar extensions with have a length of
		                  5% of the interior colorbar length (this is the
		                  default setting). If set to 'auto', makes the
		                  triangular colorbar extensions the same lengths as
		                  the interior boxes (when *spacing* is set to
		                  'uniform') or the same lengths as the respective
		                  adjacent interior boxes (when *spacing* is set to
		                  'proportional'). If a scalar, indicates the length
		                  of both the minimum and maximum triangular colorbar
		                  extensions as a fraction of the interior colorbar
		                  length. A two-element sequence of fractions may also
		                  be given, indicating the lengths of the minimum and
		                  maximum colorbar extensions respectively as a
		                  fraction of the interior colorbar length.
		    *extendrect*  [ *False* | *True* ]
		                  If *False* the minimum and maximum colorbar extensions
		                  will be triangular (the default). If *True* the
		                  extensions will be rectangular.
		    *spacing*     [ 'uniform' | 'proportional' ]
		                  Uniform spacing gives each discrete color the same
		                  space; proportional makes the space proportional to
		                  the data interval.
		    *ticks*       [ None | list of ticks | Locator object ]
		                  If None, ticks are determined automatically from the
		                  input.
		    *format*      [ None | format string | Formatter object ]
		                  If None, the
		                  :class:`~matplotlib.ticker.ScalarFormatter` is used.
		                  If a format string is given, e.g., '%.3f', that is
		                  used. An alternative
		                  :class:`~matplotlib.ticker.Formatter` object may be
		                  given instead.
		    *drawedges*   [ False | True ] If true, draw lines at color
		                  boundaries.
		    ============  ====================================================
		
		    The following will probably be useful only in the context of
		    indexed colors (that is, when the mappable has norm=NoNorm()),
		    or other unusual circumstances.
		
		    ============   ===================================================
		    Property       Description
		    ============   ===================================================
		    *boundaries*   None or a sequence
		    *values*       None or a sequence which must be of length 1 less
		                   than the sequence of *boundaries*. For each region
		                   delimited by adjacent entries in *boundaries*, the
		                   color mapped to the corresponding value in values
		                   will be used.
		    ============   ===================================================
		
		
		
		If *mappable* is a :class:`~matplotlib.contours.ContourSet`, its *extend*
		kwarg is included automatically.
		
		Note that the *shrink* kwarg provides a simple way to keep a vertical
		colorbar, for example, from being taller than the axes of the mappable
		to which the colorbar is attached; but it is a manual method requiring
		some trial and error. If the colorbar is too tall (or a horizontal
		colorbar is too wide) use a smaller value of *shrink*.
		
		For more precise control, you can manually specify the positions of
		the axes objects in which the mappable and the colorbar are drawn.  In
		this case, do not use any of the axes properties kwargs.
		
		It is known that some vector graphics viewer (svg and pdf) renders white gaps
		between segments of the colorbar. This is due to bugs in the viewers not
		matplotlib. As a workaround the colorbar can be rendered with overlapping
		segments::
		
		    cbar = colorbar()
		    cbar.solids.set_edgecolor("face")
		    draw()
		
		However this has negative consequences in other circumstances. Particularly
		with semi transparent images (alpha < 1) and colorbar extensions and is not
		enabled by default see (issue #1188).
		
		returns:
		    :class:`~matplotlib.colorbar.Colorbar` instance; see also its base class,
		    :class:`~matplotlib.colorbar.ColorbarBase`.  Call the
		    :meth:`~matplotlib.colorbar.ColorbarBase.set_label` method
		    to label the colorbar.
	**/
	public function colorbar(mappable:Dynamic, ?cax:Dynamic, ?ax:Dynamic, ?use_gridspec:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether the mouse event occurred on the figure.
		
		Returns True,{}
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
	/**
		remove a from the figure and update the current axes
	**/
	public function delaxes(a:Dynamic):Dynamic;
	public var dpi : Dynamic;
	/**
		Render the figure using :class:`matplotlib.backend_bases.RendererBase`
		instance *renderer*.
	**/
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		draw :class:`matplotlib.artist.Artist` instance *a* only --
		this is available only after the figure is drawn
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Adds a non-resampled image to the figure.
		
		call signatures::
		
		  figimage(X, **kwargs)
		
		adds a non-resampled array *X* to the figure.
		
		::
		
		  figimage(X, xo, yo)
		
		with pixel offsets *xo*, *yo*,
		
		*X* must be a float array:
		
		* If *X* is MxN, assume luminance (grayscale)
		* If *X* is MxNx3, assume RGB
		* If *X* is MxNx4, assume RGBA
		
		Optional keyword arguments:
		
		  =========   =========================================================
		  Keyword     Description
		  =========   =========================================================
		  resize      a boolean, True or False. If "True", then re-size the
		              Figure to match the given image size.
		  xo or yo    An integer, the *x* and *y* image offset in pixels
		  cmap        a :class:`matplotlib.colors.Colormap` instance, e.g.,
		              cm.jet. If *None*, default to the rc ``image.cmap``
		              value
		  norm        a :class:`matplotlib.colors.Normalize` instance. The
		              default is normalization().  This scales luminance -> 0-1
		  vmin|vmax   are used to scale a luminance image to 0-1.  If either
		              is *None*, the min and max of the luminance values will
		              be used.  Note if you pass a norm instance, the settings
		              for *vmin* and *vmax* will be ignored.
		  alpha       the alpha blending value, default is *None*
		  origin      [ 'upper' | 'lower' ] Indicates where the [0,0] index of
		              the array is in the upper left or lower left corner of
		              the axes. Defaults to the rc image.origin value
		  =========   =========================================================
		
		figimage complements the axes image
		(:meth:`~matplotlib.axes.Axes.imshow`) which will be resampled
		to fit the current axes.  If you want a resampled image to
		fill the entire figure, you can define an
		:class:`~matplotlib.axes.Axes` with size [0,1,0,1].
		
		An :class:`matplotlib.image.FigureImage` instance is returned.
		
		.. plot:: mpl_examples/pylab_examples/figimage_demo.py
		
		
		Additional kwargs are Artist kwargs passed on to
		:class:`~matplotlib.image.FigureImage`
	**/
	public function figimage(X:Dynamic, ?xo:Dynamic, ?yo:Dynamic, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?origin:Dynamic, ?resize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Get the current axes, creating one if necessary
		
		The following kwargs are supported for ensuring the returned axes
		adheres to the given projection etc., and for axes creation if
		the active axes does not exist:
		
		  adjustable: [ 'box' | 'datalim' | 'box-forced']         
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  anchor: unknown
		  animated: [True | False]         
		  aspect: unknown
		  autoscale_on: unknown
		  autoscalex_on: unknown
		  autoscaley_on: unknown
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  axes_locator: unknown
		  axis_bgcolor: any matplotlib color - see         :func:`~matplotlib.pyplot.colors`         
		  axisbelow: [ *True* | *False* ]         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color_cycle: unknown
		  contains: a callable function         
		  figure: unknown
		  frame_on: [ *True* | *False* ]         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  navigate: [ *True* | *False* ]         
		  navigate_mode: unknown
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: unknown
		  rasterization_zorder: unknown
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  title: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xbound: unknown
		  xlabel: unknown
		  xlim: length 2 sequence of floats         
		  xmargin: unknown
		  xscale: ['linear' | 'log' | 'logit' | 'symlog']
		  xticklabels: sequence of strings
		  xticks: sequence of floats         
		  ybound: unknown
		  ylabel: unknown
		  ylim: length 2 sequence of floats         
		  ymargin: unknown
		  yscale: ['linear' | 'log' | 'logit' | 'symlog']
		  yticklabels: sequence of strings
		  yticks: sequence of floats
		  zorder: any number         
	**/
	public function gca(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
	**/
	public function get_axes():Dynamic;
	/**
		get a list of artists contained in the figure
	**/
	public function get_children():Dynamic;
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
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Return the dpi as a float
	**/
	public function get_dpi():Dynamic;
	/**
		Get the edge color of the Figure rectangle
	**/
	public function get_edgecolor():Dynamic;
	/**
		Get the face color of the Figure rectangle
	**/
	public function get_facecolor():Dynamic;
	/**
		Return the figheight as a float
	**/
	public function get_figheight():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the figwidth as a float
	**/
	public function get_figwidth():Dynamic;
	/**
		get the boolean indicating frameon
	**/
	public function get_frameon():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	/**
		return True if the artist is to be rasterized
	**/
	public function get_rasterized():Dynamic;
	/**
		Returns the current size of the figure in inches (1in == 2.54cm)
		as an numpy array.
		
		Returns
		-------
		size : ndarray
		   The size of the figure in inches
		
		See Also
		--------
		
		matplotlib.Figure.set_size_inches
	**/
	public function get_size_inches():Dynamic;
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
		Return the Boolean flag, True to use :meth`tight_layout` when drawing.
	**/
	public function get_tight_layout():Dynamic;
	/**
		Return a (tight) bounding box of the figure in inches.
		
		It only accounts axes title, axis labels, and axis
		ticklabels. Needs improvement.
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
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
	/**
		Returns the url
	**/
	public function get_url():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		get the figure bounding box in display space; kwargs are void
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the :class:`Artist`'s zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Call signature::
		
		  ginput(self, n=1, timeout=30, show_clicks=True,
		         mouse_add=1, mouse_pop=3, mouse_stop=2)
		
		Blocking call to interact with the figure.
		
		This will wait for *n* clicks from the user and return a list of the
		coordinates of each click.
		
		If *timeout* is zero or negative, does not timeout.
		
		If *n* is zero or negative, accumulate clicks until a middle click
		(or potentially both mouse buttons at once) terminates the input.
		
		Right clicking cancels last input.
		
		The buttons used for the various actions (adding points, removing
		points, terminating the inputs) can be overriden via the
		arguments *mouse_add*, *mouse_pop* and *mouse_stop*, that give
		the associated mouse button: 1 for left, 2 for middle, 3 for
		right.
		
		The keyboard can also be used to select points in case your mouse
		does not have one or more of the buttons.  The delete and backspace
		keys act like right clicking (i.e., remove last point), the enter key
		terminates input and any other key (not already used by the window
		manager) selects a point.
	**/
	public function ginput(?n:Dynamic, ?timeout:Dynamic, ?show_clicks:Dynamic, ?mouse_add:Dynamic, ?mouse_pop:Dynamic, ?mouse_stop:Dynamic):Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		Set the hold state.  If hold is None (default), toggle the
		hold state.  Else set the hold state to boolean value b.
		
		e.g.::
		
		    hold()      # toggle hold
		    hold(True)  # hold is on
		    hold(False) # hold is off
	**/
	public function hold(?b:Dynamic):Dynamic;
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
		Place a legend in the figure.  Labels are a sequence of
		strings, handles is a sequence of
		:class:`~matplotlib.lines.Line2D` or
		:class:`~matplotlib.patches.Patch` instances, and loc can be a
		string or an integer specifying the legend location
		
		USAGE::
		
		  legend( (line1, line2, line3),
		          ('label1', 'label2', 'label3'),
		          'upper right')
		
		The *loc* location codes are::
		
		  'best' : 0,          (currently not supported for figure legends)
		  'upper right'  : 1,
		  'upper left'   : 2,
		  'lower left'   : 3,
		  'lower right'  : 4,
		  'right'        : 5,
		  'center left'  : 6,
		  'center right' : 7,
		  'lower center' : 8,
		  'upper center' : 9,
		  'center'       : 10,
		
		*loc* can also be an (x,y) tuple in figure coords, which
		specifies the lower left of the legend box.  figure coords are
		(0,0) is the left, bottom of the figure and 1,1 is the right,
		top.
		
		Keyword arguments:
		
		  *prop*: [ *None* | FontProperties | dict ]
		    A :class:`matplotlib.font_manager.FontProperties`
		    instance. If *prop* is a dictionary, a new instance will be
		    created with *prop*. If *None*, use rc settings.
		
		  *numpoints*: integer
		    The number of points in the legend line, default is 4
		
		  *scatterpoints*: integer
		    The number of points in the legend line, default is 4
		
		  *scatteryoffsets*: list of floats
		    a list of yoffsets for scatter symbols in legend
		
		  *markerscale*: [ *None* | scalar ]
		    The relative size of legend markers vs. original. If *None*, use rc
		    settings.
		
		  *markerfirst*: [ *True* | *False* ]
		    if *True*, legend marker is placed to the left of the legend label
		    if *False*, legend marker is placed to the right of the legend
		    label
		
		  *fancybox*: [ *None* | *False* | *True* ]
		    if *True*, draw a frame with a round fancybox.  If *None*, use rc
		
		  *shadow*: [ *None* | *False* | *True* ]
		    If *True*, draw a shadow behind legend. If *None*, use rc settings.
		
		  *ncol* : integer
		    number of columns. default is 1
		
		  *mode* : [ "expand" | *None* ]
		    if mode is "expand", the legend will be horizontally expanded
		    to fill the axes area (or *bbox_to_anchor*)
		
		  *title* : string
		    the legend title
		
		Padding and spacing between various elements use following keywords
		parameters. The dimensions of these values are given as a fraction
		of the fontsize. Values from rcParams will be used if None.
		
		================   ====================================================
		Keyword            Description
		================   ====================================================
		borderpad          the fractional whitespace inside the legend border
		labelspacing       the vertical space between the legend entries
		handlelength       the length of the legend handles
		handletextpad      the pad between the legend handle and text
		borderaxespad      the pad between the axes and legend border
		columnspacing      the spacing between columns
		================   ====================================================
		
		.. Note:: Not all kinds of artist are supported by the legend.
		          See LINK (FIXME) for details.
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/figlegend_demo.py
	**/
	public function legend(handles:Dynamic, labels:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Save the current figure.
		
		Call signature::
		
		  savefig(fname, dpi=None, facecolor='w', edgecolor='w',
		          orientation='portrait', papertype=None, format=None,
		          transparent=False, bbox_inches=None, pad_inches=0.1,
		          frameon=None)
		
		The output formats available depend on the backend being used.
		
		Arguments:
		
		  *fname*:
		    A string containing a path to a filename, or a Python
		    file-like object, or possibly some backend-dependent object
		    such as :class:`~matplotlib.backends.backend_pdf.PdfPages`.
		
		    If *format* is *None* and *fname* is a string, the output
		    format is deduced from the extension of the filename. If
		    the filename has no extension, the value of the rc parameter
		    ``savefig.format`` is used.
		
		    If *fname* is not a string, remember to specify *format* to
		    ensure that the correct backend is used.
		
		Keyword arguments:
		
		  *dpi*: [ *None* | ``scalar > 0`` | 'figure']
		    The resolution in dots per inch.  If *None* it will default to
		    the value ``savefig.dpi`` in the matplotlibrc file. If 'figure'
		    it will set the dpi to be the value of the figure.
		
		  *facecolor*, *edgecolor*:
		    the colors of the figure rectangle
		
		  *orientation*: [ 'landscape' | 'portrait' ]
		    not supported on all backends; currently only on postscript output
		
		  *papertype*:
		    One of 'letter', 'legal', 'executive', 'ledger', 'a0' through
		    'a10', 'b0' through 'b10'. Only supported for postscript
		    output.
		
		  *format*:
		    One of the file extensions supported by the active
		    backend.  Most backends support png, pdf, ps, eps and svg.
		
		  *transparent*:
		    If *True*, the axes patches will all be transparent; the
		    figure patch will also be transparent unless facecolor
		    and/or edgecolor are specified via kwargs.
		    This is useful, for example, for displaying
		    a plot on top of a colored background on a web page.  The
		    transparency of these patches will be restored to their
		    original values upon exit of this function.
		
		  *frameon*:
		    If *True*, the figure patch will be colored, if *False*, the
		    figure background will be transparent.  If not provided, the
		    rcParam 'savefig.frameon' will be used.
		
		  *bbox_inches*:
		    Bbox in inches. Only the given portion of the figure is
		    saved. If 'tight', try to figure out the tight bbox of
		    the figure.
		
		  *pad_inches*:
		    Amount of padding around the figure when bbox_inches is
		    'tight'.
		
		  *bbox_extra_artists*:
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
	**/
	public function savefig(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the current axes to be a and return a
	**/
	public function sca(a:Dynamic):Dynamic;
	/**
		A property batch setter. Pass *kwargs* to set properties.
		Will handle property name collisions (e.g., if both
		'color' and 'facecolor' are specified, the property
		with higher priority gets set last).
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		set agg_filter fuction.
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on
		all backends.
		
		ACCEPTS: float (0.0 transparent through 1.0 opaque)
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		Set the canvas that contains the figure
		
		ACCEPTS: a FigureCanvas instance
	**/
	public function set_canvas(canvas:Dynamic):Dynamic;
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
		Set the dots-per-inch of the figure
		
		ACCEPTS: float
	**/
	public function set_dpi(val:Dynamic):Dynamic;
	/**
		Set the edge color of the Figure rectangle
		
		ACCEPTS: any matplotlib color - see help(colors)
	**/
	public function set_edgecolor(color:Dynamic):Dynamic;
	/**
		Set the face color of the Figure rectangle
		
		ACCEPTS: any matplotlib color - see help(colors)
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the height of the figure in inches
		
		ACCEPTS: float
	**/
	public function set_figheight(val:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the width of the figure in inches
		
		ACCEPTS: float
	**/
	public function set_figwidth(val:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set whether the figure frame (background) is displayed or invisible
		
		ACCEPTS: boolean
	**/
	public function set_frameon(b:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist
		
		ACCEPTS: an id string
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		ACCEPTS: string or anything printable with '%s' conversion.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		set path_effects, which should be a list of instances of
		matplotlib.patheffect._Base class or its derivatives.
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
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
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		set_size_inches(w,h, forward=False)
		
		Set the figure size in inches (1in == 2.54cm)
		
		Usage::
		
		     fig.set_size_inches(w,h)  # OR
		     fig.set_size_inches((w,h) )
		
		optional kwarg *forward=True* will cause the canvas size to be
		automatically updated; e.g., you can resize the figure window
		from the shell
		
		ACCEPTS: a w,h tuple with w,h in inches
		
		See Also
		--------
		
		matplotlib.Figure.get_size_inches
	**/
	public function set_size_inches(w:Dynamic, ?h:Dynamic, ?forward:Dynamic):Dynamic;
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
		Set whether :meth:`tight_layout` is used upon drawing.
		If None, the rcParams['figure.autolayout'] value will be set.
		
		When providing a dict containing the keys `pad`, `w_pad`, `h_pad`
		and `rect`, the default :meth:`tight_layout` paddings will be
		overridden.
		
		ACCEPTS: [True | False | dict | None ]
	**/
	public function set_tight_layout(tight:Dynamic):Dynamic;
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
		If using a GUI backend with pyplot, display the figure window.
		
		If the figure was not created using
		:func:`~matplotlib.pyplot.figure`, it will lack a
		:class:`~matplotlib.backend_bases.FigureManagerBase`, and
		will raise an AttributeError.
		
		For non-GUI backends, this does nothing, in which case
		a warning will be issued if *warn* is True (default).
	**/
	public function show(?warn:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		Call signature::
		
		  subplots_adjust(left=None, bottom=None, right=None, top=None,
		                      wspace=None, hspace=None)
		
		Update the :class:`SubplotParams` with *kwargs* (defaulting to rc when
		*None*) and update the subplot locations
	**/
	public function subplots_adjust(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a centered title to the figure.
		
		kwargs are :class:`matplotlib.text.Text` properties.  Using figure
		coordinates, the defaults are:
		
		  *x* : 0.5
		    The x location of the text in figure coords
		
		  *y* : 0.98
		    The y location of the text in figure coords
		
		  *horizontalalignment* : 'center'
		    The horizontal alignment of the text
		
		  *verticalalignment* : 'top'
		    The vertical alignment of the text
		
		A :class:`matplotlib.text.Text` instance is returned.
		
		Example::
		
		  fig.suptitle('this is the figure title', fontsize=12)
	**/
	public function suptitle(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add text to figure.
		
		Call signature::
		
		  text(x, y, s, fontdict=None, **kwargs)
		
		Add text to figure at location *x*, *y* (relative 0-1
		coords). See :func:`~matplotlib.pyplot.text` for the meaning
		of the other arguments.
		
		kwargs control the :class:`~matplotlib.text.Text` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  backgroundcolor: any matplotlib color         
		  bbox: FancyBboxPatch prop dict         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: any matplotlib color         
		  contains: a callable function         
		  family or fontfamily or name or fontname: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fontproperties or font_properties: a :class:`matplotlib.font_manager.FontProperties` instance         
		  gid: an id string         
		  horizontalalignment or ha: [ 'center' | 'right' | 'left' ]         
		  label: string or anything printable with '%s' conversion.         
		  linespacing: float (multiple of font size)         
		  multialignment: ['left' | 'right' | 'center' ]         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: (x,y)         
		  rasterized: [True | False | None]         
		  rotation: [ angle in degrees | 'vertical' | 'horizontal' ]         
		  rotation_mode: unknown
		  size or fontsize: [size in points | 'xx-small' | 'x-small' | 'small' |                   'medium' | 'large' | 'x-large' | 'xx-large' ]         
		  sketch_params: unknown
		  snap: unknown
		  stretch or fontstretch: [a numeric value in range 0-1000 | 'ultra-condensed' |                   'extra-condensed' | 'condensed' | 'semi-condensed' |                   'normal' | 'semi-expanded' | 'expanded' | 'extra-expanded' |                   'ultra-expanded' ]         
		  style or fontstyle: [ 'normal' | 'italic' | 'oblique']         
		  text: string or anything printable with '%s' conversion.         
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  usetex: unknown
		  variant or fontvariant: [ 'normal' | 'small-caps' ]         
		  verticalalignment or va or ma: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  wrap: unknown
		  x: float         
		  y: float         
		  zorder: any number         
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust subplot parameters to give specified padding.
		
		Parameters:
		
		  *pad* : float
		    padding between the figure edge and the edges of subplots,
		    as a fraction of the font-size.
		  *h_pad*, *w_pad* : float
		    padding (height/width) between edges of adjacent subplots.
		    Defaults to `pad_inches`.
		  *rect* : if rect is given, it is interpreted as a rectangle
		    (left, bottom, right, top) in the normalized figure
		    coordinate that the whole subplots area (including
		    labels) will fit into. Default is (0, 0, 1, 1).
	**/
	public function tight_layout(?renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Call signature::
		
		  waitforbuttonpress(self, timeout=-1)
		
		Blocking call to interact with the figure.
		
		This will return True is a key was pressed, False if a mouse
		button was pressed and None if *timeout* was reached without
		either being pressed.
		
		If *timeout* is negative, does not timeout.
	**/
	public function waitforbuttonpress(?timeout:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}