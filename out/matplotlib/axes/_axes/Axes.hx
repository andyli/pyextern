/* This file is generated, do not edit! */
package matplotlib.axes._axes;
@:pythonImport("matplotlib.axes._axes", "Axes") extern class Axes {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, rect:Dynamic, ?axisbg:Dynamic, ?frameon:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?label:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fig:Dynamic, rect:Dynamic, ?axisbg:Dynamic, ?frameon:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?label:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Helper for :func:`~matplotlib.pyplot.gci`;
		do not use elsewhere.
	**/
	public function _gci():Dynamic;
	/**
		Returns the patch used to draw the background of the axes.  It
		is also used as the clipping path for any data elements on the
		axes.
		
		In the standard axes, this is a rectangle, but in other
		projections it may not be.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function _gen_axes_patch():Dynamic;
	/**
		Returns a dict whose keys are spine names and values are
		Line2D or Patch instances. Each element is used to draw a
		spine of the axes.
		
		In the standard axes, this is a single line segment, but in
		other projections it may not be.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function _gen_axes_spines(?locations:Dynamic, ?offset:Dynamic, ?units:Dynamic):Dynamic;
	public function _get_axis_list():Dynamic;
	/**
		Return a generator of artists that can be used as handles in
		a legend.
	**/
	public function _get_legend_handles(?legend_handler_map:Dynamic):Dynamic;
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
		make a twinx axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(?kl:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _pcolorargs(funcname:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Look for unit *kwargs* and update the axis instances as necessary
	**/
	public function _process_unit_info(?xdata:Dynamic, ?ydata:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		helper for :func:`~matplotlib.pyplot.sci`;
		do not use elsewhere.
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
		set the *dataLim* and *viewLim*
		:class:`~matplotlib.transforms.Bbox` attributes and the
		*transScale*, *transData*, *transLimits* and *transAxes*
		transformations.
		
		.. note::
		
		    This method is primarily used by rectilinear projections
		    of the :class:`~matplotlib.axes.Axes` class, and is meant
		    to be overridden by new kinds of projection axes that need
		    different transformations and limits. (See
		    :class:`~matplotlib.projections.polar.PolarAxes` for an
		    example.
	**/
	public function _set_lim_and_transforms():Dynamic;
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
		
		bbox : tuple
		    The selected bounding box limits, in *display* coordinates.
		
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
	/**
		Figures out the data limit of the given line, updating self.dataLim.
	**/
	public function _update_line_limits(line:Dynamic):Dynamic;
	/**
		update the data limits for patch *p*
	**/
	public function _update_patch_limits(patch:Dynamic):Dynamic;
	public function _update_transScale():Dynamic;
	/**
		Plot the autocorrelation of `x`.
		
		Parameters
		----------
		
		x : sequence of scalar
		
		hold : boolean, optional, default: True
		
		detrend : callable, optional, default: `mlab.detrend_none`
		    x is detrended by the `detrend` callable. Default is no
		    normalization.
		
		normed : boolean, optional, default: True
		    if True, normalize the data by the autocorrelation at the 0-th
		    lag.
		
		usevlines : boolean, optional, default: True
		    if True, Axes.vlines is used to plot the vertical lines from the
		    origin to the acorr. Otherwise, Axes.plot is used.
		
		maxlags : integer, optional, default: 10
		    number of lags to show. If None, will return all 2 * len(x) - 1
		    lags.
		
		Returns
		-------
		(lags, c, line, b) : where:
		
		  - `lags` are a length 2`maxlags+1 lag vector.
		  - `c` is the 2`maxlags+1 auto correlation vectorI
		  - `line` is a `~matplotlib.lines.Line2D` instance returned by
		    `plot`.
		  - `b` is the x-axis.
		
		Other parameters
		-----------------
		linestyle : `~matplotlib.lines.Line2D` prop, optional, default: None
		    Only used if usevlines is False.
		
		marker : string, optional, default: 'o'
		
		Notes
		-----
		The cross correlation is performed with :func:`numpy.correlate` with
		`mode` = 2.
		
		Examples
		--------
		
		`~matplotlib.pyplot.xcorr` is top graph, and
		`~matplotlib.pyplot.acorr` is bottom graph.
		
		.. plot:: mpl_examples/pylab_examples/xcorr_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function acorr(x:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add any :class:`~matplotlib.artist.Artist` to the axes.
		
		Use `add_artist` only for artists for which there is no dedicated
		"add" method; and if necessary, use a method such as
		`update_datalim` or `update_datalim_numerix` to manually update the
		dataLim if the artist is to be included in autoscaling.
		
		Returns the artist.
	**/
	public function add_artist(a:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.collections.Collection` instance
		to the axes.
		
		Returns the collection.
	**/
	public function add_collection(collection:Dynamic, ?autolim:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.container.Container` instance
		to the axes.
		
		Returns the collection.
	**/
	public function add_container(container:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.image.AxesImage` to the axes.
		
		Returns the image.
	**/
	public function add_image(image:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.lines.Line2D` to the list of plot
		lines
		
		Returns the line.
	**/
	public function add_line(line:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.patches.Patch` *p* to the list of
		axes patches; the clipbox will be set to the Axes clipping
		box.  If the transform is not set, it will be set to
		:attr:`transData`.
		
		Returns the patch.
	**/
	public function add_patch(p:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.tables.Table` instance to the
		list of axes tables
		
		Returns the table.
	**/
	public function add_table(tab:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		Plot the angle spectrum.
		
		Call signature::
		
		  angle_spectrum(x, Fs=2, Fc=0,  window=mlab.window_hanning,
		                 pad_to=None, sides='default', **kwargs)
		
		Compute the angle spectrum (wrapped phase spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		  *x*: 1-D array or sequence
		    Array or sequence containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns the tuple (*spectrum*, *freqs*, *line*):
		
		  *spectrum*: 1-D array
		    The values for the angle spectrum in radians (real valued)
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		  *line*: a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function
		
		kwargs control the :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/spectrum_demo.py
		
		.. seealso::
		
		    :func:`magnitude_spectrum`
		        :func:`angle_spectrum` plots the magnitudes of the
		        corresponding frequencies.
		
		    :func:`phase_spectrum`
		        :func:`phase_spectrum` plots the unwrapped version of this
		        function.
		
		    :func:`specgram`
		        :func:`specgram` can plot the angle spectrum of segments
		        within the signal in a colormap.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function angle_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create an annotation: a piece of text referring to a data
		point.
		
		Parameters
		----------
		s : string
		    label
		
		xy : (x, y)
		    position of element to annotate
		
		xytext : (x, y) , optional, default: None
		    position of the label `s`
		
		xycoords : string, optional, default: "data"
		    string that indicates what type of coordinates `xy` is. Examples:
		    "figure points", "figure pixels", "figure fraction", "axes
		    points", .... See `matplotlib.text.Annotation` for more details.
		
		textcoords : string, optional
		    string that indicates what type of coordinates `text` is. Examples:
		    "figure points", "figure pixels", "figure fraction", "axes
		    points", .... See `matplotlib.text.Annotation` for more details.
		    Default is None.
		
		arrowprops : `matplotlib.lines.Line2D` properties, optional
		    Dictionary of line properties for the arrow that connects
		    the annotation to the point. If the dictionnary has a key
		    `arrowstyle`, a `~matplotlib.patches.FancyArrowPatch`
		    instance is created and drawn.  See
		    `matplotlib.text.Annotation` for more details on valid
		    options. Default is None.
		
		Returns
		-------
		a : `~matplotlib.text.Annotation`
		
		
		Notes
		-----
		
		*arrowprops*, if not *None*, is a dictionary of line properties
		(see :class:`matplotlib.lines.Line2D`) for the arrow that connects
		annotation to the point.
		
		If the dictionary has a key *arrowstyle*, a
		`~matplotlib.patches.FancyArrowPatch` instance is created with
		the given dictionary and is drawn. Otherwise, a
		`~matplotlib.patches.YAArrow` patch instance is created and
		drawn. Valid keys for `~matplotlib.patches.YAArrow` are:
		
		
		=========   ===========================================================
		Key         Description
		=========   ===========================================================
		width       the width of the arrow in points
		frac        the fraction of the arrow length occupied by the head
		headwidth   the width of the base of the arrow head in points
		shrink      oftentimes it is convenient to have the arrowtip
		            and base a bit away from the text and point being
		            annotated.  If *d* is the distance between the text and
		            annotated point, shrink will shorten the arrow so the tip
		            and base are shink percent of the distance *d* away from
		            the endpoints.  i.e., ``shrink=0.05 is 5%``
		?           any key for :class:`matplotlib.patches.polygon`
		=========   ===========================================================
		
		
		Valid keys for `~matplotlib.patches.FancyArrowPatch` are:
		
		
		===============  ======================================================
		Key              Description
		===============  ======================================================
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
		===============  ======================================================
		
		
		*xycoords* and *textcoords* are strings that indicate the
		coordinates of *xy* and *xytext*, and may be one of the
		following values:
		
		=================   ===================================================
		Property            Description
		=================   ===================================================
		'figure points'     points from the lower left corner of the figure
		'figure pixels'     pixels from the lower left corner of the figure
		'figure fraction'   0,0 is lower left of figure and 1,1 is upper right
		'axes points'       points from lower left corner of axes
		'axes pixels'       pixels from lower left corner of axes
		'axes fraction'     0,0 is lower left of axes and 1,1 is upper right
		'data'              use the coordinate system of the object being
		                    annotated (default)
		'offset points'     Specify an offset (in points) from the *xy* value
		
		'polar'             you can specify *theta*, *r* for the annotation,
		                    even in cartesian plots.  Note that if you
		                    are using a polar axes, you do not need
		                    to specify polar for the coordinate
		                    system since that is the native "data" coordinate
		                    system.
		=================   ===================================================
		
		If a 'points' or 'pixels' option is specified, values will be
		added to the bottom-left and if negative, values will be
		subtracted from the top-right.  e.g.::
		
		  # 10 points to the right of the left border of the axes and
		  # 5 points below the top border
		  xy=(10,-5), xycoords='axes points'
		
		You may use an instance of
		:class:`~matplotlib.transforms.Transform` or
		:class:`~matplotlib.artist.Artist`. See
		:ref:`plotting-guide-annotation` for more details.
		
		The *annotation_clip* attribute controls the visibility of the
		annotation when it goes outside the axes area. If `True`, the
		annotation will only be drawn when the *xy* is inside the
		axes. If `False`, the annotation will always be drawn
		regardless of its position.  The default is `None`, which
		behave as `True` only if *xycoords* is "data".
		
		Additional kwargs are `~matplotlib.text.Text` properties:
		
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
		  family or fontname or fontfamily or name: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
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
		  verticalalignment or ma or va: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  wrap: unknown
		  x: float         
		  y: float         
		  zorder: any number         
		
		Examples
		--------
		
		.. plot:: mpl_examples/pylab_examples/annotation_demo2.py
	**/
	public function annotate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use :meth:`_aspect` and :meth:`_adjustable` to modify the
		axes box or the view limits.
	**/
	public function apply_aspect(?position:Dynamic):Dynamic;
	/**
		Add an arrow to the axes.
		
		Call signature::
		
		   arrow(x, y, dx, dy, **kwargs)
		
		Draws arrow on specified axis from (*x*, *y*) to (*x* + *dx*,
		*y* + *dy*). Uses FancyArrow patch to construct the arrow.
		
		The resulting arrow is affected by the axes aspect ratio and limits.
		This may produce an arrow whose head is not square with its stem. To
		create an arrow whose head is square with its stem, use
		:meth:`annotate` for example::
		
		    ax.annotate("", xy=(0.5, 0.5), xytext=(0, 0),
		        arrowprops=dict(arrowstyle="->"))
		
		Optional kwargs control the arrow construction and properties:
		
		Constructor arguments
		  *width*: float (default: 0.001)
		    width of full arrow tail
		
		  *length_includes_head*: [True | False] (default: False)
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
		
		  *head_starts_at_zero*: [True | False] (default: False)
		    if True, the head starts being drawn at coordinate 0
		    instead of ending at coordinate 0.
		
		Other valid kwargs (inherited from :class:`Patch`) are:
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/arrow_demo.py
	**/
	public function arrow(x:Dynamic, y:Dynamic, dx:Dynamic, dy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Autoscale the axis view to the data (toggle).
		
		Convenience method for simple axis view autoscaling.
		It turns autoscaling on or off, and then,
		if autoscaling for either axis is on, it performs
		the autoscaling on the specified axis or axes.
		
		*enable*: [True | False | None]
		    True (default) turns autoscaling on, False turns it off.
		    None leaves the autoscaling state unchanged.
		
		*axis*: ['x' | 'y' | 'both']
		    which axis to operate on; default is 'both'
		
		*tight*: [True | False | None]
		    If True, set view limits to data limits;
		    if False, let the locator and margins expand the view limits;
		    if None, use tight scaling if the only artist is an image,
		    otherwise treat *tight* as False.
		    The *tight* setting is retained for future autoscaling
		    until it is explicitly changed.
		
		
		Returns None.
	**/
	public function autoscale(?enable:Dynamic, ?axis:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Autoscale the view limits using the data limits. You can
		selectively autoscale only a single axis, e.g., the xaxis by
		setting *scaley* to *False*.  The autoscaling preserves any
		axis direction reversal that has already been done.
		
		The data limits are not updated automatically when artist data are
		changed after the artist has been added to an Axes instance.  In that
		case, use :meth:`matplotlib.axes.Axes.relim` prior to calling
		autoscale_view.
	**/
	public function autoscale_view(?tight:Dynamic, ?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		The :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
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
		:class:`~matplotlib.lines.Line2D`
		
		Notes
		-----
		kwargs are passed to :class:`~matplotlib.lines.Line2D` and can be used
		to control the line properties.
		
		Examples
		--------
		
		* draw a thick red hline at 'y' = 0 that spans the xrange::
		
		    >>> axhline(linewidth=4, color='r')
		
		* draw a default hline at 'y' = 1 that spans the xrange::
		
		    >>> axhline(y=1)
		
		* draw a default hline at 'y' = .5 that spans the middle half of
		  the xrange::
		
		    >>> axhline(y=.5, xmin=0.25, xmax=0.75)
		
		Valid kwargs are :class:`~matplotlib.lines.Line2D` properties,
		with the exception of 'transform':
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		See also
		--------
		axhspan : for example plot and source code
	**/
	public function axhline(?y:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a horizontal span (rectangle) across the axis.
		
		Call signature::
		
		  axhspan(ymin, ymax, xmin=0, xmax=1, **kwargs)
		
		*y* coords are in data units and *x* coords are in axes (relative
		0-1) units.
		
		Draw a horizontal span (rectangle) from *ymin* to *ymax*.
		With the default values of *xmin* = 0 and *xmax* = 1, this
		always spans the xrange, regardless of the xlim settings, even
		if you change them, e.g., with the :meth:`set_xlim` command.
		That is, the horizontal extent is in axes coords: 0=left,
		0.5=middle, 1.0=right but the *y* location is in data
		coordinates.
		
		Return value is a :class:`matplotlib.patches.Polygon`
		instance.
		
		Examples:
		
		* draw a gray rectangle from *y* = 0.25-0.75 that spans the
		  horizontal extent of the axes::
		
		    >>> axhspan(0.25, 0.75, facecolor='0.5', alpha=0.5)
		
		Valid kwargs are :class:`~matplotlib.patches.Polygon` properties:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/axhspan_demo.py
	**/
	public function axhspan(ymin:Dynamic, ymax:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set axis properties.
		
		Valid signatures::
		
		  xmin, xmax, ymin, ymax = axis()
		  xmin, xmax, ymin, ymax = axis(list_arg)
		  xmin, xmax, ymin, ymax = axis(string_arg)
		  xmin, xmax, ymin, ymax = axis(**kwargs)
		
		Parameters
		----------
		v : list of float or {'on', 'off', 'equal', 'tight', 'scaled',            'normal', 'auto', 'image', 'square'}
		    Optional positional argument
		
		    Axis data limits set from a list; or a command relating to axes:
		
		        ========== ================================================
		        Value      Description
		        ========== ================================================
		        'on'       Toggle axis lines and labels on
		        'off'      Toggle axis lines and labels off
		        'equal'    Equal scaling by changing limits
		        'scaled'   Equal scaling by changing box dimensions
		        'tight'    Limits set such that all data is shown
		        'auto'     Automatic scaling, fill rectangle with data
		        'normal'   Same as 'auto'; deprecated
		        'image'    'scaled' with axis limits equal to data limits
		        'square'   Square plot; similar to 'scaled', but initially                           forcing xmax-xmin = ymax-ymin
		        ========== ================================================
		
		emit : bool, optional
		    Passed to set_{x,y}lim functions, if observers
		    are notified of axis limit change
		
		xmin, ymin, xmax, ymax : float, optional
		    The axis limits to be set
		
		Returns
		-------
		xmin, xmax, ymin, ymax : float
		    The axis limits
	**/
	public function axis(?v:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
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
		:class:`~matplotlib.lines.Line2D`
		
		
		Examples
		---------
		* draw a thick red vline at *x* = 0 that spans the yrange::
		
		    >>> axvline(linewidth=4, color='r')
		
		* draw a default vline at *x* = 1 that spans the yrange::
		
		    >>> axvline(x=1)
		
		* draw a default vline at *x* = .5 that spans the middle half of
		  the yrange::
		
		    >>> axvline(x=.5, ymin=0.25, ymax=0.75)
		
		Valid kwargs are :class:`~matplotlib.lines.Line2D` properties,
		with the exception of 'transform':
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		See also
		--------
		axhspan : for example plot and source code
	**/
	public function axvline(?x:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a vertical span (rectangle) across the axes.
		
		Call signature::
		
		  axvspan(xmin, xmax, ymin=0, ymax=1, **kwargs)
		
		*x* coords are in data units and *y* coords are in axes (relative
		0-1) units.
		
		Draw a vertical span (rectangle) from *xmin* to *xmax*.  With
		the default values of *ymin* = 0 and *ymax* = 1, this always
		spans the yrange, regardless of the ylim settings, even if you
		change them, e.g., with the :meth:`set_ylim` command.  That is,
		the vertical extent is in axes coords: 0=bottom, 0.5=middle,
		1.0=top but the *y* location is in data coordinates.
		
		Return value is the :class:`matplotlib.patches.Polygon`
		instance.
		
		Examples:
		
		* draw a vertical green translucent rectangle from x=1.25 to 1.55 that
		  spans the yrange of the axes::
		
		    >>> axvspan(1.25, 1.55, facecolor='g', alpha=0.5)
		
		Valid kwargs are :class:`~matplotlib.patches.Polygon`
		properties:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		.. seealso::
		
		    :meth:`axhspan`
		        for example plot and source code
	**/
	public function axvspan(xmin:Dynamic, xmax:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a bar plot.
		
		Make a bar plot with rectangles bounded by:
		
		  `left`, `left` + `width`, `bottom`, `bottom` + `height`
		        (left, right, bottom and top edges)
		
		Parameters
		----------
		left : sequence of scalars
		    the x coordinates of the left sides of the bars
		
		height : sequence of scalars
		    the heights of the bars
		
		width : scalar or array-like, optional
		    the width(s) of the bars
		    default: 0.8
		
		bottom : scalar or array-like, optional
		    the y coordinate(s) of the bars
		    default: None
		
		color : scalar or array-like, optional
		    the colors of the bar faces
		
		edgecolor : scalar or array-like, optional
		    the colors of the bar edges
		
		linewidth : scalar or array-like, optional
		    width of bar edge(s). If None, use default
		    linewidth; If 0, don't draw edges.
		    default: None
		
		tick_label : string or array-like, optional
		    the tick labels of the bars
		    default: None
		
		xerr : scalar or array-like, optional
		    if not None, will be used to generate errorbar(s) on the bar chart
		    default: None
		
		yerr : scalar or array-like, optional
		    if not None, will be used to generate errorbar(s) on the bar chart
		    default: None
		
		ecolor : scalar or array-like, optional
		    specifies the color of errorbar(s)
		    default: None
		
		capsize : scalar, optional
		   determines the length in points of the error bar caps
		   default: None, which will take the value from the
		   ``errorbar.capsize`` :data:`rcParam<matplotlib.rcParams>`.
		
		error_kw : dict, optional
		    dictionary of kwargs to be passed to errorbar method. *ecolor* and
		    *capsize* may be specified here rather than as independent kwargs.
		
		align : {'edge',  'center'}, optional
		    If 'edge', aligns bars by their left edges (for vertical bars) and
		    by their bottom edges (for horizontal bars). If 'center', interpret
		    the `left` argument as the coordinates of the centers of the bars.
		    To align on the align bars on the right edge pass a negative
		    `width`.
		
		orientation : {'vertical',  'horizontal'}, optional
		    The orientation of the bars.
		
		log : boolean, optional
		    If true, sets the axis to be log scale.
		    default: False
		
		Returns
		-------
		bars : matplotlib.container.BarContainer
		    Container with all of the bars + errorbars
		
		Notes
		-----
		The optional arguments `color`, `edgecolor`, `linewidth`,
		`xerr`, and `yerr` can be either scalars or sequences of
		length equal to the number of bars.  This enables you to use
		bar as the basis for stacked bar charts, or candlestick plots.
		Detail: `xerr` and `yerr` are passed directly to
		:meth:`errorbar`, so they can also have shape 2xN for
		independent specification of lower and upper errors.
		
		Other optional kwargs:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		See also
		--------
		barh: Plot a horizontal bar plot.
		
		Examples
		--------
		
		**Example:** A stacked bar chart.
		
		.. plot:: mpl_examples/pylab_examples/bar_stacked.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'height', 'left', 'xerr', 'tick_label', 'bottom', 'color', 'linewidth', 'edgecolor', 'yerr', 'width', 'ecolor'.
	**/
	public function bar(left:Dynamic, height:Dynamic, ?width:Dynamic, ?bottom:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/barb_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function barbs(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a horizontal bar plot.
		
		Make a horizontal bar plot with rectangles bounded by:
		
		  `left`, `left` + `width`, `bottom`, `bottom` + `height`
		        (left, right, bottom and top edges)
		
		`bottom`, `width`, `height`, and `left` can be either scalars
		or sequences
		
		Parameters
		----------
		bottom : scalar or array-like
		    the y coordinate(s) of the bars
		
		width : scalar or array-like
		    the width(s) of the bars
		
		height : sequence of scalars, optional, default: 0.8
		    the heights of the bars
		
		left : sequence of scalars
		    the x coordinates of the left sides of the bars
		
		Returns
		--------
		`matplotlib.patches.Rectangle` instances.
		
		Other parameters
		----------------
		color : scalar or array-like, optional
		    the colors of the bars
		
		edgecolor : scalar or array-like, optional
		    the colors of the bar edges
		
		linewidth : scalar or array-like, optional, default: None
		    width of bar edge(s). If None, use default
		    linewidth; If 0, don't draw edges.
		
		tick_label : string or array-like, optional, default: None
		    the tick labels of the bars
		
		xerr : scalar or array-like, optional, default: None
		    if not None, will be used to generate errorbar(s) on the bar chart
		
		yerr : scalar or array-like, optional, default: None
		    if not None, will be used to generate errorbar(s) on the bar chart
		
		ecolor : scalar or array-like, optional, default: None
		    specifies the color of errorbar(s)
		
		capsize : scalar, optional
		   determines the length in points of the error bar caps
		   default: None, which will take the value from the
		   ``errorbar.capsize`` :data:`rcParam<matplotlib.rcParams>`.
		
		error_kw :
		    dictionary of kwargs to be passed to errorbar method. `ecolor` and
		    `capsize` may be specified here rather than as independent kwargs.
		
		align : ['edge' | 'center'], optional, default: 'edge'
		    If `edge`, aligns bars by their left edges (for vertical bars) and
		    by their bottom edges (for horizontal bars). If `center`, interpret
		    the `left` argument as the coordinates of the centers of the bars.
		
		log : boolean, optional, default: False
		    If true, sets the axis to be log scale
		
		Notes
		-----
		The optional arguments `color`, `edgecolor`, `linewidth`,
		`xerr`, and `yerr` can be either scalars or sequences of
		length equal to the number of bars.  This enables you to use
		bar as the basis for stacked bar charts, or candlestick plots.
		Detail: `xerr` and `yerr` are passed directly to
		:meth:`errorbar`, so they can also have shape 2xN for
		independent specification of lower and upper errors.
		
		Other optional kwargs:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		See also
		--------
		bar: Plot a vertical bar plot.
	**/
	public function barh(bottom:Dynamic, width:Dynamic, ?height:Dynamic, ?left:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a box and whisker plot.
		
		Call signature::
		
		  boxplot(self, x, notch=None, sym=None, vert=None, whis=None,
		          positions=None, widths=None, patch_artist=False,
		          bootstrap=None, usermedians=None, conf_intervals=None,
		          meanline=False, showmeans=False, showcaps=True,
		          showbox=True, showfliers=True, boxprops=None, labels=None,
		          flierprops=None, medianprops=None, meanprops=None,
		          capprops=None, whiskerprops=None, manage_xticks=True):
		
		Make a box and whisker plot for each column of *x* or each
		vector in sequence *x*.  The box extends from the lower to
		upper quartile values of the data, with a line at the median.
		The whiskers extend from the box to show the range of the
		data.  Flier points are those past the end of the whiskers.
		
		Parameters
		----------
		
		  x : Array or a sequence of vectors.
		    The input data.
		
		  notch : bool, default = False
		    If False, produces a rectangular box plot.
		    If True, will produce a notched box plot
		
		  sym : str or None, default = None
		    The default symbol for flier points.
		    Enter an empty string ('') if you don't want to show fliers.
		    If `None`, then the fliers default to 'b+'  If you want more
		    control use the flierprops kwarg.
		
		  vert : bool, default = True
		    If True (default), makes the boxes vertical.
		    If False, makes horizontal boxes.
		
		  whis : float, sequence (default = 1.5) or string
		    As a float, determines the reach of the whiskers past the first
		    and third quartiles (e.g., Q3 + whis*IQR, IQR = interquartile
		    range, Q3-Q1). Beyond the whiskers, data are considered outliers
		    and are plotted as individual points. Set this to an unreasonably
		    high value to force the whiskers to show the min and max values.
		    Alternatively, set this to an ascending sequence of percentile
		    (e.g., [5, 95]) to set the whiskers at specific percentiles of
		    the data. Finally, *whis* can be the string 'range' to force the
		    whiskers to the min and max of the data. In the edge case that
		    the 25th and 75th percentiles are equivalent, *whis* will be
		    automatically set to 'range'.
		
		  bootstrap : None (default) or integer
		    Specifies whether to bootstrap the confidence intervals
		    around the median for notched boxplots. If bootstrap==None,
		    no bootstrapping is performed, and notches are calculated
		    using a Gaussian-based asymptotic approximation  (see McGill, R.,
		    Tukey, J.W., and Larsen, W.A., 1978, and Kendall and Stuart,
		    1967). Otherwise, bootstrap specifies the number of times to
		    bootstrap the median to determine it's 95% confidence intervals.
		    Values between 1000 and 10000 are recommended.
		
		  usermedians : array-like or None (default)
		    An array or sequence whose first dimension (or length) is
		    compatible with *x*. This overrides the medians computed by
		    matplotlib for each element of *usermedians* that is not None.
		    When an element of *usermedians* == None, the median will be
		    computed by matplotlib as normal.
		
		  conf_intervals : array-like or None (default)
		    Array or sequence whose first dimension (or length) is compatible
		    with *x* and whose second dimension is 2. When the current element
		    of *conf_intervals* is not None, the notch locations computed by
		    matplotlib are overridden (assuming notch is True). When an
		    element of *conf_intervals* is None, boxplot compute notches the
		    method specified by the other kwargs (e.g., *bootstrap*).
		
		  positions : array-like, default = [1, 2, ..., n]
		    Sets the positions of the boxes. The ticks and limits
		    are automatically set to match the positions.
		
		  widths : array-like, default = 0.5
		    Either a scalar or a vector and sets the width of each box. The
		    default is 0.5, or ``0.15*(distance between extreme positions)``
		    if that is smaller.
		
		  labels : sequence or None (default)
		        Labels for each dataset. Length must be compatible with
		        dimensions  of *x*
		
		  patch_artist : bool, default = False
		    If False produces boxes with the Line2D artist
		    If True produces boxes with the Patch artist
		
		  showmeans : bool, default = False
		    If True, will toggle one the rendering of the means
		
		  showcaps : bool, default = True
		    If True, will toggle one the rendering of the caps
		
		  showbox : bool, default = True
		    If True, will toggle one the rendering of box
		
		  showfliers : bool, default = True
		    If True, will toggle one the rendering of the fliers
		
		  boxprops : dict or None (default)
		    If provided, will set the plotting style of the boxes
		
		  whiskerprops : dict or None (default)
		    If provided, will set the plotting style of the whiskers
		
		  capprops : dict or None (default)
		    If provided, will set the plotting style of the caps
		
		  flierprops : dict or None (default)
		    If provided, will set the plotting style of the fliers
		
		  medianprops : dict or None (default)
		    If provided, will set the plotting style of the medians
		
		  meanprops : dict or None (default)
		    If provided, will set the plotting style of the means
		
		  meanline : bool, default = False
		    If True (and *showmeans* is True), will try to render the mean
		    as a line spanning the full width of the box according to
		    *meanprops*. Not recommended if *shownotches* is also True.
		    Otherwise, means will be shown as points.
		
		  manage_xticks : bool, default = True
		    If the function should adjust the xlim and xtick locations.
		
		Returns
		-------
		
		result : dict
		    A dictionary mapping each component of the boxplot
		    to a list of the :class:`matplotlib.lines.Line2D`
		    instances created. That dictionary has the following keys
		    (assuming vertical boxplots):
		
		    - boxes: the main body of the boxplot showing the quartiles
		      and the median's confidence intervals if enabled.
		    - medians: horizonal lines at the median of each box.
		    - whiskers: the vertical lines extending to the most extreme,
		      n-outlier data points.
		    - caps: the horizontal lines at the ends of the whiskers.
		    - fliers: points representing data that extend beyond the
		      whiskers (outliers).
		    - means: points or lines representing the means.
		
		Examples
		--------
		
		.. plot:: mpl_examples/statistics/boxplot_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function boxplot(x:Dynamic, ?notch:Dynamic, ?sym:Dynamic, ?vert:Dynamic, ?whis:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?patch_artist:Dynamic, ?bootstrap:Dynamic, ?usermedians:Dynamic, ?conf_intervals:Dynamic, ?meanline:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?labels:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?meanprops:Dynamic, ?capprops:Dynamic, ?whiskerprops:Dynamic, ?manage_xticks:Dynamic, ?data:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Plot horizontal bars.
		
		Call signature::
		
		  broken_barh(self, xranges, yrange, **kwargs)
		
		A collection of horizontal bars spanning *yrange* with a sequence of
		*xranges*.
		
		Required arguments:
		
		  =========   ==============================
		  Argument    Description
		  =========   ==============================
		  *xranges*   sequence of (*xmin*, *xwidth*)
		  *yrange*    sequence of (*ymin*, *ywidth*)
		  =========   ==============================
		
		kwargs are
		:class:`matplotlib.collections.BrokenBarHCollection`
		properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		these can either be a single argument, i.e.,::
		
		  facecolors = 'black'
		
		or a sequence of arguments for the various bars, i.e.,::
		
		  facecolors = ('black', 'red', 'green')
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/broken_barh.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function broken_barh(xranges:Dynamic, yrange:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Drawing function for box and whisker plots.
		
		Call signature::
		
		  bxp(self, bxpstats, positions=None, widths=None, vert=True,
		      patch_artist=False, shownotches=False, showmeans=False,
		      showcaps=True, showbox=True, showfliers=True,
		      boxprops=None, whiskerprops=None, flierprops=None,
		      medianprops=None, capprops=None, meanprops=None,
		      meanline=False, manage_xticks=True):
		
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
		
		  - ``q3``: The first quartile (50th percentile) (scalar
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
		
		widths : array-like, default = 0.5
		  Either a scalar or a vector and sets the width of each
		  box. The default is 0.5, or ``0.15*(distance between extreme
		  positions)`` if that is smaller.
		
		vert : bool, default = False
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
		  If `True`, will toggle one the rendering of the means
		
		showcaps  : bool, default = True
		  If `True`, will toggle one the rendering of the caps
		
		showbox  : bool, default = True
		  If `True`, will toggle one the rendering of box
		
		showfliers : bool, default = True
		  If `True`, will toggle one the rendering of the fliers
		
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
		
		manage_xticks : bool, default = True
		  If the function should adjust the xlim and xtick locations.
		
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
		
		  - ``medians``: horizonal lines at the median of each box.
		
		  - ``whiskers``: the vertical lines extending to the most
		    extreme, n-outlier data points.
		
		  - ``caps``: the horizontal lines at the ends of the
		    whiskers.
		
		  - ``fliers``: points representing data that extend beyond
		    the whiskers (fliers).
		
		  - ``means``: points or lines representing the means.
		
		Examples
		--------
		
		.. plot:: mpl_examples/statistics/bxp_demo.py
	**/
	public function bxp(bxpstats:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?vert:Dynamic, ?patch_artist:Dynamic, ?shownotches:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?whiskerprops:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?capprops:Dynamic, ?meanprops:Dynamic, ?meanline:Dynamic, ?manage_xticks:Dynamic):python.Dict<Dynamic, Dynamic>;
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
		
		  clabel(cs, **kwargs)
		
		Adds labels to line contours in *cs*, where *cs* is a
		:class:`~matplotlib.contour.ContourSet` object returned by
		contour.
		
		::
		
		  clabel(cs, v, **kwargs)
		
		only labels contours listed in *v*.
		
		Optional keyword arguments:
		
		  *fontsize*:
		    size in points or relative size e.g., 'smaller', 'x-large'
		
		  *colors*:
		    - if *None*, the color of each label matches the color of
		      the corresponding contour
		
		    - if one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color
		
		    - if a tuple of matplotlib color args (string, float, rgb, etc),
		      different labels will be plotted in different colors in the order
		      specified
		
		  *inline*:
		    controls whether the underlying contour is removed or
		    not. Default is *True*.
		
		  *inline_spacing*:
		    space in pixels to leave on each side of label when
		    placing inline.  Defaults to 5.  This spacing will be
		    exact for labels at locations where the contour is
		    straight, less so for labels on curved contours.
		
		  *fmt*:
		    a format string for the label. Default is '%1.3f'
		    Alternatively, this can be a dictionary matching contour
		    levels with arbitrary strings to use for each contour level
		    (i.e., fmt[level]=string), or it can be any callable, such
		    as a :class:`~matplotlib.ticker.Formatter` instance, that
		    returns a string when called with a numeric contour level.
		
		  *manual*:
		    if *True*, contour labels will be placed manually using
		    mouse clicks.  Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels.  The third
		    button can be used to remove the last label added, but
		    only if labels are not inline.  Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can be an iterable object of x,y tuples. Contour labels
		    will be created as if mouse is clicked at each x,y positions.
		
		  *rightside_up*:
		    if *True* (default), label rotations will always be plus
		    or minus 90 degrees from level.
		
		  *use_clabeltext*:
		    if *True* (default is False), ClabelText class (instead of
		    matplotlib.Text) is used to create labels. ClabelText
		    recalculates rotation angles of texts during the drawing time,
		    therefore this can be used if aspect of the axes changes.
		
		.. plot:: mpl_examples/pylab_examples/contour_demo.py
	**/
	public function clabel(CS:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		clear the axes
	**/
	public function clear():Dynamic;
	/**
		Plot the coherence between *x* and *y*.
		
		Call signature::
		
		  cohere(x, y, NFFT=256, Fs=2, Fc=0, detrend = mlab.detrend_none,
		         window = mlab.window_hanning, noverlap=0, pad_to=None,
		         sides='default', scale_by_freq=None, **kwargs)
		
		Plot the coherence between *x* and *y*.  Coherence is the
		normalized cross spectral density:
		
		.. math::
		
		  C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		*NFFT*: integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		*detrend*: [ 'default' | 'constant' | 'mean' | 'linear' | 'none'] or
		           callable
		
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		*scale_by_freq*: boolean
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		  *noverlap*: integer
		    The number of points of overlap between blocks.  The
		    default value is 0 (no overlap).
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		The return value is a tuple (*Cxy*, *f*), where *f* are the
		frequencies of the coherence vector.
		
		kwargs are applied to the lines.
		
		References:
		
		  * Bendat & Piersol -- Random Data: Analysis and Measurement
		    Procedures, John Wiley & Sons (1986)
		
		kwargs control the :class:`~matplotlib.lines.Line2D`
		properties of the coherence plot:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/cohere_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function cohere(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether the mouse event occured in the axes.
		
		Returns *True* / *False*, {}
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		Returns *True* if the point (tuple of x,y) is inside the axes
		(the area defined by the its patch). A pixel coordinate is
		required.
	**/
	public function contains_point(point:Dynamic):Dynamic;
	/**
		Plot contours.
		
		:func:`~matplotlib.pyplot.contour` and
		:func:`~matplotlib.pyplot.contourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		:func:`~matplotlib.pyplot.contourf` differs from the MATLAB
		version in that it does not draw the polygon edges.
		To draw edges, add line contours with
		calls to :func:`~matplotlib.pyplot.contour`.
		
		
		Call signatures::
		
		  contour(Z)
		
		make a contour plot of an array *Z*. The level values are chosen
		automatically.
		
		::
		
		  contour(X,Y,Z)
		
		*X*, *Y* specify the (x, y) coordinates of the surface
		
		::
		
		  contour(Z,N)
		  contour(X,Y,Z,N)
		
		contour up to *N* automatically-chosen levels.
		
		::
		
		  contour(Z,V)
		  contour(X,Y,Z,V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  contourf(..., V)
		
		fill the ``len(V)-1`` regions between the values in *V*
		
		::
		
		  contour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		*X* and *Y* must both be 2-D with the same shape as *Z*, or they
		must both be 1-D such that ``len(X)`` is the number of columns in
		*Z* and ``len(Y)`` is the number of rows in *Z*.
		
		``C = contour(...)`` returns a
		:class:`~matplotlib.contour.QuadContourSet` object.
		
		Optional keyword arguments:
		
		  *corner_mask*: [ *True* | *False* | 'legacy' ]
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If *False*, any quad touching a masked point is
		    masked out.  If *True*, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		    If 'legacy', the old contouring algorithm is used, which is
		    equivalent to *False* and is deprecated, only remaining whilst the
		    new algorithm is tested fully.
		
		    If not specified, the default is taken from
		    rcParams['contour.corner_mask'], which is True unless it has
		    been modified.
		
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
		
		  *vmin*, *vmax*: [ *None* | scalar ]
		    If not *None*, either or both of these values will be
		    supplied to the :class:`matplotlib.colors.Normalize`
		    instance, overriding the default color scaling based on
		    *levels*.
		
		  *levels*: [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
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
		    If *locator* is *None*, the default
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
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from rcParams['lines.antialiased'].
		
		  *nchunk*: [ 0 | integer ]
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		contour-only keyword arguments:
		
		  *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified.
		
		  *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the default is 'solid' unless
		    the lines are monochrome.  In that case, negative
		    contours will take their linestyle from the ``matplotlibrc``
		    ``contour.negative_linestyle`` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		contourf-only keyword arguments:
		
		  *hatches*:
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		
		Note: contourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/contour_demo.py
		
		.. plot:: mpl_examples/pylab_examples/contourf_demo.py
		
		.. plot:: mpl_examples/pylab_examples/contour_corner_mask.py
	**/
	public function contour(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot contours.
		
		:func:`~matplotlib.pyplot.contour` and
		:func:`~matplotlib.pyplot.contourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		:func:`~matplotlib.pyplot.contourf` differs from the MATLAB
		version in that it does not draw the polygon edges.
		To draw edges, add line contours with
		calls to :func:`~matplotlib.pyplot.contour`.
		
		
		Call signatures::
		
		  contour(Z)
		
		make a contour plot of an array *Z*. The level values are chosen
		automatically.
		
		::
		
		  contour(X,Y,Z)
		
		*X*, *Y* specify the (x, y) coordinates of the surface
		
		::
		
		  contour(Z,N)
		  contour(X,Y,Z,N)
		
		contour up to *N* automatically-chosen levels.
		
		::
		
		  contour(Z,V)
		  contour(X,Y,Z,V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  contourf(..., V)
		
		fill the ``len(V)-1`` regions between the values in *V*
		
		::
		
		  contour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		*X* and *Y* must both be 2-D with the same shape as *Z*, or they
		must both be 1-D such that ``len(X)`` is the number of columns in
		*Z* and ``len(Y)`` is the number of rows in *Z*.
		
		``C = contour(...)`` returns a
		:class:`~matplotlib.contour.QuadContourSet` object.
		
		Optional keyword arguments:
		
		  *corner_mask*: [ *True* | *False* | 'legacy' ]
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If *False*, any quad touching a masked point is
		    masked out.  If *True*, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		    If 'legacy', the old contouring algorithm is used, which is
		    equivalent to *False* and is deprecated, only remaining whilst the
		    new algorithm is tested fully.
		
		    If not specified, the default is taken from
		    rcParams['contour.corner_mask'], which is True unless it has
		    been modified.
		
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
		
		  *vmin*, *vmax*: [ *None* | scalar ]
		    If not *None*, either or both of these values will be
		    supplied to the :class:`matplotlib.colors.Normalize`
		    instance, overriding the default color scaling based on
		    *levels*.
		
		  *levels*: [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
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
		    If *locator* is *None*, the default
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
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from rcParams['lines.antialiased'].
		
		  *nchunk*: [ 0 | integer ]
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		contour-only keyword arguments:
		
		  *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified.
		
		  *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the default is 'solid' unless
		    the lines are monochrome.  In that case, negative
		    contours will take their linestyle from the ``matplotlibrc``
		    ``contour.negative_linestyle`` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		contourf-only keyword arguments:
		
		  *hatches*:
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		
		Note: contourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/contour_demo.py
		
		.. plot:: mpl_examples/pylab_examples/contourf_demo.py
		
		.. plot:: mpl_examples/pylab_examples/contour_corner_mask.py
	**/
	public function contourf(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot the cross-spectral density.
		
		Call signature::
		
		  csd(x, y, NFFT=256, Fs=2, Fc=0, detrend=mlab.detrend_none,
		      window=mlab.window_hanning, noverlap=0, pad_to=None,
		      sides='default', scale_by_freq=None, return_line=None, **kwargs)
		
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
		
		  *x*, *y*: 1-D arrays or sequences
		    Arrays or sequences containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		*NFFT*: integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		*detrend*: [ 'default' | 'constant' | 'mean' | 'linear' | 'none'] or
		           callable
		
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		*scale_by_freq*: boolean
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		  *noverlap*: integer
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		  *return_line*: bool
		    Whether to include the line object plotted in the returned values.
		    Default is False.
		
		If *return_line* is False, returns the tuple (*Pxy*, *freqs*).
		If *return_line* is True, returns the tuple (*Pxy*, *freqs*. *line*):
		
		  *Pxy*: 1-D array
		    The values for the cross spectrum `P_{xy}` before scaling
		    (complex valued)
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the elements in *Pxy*
		
		  *line*: a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		    Only returend if *return_line* is True.
		
		For plotting, the power is plotted as
		:math:`10\log_{10}(P_{xy})` for decibels, though `P_{xy}` itself
		is returned.
		
		References:
		  Bendat & Piersol -- Random Data: Analysis and Measurement
		  Procedures, John Wiley & Sons (1986)
		
		kwargs control the Line2D properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/csd_demo.py
		
		.. seealso::
		
		    :func:`psd`
		        :func:`psd` is the equivalent to setting y=x.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
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
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot an errorbar graph.
		
		Call signature::
		
		  errorbar(x, y, yerr=None, xerr=None,
		           fmt='', ecolor=None, elinewidth=None, capsize=None,
		           barsabove=False, lolims=False, uplims=False,
		           xlolims=False, xuplims=False, errorevery=1,
		           capthick=None)
		
		Plot *x* versus *y* with error deltas in *yerr* and *xerr*.
		Vertical errorbars are plotted if *yerr* is not *None*.
		Horizontal errorbars are plotted if *xerr* is not *None*.
		
		*x*, *y*, *xerr*, and *yerr* can all be scalars, which plots a
		single error bar at *x*, *y*.
		
		Optional keyword arguments:
		
		  *xerr* /*yerr*: [ scalar | N, Nx1, or 2xN array-like ]
		    If a scalar number, len(N) array-like object, or an Nx1
		    array-like object, errorbars are drawn at +/-value relative
		    to the data.
		
		    If a sequence of shape 2xN, errorbars are drawn at -row1
		    and +row2 relative to the data.
		
		  *fmt*: [ '' | 'none' | plot format string ]
		    The plot format symbol. If *fmt* is 'none' (case-insensitive),
		    only the errorbars are plotted.  This is used for adding
		    errorbars to a bar plot, for example.  Default is '',
		    an empty plot format string; properties are
		    then identical to the defaults for :meth:`plot`.
		
		  *ecolor*: [ *None* | mpl color ]
		    A matplotlib color arg which gives the color the errorbar lines;
		    if *None*, use the color of the line connecting the markers.
		
		  *elinewidth*: scalar
		    The linewidth of the errorbar lines. If *None*, use the linewidth.
		
		  *capsize*: scalar
		    The length of the error bar caps in points; if *None*, it will
		    take the value from ``errorbar.capsize``
		    :data:`rcParam<matplotlib.rcParams>`.
		
		  *capthick*: scalar
		    An alias kwarg to *markeredgewidth* (a.k.a. - *mew*). This
		    setting is a more sensible name for the property that
		    controls the thickness of the error bar cap in points. For
		    backwards compatibility, if *mew* or *markeredgewidth* are given,
		    then they will over-ride *capthick*.  This may change in future
		    releases.
		
		  *barsabove*: [ *True* | *False* ]
		    if *True*, will plot the errorbars above the plot
		    symbols. Default is below.
		
		  *lolims* / *uplims* / *xlolims* / *xuplims*: [ *False* | *True* ]
		    These arguments can be used to indicate that a value gives
		    only upper/lower limits. In that case a caret symbol is
		    used to indicate this. lims-arguments may be of the same
		    type as *xerr* and *yerr*.  To use limits with inverted
		    axes, :meth:`set_xlim` or :meth:`set_ylim` must be called
		    before :meth:`errorbar`.
		
		  *errorevery*: positive integer
		    subsamples the errorbars. e.g., if errorevery=5, errorbars for
		    every 5-th datapoint will be plotted. The data plot itself still
		    shows all data points.
		
		All other keyword arguments are passed on to the plot command for the
		markers. For example, this code makes big red squares with
		thick green edges::
		
		  x,y,yerr = rand(3,10)
		  errorbar(x, y, yerr, marker='s',
		           mfc='red', mec='green', ms=20, mew=4)
		
		where *mfc*, *mec*, *ms* and *mew* are aliases for the longer
		property names, *markerfacecolor*, *markeredgecolor*, *markersize*
		and *markeredgewith*.
		
		valid kwargs for the marker properties are
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		Returns (*plotline*, *caplines*, *barlinecols*):
		
		    *plotline*: :class:`~matplotlib.lines.Line2D` instance
		        *x*, *y* plot markers and/or line
		
		    *caplines*: list of error bar cap
		        :class:`~matplotlib.lines.Line2D` instances
		    *barlinecols*: list of
		        :class:`~matplotlib.collections.LineCollection` instances for
		        the horizontal and vertical error ranges.
		
		**Example:**
		
		.. plot:: mpl_examples/statistics/errorbar_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'xerr', 'yerr', 'x', 'y'.
	**/
	public function errorbar(x:Dynamic, y:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?fmt:Dynamic, ?ecolor:Dynamic, ?elinewidth:Dynamic, ?capsize:Dynamic, ?barsabove:Dynamic, ?lolims:Dynamic, ?uplims:Dynamic, ?xlolims:Dynamic, ?xuplims:Dynamic, ?errorevery:Dynamic, ?capthick:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot identical parallel lines at specific positions.
		
		Call signature::
		
		  eventplot(positions, orientation='horizontal', lineoffsets=0,
		            linelengths=1, linewidths=None, color =None,
		            linestyles='solid'
		
		Plot parallel lines at the given positions.  positions should be a 1D
		or 2D array-like object, with each row corresponding to a row or column
		of lines.
		
		This type of plot is commonly used in neuroscience for representing
		neural events, where it is commonly called a spike raster, dot raster,
		or raster plot.
		
		However, it is useful in any situation where you wish to show the
		timing or position of multiple sets of discrete events, such as the
		arrival times of people to a business on each day of the month or the
		date of hurricanes each year of the last century.
		
		*orientation* : [ 'horizonal' | 'vertical' ]
		  'horizonal' : the lines will be vertical and arranged in rows
		  "vertical' : lines will be horizontal and arranged in columns
		
		*lineoffsets* :
		  A float or array-like containing floats.
		
		*linelengths* :
		  A float or array-like containing floats.
		
		*linewidths* :
		  A float or array-like containing floats.
		
		*colors*
		  must be a sequence of RGBA tuples (e.g., arbitrary color
		  strings, etc, not allowed) or a list of such sequences
		
		*linestyles* :
		  [ 'solid' | 'dashed' | 'dashdot' | 'dotted' ] or an array of these
		  values
		
		For linelengths, linewidths, colors, and linestyles, if only a single
		value is given, that value is applied to all lines.  If an array-like
		is given, it must have the same length as positions, and each value
		will be applied to the corresponding row or column in positions.
		
		Returns a list of :class:`matplotlib.collections.EventCollection`
		objects that were added.
		
		kwargs are :class:`~matplotlib.collections.LineCollection` properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or linewidths or lw: float or sequence of floats         
		  norm: unknown
		  offset_position: unknown
		  offsets: float or sequence of floats         
		  path_effects: unknown
		  paths: unknown
		  picker: [None|float|boolean|callable]         
		  pickradius: unknown
		  rasterized: [True | False | None]         
		  segments: unknown
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  urls: unknown
		  verts: unknown
		  visible: [True | False]         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/eventplot_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'lineoffsets', 'linelengths', 'colors', 'linewidths', 'linestyles', 'positions'.
	**/
	public function eventplot(positions:Dynamic, ?orientation:Dynamic, ?lineoffsets:Dynamic, ?linelengths:Dynamic, ?linewidths:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot filled polygons.
		
		Call signature::
		
		  fill(*args, **kwargs)
		
		*args* is a variable length argument, allowing for multiple
		*x*, *y* pairs with an optional color format string; see
		:func:`~matplotlib.pyplot.plot` for details on the argument
		parsing.  For example, to plot a polygon with vertices at *x*,
		*y* in blue.::
		
		  ax.fill(x,y, 'b' )
		
		An arbitrary number of *x*, *y*, *color* groups can be specified::
		
		  ax.fill(x1, y1, 'g', x2, y2, 'r')
		
		Return value is a list of :class:`~matplotlib.patches.Patch`
		instances that were added.
		
		The same color strings that :func:`~matplotlib.pyplot.plot`
		supports are supported by the fill format string.
		
		If you would like to fill below a curve, e.g., shade a region
		between 0 and *y* along *x*, use :meth:`fill_between`
		
		The *closed* kwarg will close the polygon when *True* (default).
		
		kwargs control the :class:`~matplotlib.patches.Polygon` properties:
		
		  agg_filter: unknown
		  alpha: float or None         
		  animated: [True | False]         
		  antialiased or aa: [True | False]  or None for default         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  capstyle: ['butt' | 'round' | 'projecting']         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: matplotlib color spec
		  contains: a callable function         
		  edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		  facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fill: [True | False]         
		  gid: an id string         
		  hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		  joinstyle: ['miter' | 'round' | 'bevel']         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float or None for default         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/lines_bars_and_markers/fill_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function fill(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make filled polygons between two curves.
		
		
		Create a :class:`~matplotlib.collections.PolyCollection`
		filling the regions between *y1* and *y2* where
		``where==True``
		
		Parameters
		----------
		x : array
		    An N-length array of the x data
		
		y1 : array
		    An N-length array (or scalar) of the y data
		
		y2 : array
		    An N-length array (or scalar) of the y data
		
		where : array, optional
		    If `None`, default to fill between everywhere.  If not `None`,
		    it is an N-length numpy boolean array and the fill will
		    only happen over the regions where ``where==True``.
		
		interpolate : bool, optional
		    If `True`, interpolate between the two lines to find the
		    precise point of intersection.  Otherwise, the start and
		    end points of the filled region will only occur on explicit
		    values in the *x* array.
		
		step : {'pre', 'post', 'mid'}, optional
		    If not None, fill with step logic.
		
		
		Notes
		-----
		
		Additional Keyword args passed on to the
		:class:`~matplotlib.collections.PolyCollection`.
		
		kwargs control the :class:`~matplotlib.patches.Polygon` properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		Examples
		--------
		
		.. plot:: mpl_examples/pylab_examples/fill_between_demo.py
		
		See Also
		--------
		
		    :meth:`fill_betweenx`
		        for filling between two sets of x-values
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'y2', 'y1', 'x', 'where'.
	**/
	public function fill_between(x:Dynamic, y1:Dynamic, ?y2:Dynamic, ?where:Dynamic, ?interpolate:Dynamic, ?step:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make filled polygons between two horizontal curves.
		
		Call signature::
		
		  fill_betweenx(y, x1, x2=0, where=None, **kwargs)
		
		Create a :class:`~matplotlib.collections.PolyCollection`
		filling the regions between *x1* and *x2* where
		``where==True``
		
		Parameters
		----------
		y : array
		    An N-length array of the y data
		
		x1 : array
		    An N-length array (or scalar) of the x data
		
		x2 : array, optional
		    An N-length array (or scalar) of the x data
		
		where : array, optional
		    If *None*, default to fill between everywhere.  If not *None*,
		    it is a N length numpy boolean array and the fill will
		    only happen over the regions where ``where==True``
		
		step : {'pre', 'post', 'mid'}, optional
		    If not None, fill with step logic.
		
		Notes
		-----
		
		keyword args passed on to the
		    :class:`~matplotlib.collections.PolyCollection`
		
		kwargs control the :class:`~matplotlib.patches.Polygon` properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		Examples
		--------
		
		.. plot:: mpl_examples/pylab_examples/fill_betweenx_demo.py
		
		See Also
		--------
		
		    :meth:`fill_between`
		        for filling between two sets of y-values
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x2', 'y', 'x1', 'where'.
	**/
	public function fill_betweenx(y:Dynamic, x1:Dynamic, ?x2:Dynamic, ?where:Dynamic, ?step:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a format string formatting the *x*, *y* coord
	**/
	public function format_coord(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return *cursor data* string formatted.
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Return *x* string formatted.  This function will use the attribute
		self.fmt_xdata if it is callable, else will fall back on the xaxis
		major formatter
	**/
	public function format_xdata(x:Dynamic):Dynamic;
	/**
		Return y string formatted.  This function will use the
		:attr:`fmt_ydata` attribute if it is callable, else will fall
		back on the yaxis major formatter
	**/
	public function format_ydata(y:Dynamic):Dynamic;
	public function get_adjustable():Dynamic;
	/**
		return filter function to be used for agg filter
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	public function get_anchor():Dynamic;
	/**
		Return the artist's animated state
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
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
	**/
	public function get_axes():Dynamic;
	/**
		return axes_locator
	**/
	public function get_axes_locator():Dynamic;
	/**
		Return the axis background color
	**/
	public function get_axis_bgcolor():Dynamic;
	/**
		Get whether axis below is true or not
	**/
	public function get_axisbelow():Dynamic;
	/**
		return a list of child artists
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
	/**
		Return the cursor propertiess as a (*linewidth*, *color*)
		tuple, where *linewidth* is a float and *color* is an RGBA
		tuple
	**/
	public function get_cursor_props():Dynamic;
	/**
		Returns the aspect ratio of the raw data.
		
		This method is intended to be overridden by new projection
		types.
	**/
	public function get_data_ratio():Dynamic;
	/**
		Returns the aspect ratio of the raw data in log scale.
		Will be used when both axis scales are in log.
	**/
	public function get_data_ratio_log():Dynamic;
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Get whether the axes rectangle patch is drawn
	**/
	public function get_frame_on():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		return a list of Axes images contained by the Axes
	**/
	public function get_images():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the legend.Legend instance, or None if no legend is defined
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
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	/**
		Return the a copy of the axes rectangle as a Bbox
	**/
	public function get_position(?original:Dynamic):Dynamic;
	/**
		Get zorder value below which artists will be rasterized
	**/
	public function get_rasterization_zorder():Dynamic;
	/**
		return True if the artist is to be rasterized
	**/
	public function get_rasterized():Dynamic;
	public function get_renderer_cache():Dynamic;
	/**
		Return a copy of the shared axes Grouper object for x axes
	**/
	public function get_shared_x_axes():Dynamic;
	/**
		Return a copy of the shared axes Grouper object for y axes
	**/
	public function get_shared_y_axes():Dynamic;
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
		Return the tight bounding box of the axes.
		The dimension of the Bbox in canvas coordinate.
		
		If *call_axes_locator* is *False*, it does not call the
		_axes_locator attribute, which is necessary to get the correct
		bounding box. ``call_axes_locator==False`` can be used if the
		caller is only intereted in the relative size of the tightbbox
		compared to the axes bbox.
	**/
	public function get_tightbbox(renderer:Dynamic, ?call_axes_locator:Dynamic):Dynamic;
	/**
		Get an axes title.
		
		Get one of the three available axes titles. The available titles
		are positioned above the axes in the center, flush with the left
		edge, and flush with the right edge.
		
		Parameters
		----------
		loc : {'center', 'left', 'right'}, str, optional
		    Which title to get, defaults to 'center'
		
		Returns
		-------
		title: str
		    The title text string.
	**/
	public function get_title(?loc:Dynamic):Dynamic;
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
		get the axes bounding box in display space; *args* and
		*kwargs* are empty
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the XAxis instance
	**/
	public function get_xaxis():Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, which
		will add the given amount of padding (in points) between the
		axes and the label.  The x-direction is in data coordinates
		and the y-direction is in axis coordinates.  Returns a
		3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing the secondary x-axis
		labels, which will add the given amount of padding (in points)
		between the axes and the label.  The x-direction is in data
		coordinates and the y-direction is in axis coordinates.
		Returns a 3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, ticks
		and gridlines.  The x-direction is in data coordinates and the
		y-direction is in axis coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_transform(?which:Dynamic):Dynamic;
	/**
		Returns the x-axis numerical bounds where::
		
		  lowerBound < upperBound
	**/
	public function get_xbound():Dynamic;
	/**
		Get the x grid lines as a list of Line2D instances
	**/
	public function get_xgridlines():Dynamic;
	/**
		Get the xlabel text string.
	**/
	public function get_xlabel():Dynamic;
	/**
		Get the x-axis range [*left*, *right*]
	**/
	public function get_xlim():Dynamic;
	/**
		Get the xtick labels as a list of :class:`~matplotlib.text.Text`
		instances.
	**/
	public function get_xmajorticklabels():Dynamic;
	/**
		Get the x minor tick labels as a list of
		:class:`matplotlib.text.Text` instances.
	**/
	public function get_xminorticklabels():Dynamic;
	/**
		Return the xaxis scale string: linear, log, logit, symlog
	**/
	public function get_xscale():Dynamic;
	/**
		Get the x tick labels as a list of :class:`~matplotlib.text.Text`
		instances.
		
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
		   List of :class:`~matplotlib.text.Text` instances.
	**/
	public function get_xticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the xtick lines as a list of Line2D instances
	**/
	public function get_xticklines():Dynamic;
	/**
		Return the x ticks as a list of locations
	**/
	public function get_xticks(?minor:Dynamic):Dynamic;
	/**
		Return the YAxis instance
	**/
	public function get_yaxis():Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, which
		will add the given amount of padding (in points) between the
		axes and the label.  The x-direction is in axis coordinates
		and the y-direction is in data coordinates.  Returns a 3-tuple
		of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing the secondary y-axis
		labels, which will add the given amount of padding (in points)
		between the axes and the label.  The x-direction is in axis
		coordinates and the y-direction is in data coordinates.
		Returns a 3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, ticks
		and gridlines.  The x-direction is in axis coordinates and the
		y-direction is in data coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return y-axis numerical bounds in the form of
		``lowerBound < upperBound``
	**/
	public function get_ybound():Dynamic;
	/**
		Get the y grid lines as a list of Line2D instances
	**/
	public function get_ygridlines():Dynamic;
	/**
		Get the ylabel text string.
	**/
	public function get_ylabel():Dynamic;
	/**
		Get the y-axis range [*bottom*, *top*]
	**/
	public function get_ylim():Dynamic;
	/**
		Get the major y tick labels as a list of
		:class:`~matplotlib.text.Text` instances.
	**/
	public function get_ymajorticklabels():Dynamic;
	/**
		Get the minor y tick labels as a list of
		:class:`~matplotlib.text.Text` instances.
	**/
	public function get_yminorticklabels():Dynamic;
	/**
		Return the yaxis scale string: linear, log, logit, symlog
	**/
	public function get_yscale():Dynamic;
	/**
		Get the x tick labels as a list of :class:`~matplotlib.text.Text`
		instances.
		
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
		   List of :class:`~matplotlib.text.Text` instances.
	**/
	public function get_yticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the ytick lines as a list of Line2D instances
	**/
	public function get_yticklines():Dynamic;
	/**
		Return the y ticks as a list of locations
	**/
	public function get_yticks(?minor:Dynamic):Dynamic;
	/**
		Return the :class:`Artist`'s zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Turn the axes grids on or off.
		
		Call signature::
		
		   grid(self, b=None, which='major', axis='both', **kwargs)
		
		Set the axes grids on or off; *b* is a boolean.  (For MATLAB
		compatibility, *b* may also be a string, 'on' or 'off'.)
		
		If *b* is *None* and ``len(kwargs)==0``, toggle the grid state.  If
		*kwargs* are supplied, it is assumed that you want a grid and *b*
		is thus set to *True*.
		
		*which* can be 'major' (default), 'minor', or 'both' to control
		whether major tick grids, minor tick grids, or both are affected.
		
		*axis* can be 'both' (default), 'x', or 'y' to control which
		set of gridlines are drawn.
		
		*kwargs* are used to set the grid line properties, e.g.,::
		
		   ax.grid(color='r', linestyle='-', linewidth=2)
		
		Valid :class:`~matplotlib.lines.Line2D` kwargs are
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
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
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		Make a hexagonal binning plot.
		
		Call signature::
		
		   hexbin(x, y, C = None, gridsize = 100, bins = None,
		          xscale = 'linear', yscale = 'linear',
		          cmap=None, norm=None, vmin=None, vmax=None,
		          alpha=None, linewidths=None, edgecolors='none'
		          reduce_C_function = np.mean, mincnt=None, marginals=True
		          **kwargs)
		
		Make a hexagonal binning plot of *x* versus *y*, where *x*,
		*y* are 1-D sequences of the same length, *N*. If *C* is *None*
		(the default), this is a histogram of the number of occurences
		of the observations at (x[i],y[i]).
		
		If *C* is specified, it specifies values at the coordinate
		(x[i],y[i]). These values are accumulated for each hexagonal
		bin and then reduced according to *reduce_C_function*, which
		defaults to numpy's mean function (np.mean). (If *C* is
		specified, it must also be a 1-D sequence of the same length
		as *x* and *y*.)
		
		*x*, *y* and/or *C* may be masked arrays, in which case only
		unmasked points will be plotted.
		
		Optional keyword arguments:
		
		*gridsize*: [ 100 | integer ]
		   The number of hexagons in the *x*-direction, default is
		   100. The corresponding number of hexagons in the
		   *y*-direction is chosen such that the hexagons are
		   approximately regular. Alternatively, gridsize can be a
		   tuple with two elements specifying the number of hexagons
		   in the *x*-direction and the *y*-direction.
		
		*bins*: [ *None* | 'log' | integer | sequence ]
		   If *None*, no binning is applied; the color of each hexagon
		   directly corresponds to its count value.
		
		   If 'log', use a logarithmic scale for the color
		   map. Internally, :math:`log_{10}(i+1)` is used to
		   determine the hexagon color.
		
		   If an integer, divide the counts in the specified number
		   of bins, and color the hexagons accordingly.
		
		   If a sequence of values, the values of the lower bound of
		   the bins to be used.
		
		*xscale*: [ 'linear' | 'log' ]
		   Use a linear or log10 scale on the horizontal axis.
		
		*scale*: [ 'linear' | 'log' ]
		   Use a linear or log10 scale on the vertical axis.
		
		*mincnt*: [ *None* | a positive integer ]
		   If not *None*, only display cells with more than *mincnt*
		   number of points in the cell
		
		*marginals*: [ *True* | *False* ]
		   if marginals is *True*, plot the marginal density as
		   colormapped rectagles along the bottom of the x-axis and
		   left of the y-axis
		
		*extent*: [ *None* | scalars (left, right, bottom, top) ]
		   The limits of the bins. The default assigns the limits
		   based on gridsize, x, y, xscale and yscale.
		
		Other keyword arguments controlling color mapping and normalization
		arguments:
		
		*cmap*: [ *None* | Colormap ]
		   a :class:`matplotlib.colors.Colormap` instance. If *None*,
		   defaults to rc ``image.cmap``.
		
		*norm*: [ *None* | Normalize ]
		   :class:`matplotlib.colors.Normalize` instance is used to
		   scale luminance data to 0,1.
		
		*vmin* / *vmax*: scalar
		   *vmin* and *vmax* are used in conjunction with *norm* to normalize
		   luminance data.  If either are *None*, the min and max of the color
		   array *C* is used.  Note if you pass a norm instance, your settings
		   for *vmin* and *vmax* will be ignored.
		
		*alpha*: scalar between 0 and 1, or *None*
		   the alpha value for the patches
		
		*linewidths*: [ *None* | scalar ]
		   If *None*, defaults to rc lines.linewidth. Note that this
		   is a tuple, and if you set the linewidths argument you
		   must set it as a sequence of floats, as required by
		   :class:`~matplotlib.collections.RegularPolyCollection`.
		
		Other keyword arguments controlling the Collection properties:
		
		*edgecolors*: [ *None* | ``'none'`` | mpl color | color sequence ]
		   If ``'none'``, draws the edges in the same color as the fill color.
		   This is the default, as it avoids unsightly unpainted pixels
		   between the hexagons.
		
		   If *None*, draws the outlines in the default color.
		
		   If a matplotlib color arg or sequence of rgba tuples, draws the
		   outlines in the specified color.
		
		Here are the standard descriptions of all the
		:class:`~matplotlib.collections.Collection` kwargs:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		The return value is a
		:class:`~matplotlib.collections.PolyCollection` instance; use
		:meth:`~matplotlib.collections.PolyCollection.get_array` on
		this :class:`~matplotlib.collections.PolyCollection` to get
		the counts in each hexagon. If *marginals* is *True*, horizontal
		bar and vertical bar (both PolyCollections) will be attached
		to the return collection as attributes *hbar* and *vbar*.
		
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/hexbin_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function hexbin(x:Dynamic, y:Dynamic, ?C:Dynamic, ?gridsize:Dynamic, ?bins:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?extent:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?edgecolors:Dynamic, ?reduce_C_function:Dynamic, ?mincnt:Dynamic, ?marginals:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a histogram.
		
		Compute and draw the histogram of *x*. The return value is a
		tuple (*n*, *bins*, *patches*) or ([*n0*, *n1*, ...], *bins*,
		[*patches0*, *patches1*,...]) if the input contains multiple
		data.
		
		Multiple data can be provided via *x* as a list of datasets
		of potentially different length ([*x0*, *x1*, ...]), or as
		a 2-D ndarray in which each column is a dataset.  Note that
		the ndarray form is transposed relative to the list form.
		
		Masked arrays are not supported at present.
		
		Parameters
		----------
		x : (n,) array or sequence of (n,) arrays
		    Input values, this takes either a single array or a sequency of
		    arrays which are not required to be of the same length
		
		bins : integer or array_like, optional
		    If an integer is given, `bins + 1` bin edges are returned,
		    consistently with :func:`numpy.histogram` for numpy version >=
		    1.3.
		
		    Unequally spaced bins are supported if `bins` is a sequence.
		
		    default is 10
		
		range : tuple or None, optional
		    The lower and upper range of the bins. Lower and upper outliers
		    are ignored. If not provided, `range` is (x.min(), x.max()). Range
		    has no effect if `bins` is a sequence.
		
		    If `bins` is a sequence or `range` is specified, autoscaling
		    is based on the specified bin range instead of the
		    range of x.
		
		    Default is ``None``
		
		normed : boolean, optional
		    If `True`, the first element of the return tuple will
		    be the counts normalized to form a probability density, i.e.,
		    ``n/(len(x)`dbin)``, i.e., the integral of the histogram will sum
		    to 1. If *stacked* is also *True*, the sum of the histograms is
		    normalized to 1.
		
		    Default is ``False``
		
		weights : (n, ) array_like or None, optional
		    An array of weights, of the same shape as `x`.  Each value in `x`
		    only contributes its associated weight towards the bin count
		    (instead of 1).  If `normed` is True, the weights are normalized,
		    so that the integral of the density over the range remains 1.
		
		    Default is ``None``
		
		cumulative : boolean, optional
		    If `True`, then a histogram is computed where each bin gives the
		    counts in that bin plus all bins for smaller values. The last bin
		    gives the total number of datapoints.  If `normed` is also `True`
		    then the histogram is normalized such that the last bin equals 1.
		    If `cumulative` evaluates to less than 0 (e.g., -1), the direction
		    of accumulation is reversed.  In this case, if `normed` is also
		    `True`, then the histogram is normalized such that the first bin
		    equals 1.
		
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
		      are given the bars are aranged side by side.
		
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
		    `None`, automatically compute the width.
		
		    Ignored if `histtype` is 'step' or 'stepfilled'.
		
		    Default is ``None``
		
		log : boolean, optional
		    If `True`, the histogram axis will be set to a log scale. If `log`
		    is `True` and `x` is a 1D array, empty bins will be filtered out
		    and only the non-empty (`n`, `bins`, `patches`) will be returned.
		
		    Default is ``False``
		
		color : color or array_like of colors or None, optional
		    Color spec or sequence of color specs, one per dataset.  Default
		    (`None`) uses the standard line color sequence.
		
		    Default is ``None``
		
		label : string or None, optional
		    String, or sequence of strings to match multiple datasets.  Bar
		    charts yield multiple patches per dataset, but only the first gets
		    the label, so that the legend command will work as expected.
		
		    default is ``None``
		
		stacked : boolean, optional
		    If `True`, multiple data are stacked on top of each other If
		    `False` multiple data are aranged side by side if histtype is
		    'bar' or on top of each other if histtype is 'step'
		
		    Default is ``False``
		
		Returns
		-------
		n : array or list of arrays
		    The values of the histogram bins. See **normed** and **weights**
		    for a description of the possible semantics. If input **x** is an
		    array, then this is an array of length **nbins**. If input is a
		    sequence arrays ``[data1, data2,..]``, then this is a list of
		    arrays with the values of the histograms for each of the arrays
		    in the same order.
		
		bins : array
		    The edges of the bins. Length nbins + 1 (nbins left edges and right
		    edge of last bin).  Always a single array even when multiple data
		    sets are passed in.
		
		patches : list or list of lists
		    Silent list of individual patches used to create the histogram
		    or list of such list if multiple input datasets.
		
		Other Parameters
		----------------
		kwargs : `~matplotlib.patches.Patch` properties
		
		See also
		--------
		hist2d : 2D histograms
		
		Notes
		-----
		Until numpy release 1.5, the underlying numpy histogram function was
		incorrect with `normed`=`True` if bin sizes were unequal.  MPL
		inherited that error.  It is now corrected within MPL when using
		earlier numpy versions.
		
		Examples
		--------
		.. plot:: mpl_examples/statistics/histogram_demo_features.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'weights', 'x'.
	**/
	public function hist(x:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?cumulative:Dynamic, ?bottom:Dynamic, ?histtype:Dynamic, ?align:Dynamic, ?orientation:Dynamic, ?rwidth:Dynamic, ?log:Dynamic, ?color:Dynamic, ?label:Dynamic, ?stacked:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a 2D histogram plot.
		
		Parameters
		----------
		x, y: array_like, shape (n, )
		    Input values
		
		bins: [None | int | [int, int] | array_like | [array, array]]
		
		    The bin specification:
		
		        - If int, the number of bins for the two dimensions
		          (nx=ny=bins).
		
		        - If [int, int], the number of bins in each dimension
		          (nx, ny = bins).
		
		        - If array_like, the bin edges for the two dimensions
		          (x_edges=y_edges=bins).
		
		        - If [array, array], the bin edges in each dimension
		          (x_edges, y_edges = bins).
		
		    The default value is 10.
		
		range : array_like shape(2, 2), optional, default: None
		     The leftmost and rightmost edges of the bins along each dimension
		     (if not specified explicitly in the bins parameters): [[xmin,
		     xmax], [ymin, ymax]]. All values outside of this range will be
		     considered outliers and not tallied in the histogram.
		
		normed : boolean, optional, default: False
		     Normalize histogram.
		
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
		The return value is ``(counts, xedges, yedges, Image)``.
		
		Other parameters
		-----------------
		kwargs : :meth:`pcolorfast` properties.
		
		See also
		--------
		hist : 1D histogram
		
		Notes
		-----
		Rendering the histogram with a logarithmic color scale is
		accomplished by passing a :class:`colors.LogNorm` instance to
		the *norm* keyword argument. Likewise, power-law normalization
		(similar in effect to gamma correction) can be accomplished with
		:class:`colors.PowerNorm`.
		
		Examples
		--------
		.. plot:: mpl_examples/pylab_examples/hist2d_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'weights', 'x', 'y'.
	**/
	public function hist2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic, ?cmin:Dynamic, ?cmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		Plot horizontal lines at each `y` from `xmin` to `xmax`.
		
		Parameters
		----------
		y : scalar or sequence of scalar
		    y-indexes where to plot the lines.
		
		xmin, xmax : scalar or 1D array_like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : array_like of colors, optional, default: 'k'
		
		linestyles : ['solid' | 'dashed' | 'dashdot' | 'dotted'], optional
		
		label : string, optional, default: ''
		
		Returns
		-------
		lines : `~matplotlib.collections.LineCollection`
		
		Other parameters
		----------------
		kwargs :  `~matplotlib.collections.LineCollection` properties.
		
		See also
		--------
		vlines : vertical lines
		
		Examples
		--------
		.. plot:: mpl_examples/pylab_examples/vline_hline_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'xmin', 'y', 'xmax'.
	**/
	public function hlines(y:Dynamic, xmin:Dynamic, xmax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  hold(b=None)
		
		Set the hold state.  If *hold* is *None* (default), toggle the
		*hold* state.  Else set the *hold* state to boolean value *b*.
		
		Examples::
		
		  # toggle hold
		  hold()
		
		  # turn hold on
		  hold(True)
		
		  # turn hold off
		  hold(False)
		
		When hold is *True*, subsequent plot commands will be added to
		the current axes.  When hold is *False*, the current axes and
		figure will be cleared on the next plot command
	**/
	public function hold(?b:Dynamic):Dynamic;
	/**
		Display an image on the axes.
		
		Parameters
		-----------
		X : array_like, shape (n, m) or (n, m, 3) or (n, m, 4)
		    Display the image in `X` to current axes.  `X` may be a float
		    array, a uint8 array or a PIL image. If `X` is an array, it
		    can have the following shapes:
		
		    - MxN -- luminance (grayscale, float array only)
		    - MxNx3 -- RGB (float or uint8 array)
		    - MxNx4 -- RGBA (float or uint8 array)
		
		    The value for each component of MxNx3 and MxNx4 float arrays
		    should be in the range 0.0 to 1.0; MxN float arrays may be
		    normalised.
		
		cmap : `~matplotlib.colors.Colormap`, optional, default: None
		    If None, default to rc `image.cmap` value. `cmap` is ignored when
		    `X` has RGB(A) information
		
		aspect : ['auto' | 'equal' | scalar], optional, default: None
		    If 'auto', changes the image aspect ratio to match that of the
		    axes.
		
		    If 'equal', and `extent` is None, changes the axes aspect ratio to
		    match that of the image. If `extent` is not `None`, the axes
		    aspect ratio is changed to match that of the extent.
		
		    If None, default to rc ``image.aspect`` value.
		
		interpolation : string, optional, default: None
		    Acceptable values are 'none', 'nearest', 'bilinear', 'bicubic',
		    'spline16', 'spline36', 'hanning', 'hamming', 'hermite', 'kaiser',
		    'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell', 'sinc',
		    'lanczos'
		
		    If `interpolation` is None, default to rc `image.interpolation`.
		    See also the `filternorm` and `filterrad` parameters.
		    If `interpolation` is 'none', then no interpolation is performed
		    on the Agg, ps and pdf backends. Other backends will fall back to
		    'nearest'.
		
		norm : `~matplotlib.colors.Normalize`, optional, default: None
		    A `~matplotlib.colors.Normalize` instance is used to scale
		    luminance data to 0, 1. If `None`, use the default
		    func:`normalize`. `norm` is only used if `X` is an array of
		    floats.
		
		vmin, vmax : scalar, optional, default: None
		    `vmin` and `vmax` are used in conjunction with norm to normalize
		    luminance data.  Note if you pass a `norm` instance, your
		    settings for `vmin` and `vmax` will be ignored.
		
		alpha : scalar, optional, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque)
		
		origin : ['upper' | 'lower'], optional, default: None
		    Place the [0,0] index of the array in the upper left or lower left
		    corner of the axes. If None, default to rc `image.origin`.
		
		extent : scalars (left, right, bottom, top), optional, default: None
		    The location, in data-coordinates, of the lower-left and
		    upper-right corners. If `None`, the image is positioned such that
		    the pixel centers fall on zero-based (row, column) indices.
		
		shape : scalars (columns, rows), optional, default: None
		    For raw buffer images
		
		filternorm : scalar, optional, default: 1
		    A parameter for the antigrain image resize filter.  From the
		    antigrain documentation, if `filternorm` = 1, the filter
		    normalizes integer values and corrects the rounding errors. It
		    doesn't do anything with the source floating point values, it
		    corrects only integers according to the rule of 1.0 which means
		    that any sum of pixel weights must be equal to 1.0.  So, the
		    filter function must produce a graph of the proper shape.
		
		filterrad : scalar, optional, default: 4.0
		    The filter radius for filters that have a radius parameter, i.e.
		    when interpolation is one of: 'sinc', 'lanczos' or 'blackman'
		
		Returns
		--------
		image : `~matplotlib.image.AxesImage`
		
		Other parameters
		----------------
		kwargs : `~matplotlib.artist.Artist` properties.
		
		See also
		--------
		matshow : Plot a matrix or an array as an image.
		
		Notes
		-----
		Unless *extent* is used, pixel centers will be located at integer
		coordinates. In other words: the origin will coincide with the center
		of pixel (0, 0).
		
		Examples
		--------
		
		.. plot:: mpl_examples/pylab_examples/image_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function imshow(X:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?aspect:Dynamic, ?interpolation:Dynamic, ?alpha:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?origin:Dynamic, ?extent:Dynamic, ?shape:Dynamic, ?filternorm:Dynamic, ?filterrad:Dynamic, ?imlim:Dynamic, ?resample:Dynamic, ?url:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if the given *mouseevent* (in display coords)
		is in the Axes
	**/
	public function in_axes(mouseevent:Dynamic):Dynamic;
	/**
		Invert the x-axis.
	**/
	public function invert_xaxis():Dynamic;
	/**
		Invert the y-axis.
	**/
	public function invert_yaxis():Dynamic;
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
		return the HOLD status of the axes
	**/
	public function ishold():Dynamic;
	/**
		Places a legend on the axes.
		
		To make a legend for lines which already exist on the axes
		(via plot for instance), simply call this function with an iterable
		of strings, one for each legend item. For example::
		
		    ax.plot([1, 2, 3])
		    ax.legend(['A simple line'])
		
		However, in order to keep the "label" and the legend element
		instance together, it is preferable to specify the label either at
		artist creation, or by calling the
		:meth:`~matplotlib.artist.Artist.set_label` method on the artist::
		
		    line, = ax.plot([1, 2, 3], label='Inline label')
		    # Overwrite the label by calling the method.
		    line.set_label('Label via method')
		    ax.legend()
		
		Specific lines can be excluded from the automatic legend element
		selection by defining a label starting with an underscore.
		This is default for all artists, so calling :meth:`legend` without
		any arguments and without setting the labels manually will result in
		no legend being drawn.
		
		For full control of which artists have a legend entry, it is possible
		to pass an iterable of legend artists followed by an iterable of
		legend labels respectively::
		
		   legend((line1, line2, line3), ('label1', 'label2', 'label3'))
		
		Parameters
		----------
		loc : int or string or pair of floats, default: 'upper right'
		    The location of the legend. Possible codes are:
		
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
		
		
		    Alternatively can be a 2-tuple giving ``x, y`` of the lower-left
		    corner of the legend in axes coordinates (in which case
		    ``bbox_to_anchor`` will be ignored).
		
		bbox_to_anchor : :class:`matplotlib.transforms.BboxBase` instance                          or tuple of floats
		    Specify any arbitrary location for the legend in `bbox_transform`
		    coordinates (default Axes coordinates).
		
		    For example, to put the legend's upper right hand corner in the
		    center of the axes the following keywords can be used::
		
		       loc='upper right', bbox_to_anchor=(0.5, 0.5)
		
		ncol : integer
		    The number of columns that the legend has. Default is 1.
		
		prop : None or :class:`matplotlib.font_manager.FontProperties` or dict
		    The font properties of the legend. If None (default), the current
		    :data:`matplotlib.rcParams` will be used.
		
		fontsize : int or float or {'xx-small', 'x-small', 'small', 'medium',                   'large', 'x-large', 'xx-large'}
		    Controls the font size of the legend. If the value is numeric the
		    size will be the absolute font size in points. String values are
		    relative to the current default font size. This argument is only
		    used if `prop` is not specified.
		
		numpoints : None or int
		    The number of marker points in the legend when creating a legend
		    entry for a line/:class:`matplotlib.lines.Line2D`.
		    Default is ``None`` which will take the value from the
		    ``legend.numpoints`` :data:`rcParam<matplotlib.rcParams>`.
		
		scatterpoints : None or int
		    The number of marker points in the legend when creating a legend
		    entry for a scatter plot/
		    :class:`matplotlib.collections.PathCollection`.
		    Default is ``None`` which will take the value from the
		    ``legend.scatterpoints`` :data:`rcParam<matplotlib.rcParams>`.
		
		scatteryoffsets : iterable of floats
		    The vertical offset (relative to the font size) for the markers
		    created for a scatter plot legend entry. 0.0 is at the base the
		    legend text, and 1.0 is at the top. To draw all markers at the
		    same height, set to ``[0.5]``. Default ``[0.375, 0.5, 0.3125]``.
		
		markerscale : None or int or float
		    The relative size of legend markers compared with the originally
		    drawn ones. Default is ``None`` which will take the value from
		    the ``legend.markerscale`` :data:`rcParam <matplotlib.rcParams>`.
		
		*markerfirst*: [ *True* | *False* ]
		    if *True*, legend marker is placed to the left of the legend label
		    if *False*, legend marker is placed to the right of the legend
		    label
		
		frameon : None or bool
		    Control whether a frame should be drawn around the legend.
		    Default is ``None`` which will take the value from the
		    ``legend.frameon`` :data:`rcParam<matplotlib.rcParams>`.
		
		fancybox : None or bool
		    Control whether round edges should be enabled around
		    the :class:`~matplotlib.patches.FancyBboxPatch` which
		    makes up the legend's background.
		    Default is ``None`` which will take the value from the
		    ``legend.fancybox`` :data:`rcParam<matplotlib.rcParams>`.
		
		shadow : None or bool
		    Control whether to draw a shadow behind the legend.
		    Default is ``None`` which will take the value from the
		    ``legend.shadow`` :data:`rcParam<matplotlib.rcParams>`.
		
		framealpha : None or float
		    Control the alpha transparency of the legend's frame.
		    Default is ``None`` which will take the value from the
		    ``legend.framealpha`` :data:`rcParam<matplotlib.rcParams>`.
		
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
		
		borderpad : float or None
		    The fractional whitespace inside the legend border.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.borderpad`` :data:`rcParam<matplotlib.rcParams>`.
		
		labelspacing : float or None
		    The vertical space between the legend entries.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.labelspacing`` :data:`rcParam<matplotlib.rcParams>`.
		
		handlelength : float or None
		    The length of the legend handles.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.handlelength`` :data:`rcParam<matplotlib.rcParams>`.
		
		handletextpad : float or None
		    The pad between the legend handle and text.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.handletextpad`` :data:`rcParam<matplotlib.rcParams>`.
		
		borderaxespad : float or None
		    The pad between the axes and legend border.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.borderaxespad`` :data:`rcParam<matplotlib.rcParams>`.
		
		columnspacing : float or None
		    The spacing between columns.
		    Measured in font-size units.
		    Default is ``None`` which will take the value from the
		    ``legend.columnspacing`` :data:`rcParam<matplotlib.rcParams>`.
		
		handler_map : dict or None
		    The custom dictionary mapping instances or types to a legend
		    handler. This `handler_map` updates the default handler map
		    found at :func:`matplotlib.legend.Legend.get_legend_handler_map`.
		
		Notes
		-----
		
		Not all kinds of artist are supported by the legend command.
		See :ref:`plotting-guide-legend` for details.
		
		Examples
		--------
		
		.. plot:: mpl_examples/api/legend_demo.py
	**/
	public function legend(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Control behavior of tick locators.
		
		Keyword arguments:
		
		*axis*
		    ['x' | 'y' | 'both']  Axis on which to operate;
		    default is 'both'.
		
		*tight*
		    [True | False | None] Parameter passed to :meth:`autoscale_view`.
		    Default is None, for no change.
		
		Remaining keyword arguments are passed to directly to the
		:meth:`~matplotlib.ticker.MaxNLocator.set_params` method.
		
		Typically one might want to reduce the maximum number
		of ticks and use tight bounds when plotting small
		subplots, for example::
		
		    ax.locator_params(tight=True, nbins=4)
		
		Because the locator is involved in autoscaling,
		:meth:`autoscale_view` is called automatically after
		the parameters are changed.
		
		This presently works only for the
		:class:`~matplotlib.ticker.MaxNLocator` used
		by default on linear axes, but it may be generalized.
	**/
	public function locator_params(?axis:Dynamic, ?tight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on both the *x* and *y* axis.
		
		Call signature::
		
		  loglog(*args, **kwargs)
		
		:func:`~matplotlib.pyplot.loglog` supports all the keyword
		arguments of :func:`~matplotlib.pyplot.plot` and
		:meth:`matplotlib.axes.Axes.set_xscale` /
		:meth:`matplotlib.axes.Axes.set_yscale`.
		
		Notable keyword arguments:
		
		  *basex* /*basey*: scalar > 1
		    Base of the *x* /*y* logarithm
		
		  *subsx* /*subsy*: [ *None* | sequence ]
		    The location of the minor *x* /*y* ticks; *None* defaults
		    to autosubs, which depend on the number of decades in the
		    plot; see :meth:`matplotlib.axes.Axes.set_xscale` /
		    :meth:`matplotlib.axes.Axes.set_yscale` for details
		
		  *nonposx* /*nonposy*: ['mask' | 'clip' ]
		    Non-positive values in *x* or *y* can be masked as
		    invalid, or clipped to a very small positive number
		
		The remaining valid kwargs are
		:class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/log_demo.py
	**/
	public function loglog(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the magnitude spectrum.
		
		Call signature::
		
		  magnitude_spectrum(x, Fs=2, Fc=0,  window=mlab.window_hanning,
		                     pad_to=None, sides='default', **kwargs)
		
		Compute the magnitude spectrum of *x*.  Data is padded to a
		length of *pad_to* and the windowing function *window* is applied to
		the signal.
		
		  *x*: 1-D array or sequence
		    Array or sequence containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		  *scale*: [ 'default' | 'linear' | 'dB' ]
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale.  When *mode* is 'density',
		    this is dB power (10 * log10).  Otherwise this is dB amplitude
		    (20 * log10). 'default' is 'linear'.
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns the tuple (*spectrum*, *freqs*, *line*):
		
		  *spectrum*: 1-D array
		    The values for the magnitude spectrum before scaling (real valued)
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		  *line*: a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function
		
		kwargs control the :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/spectrum_demo.py
		
		.. seealso::
		
		    :func:`psd`
		        :func:`psd` plots the power spectral density.`.
		
		    :func:`angle_spectrum`
		        :func:`angle_spectrum` plots the angles of the corresponding
		        frequencies.
		
		    :func:`phase_spectrum`
		        :func:`phase_spectrum` plots the phase (unwrapped angle) of the
		        corresponding frequencies.
		
		    :func:`specgram`
		        :func:`specgram` can plot the magnitude spectrum of segments
		        within the signal in a colormap.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set or retrieve autoscaling margins.
		
		signatures::
		
		    margins()
		
		returns xmargin, ymargin
		
		::
		
		    margins(margin)
		
		    margins(xmargin, ymargin)
		
		    margins(x=xmargin, y=ymargin)
		
		    margins(..., tight=False)
		
		All three forms above set the xmargin and ymargin parameters.
		All keyword parameters are optional.  A single argument
		specifies both xmargin and ymargin.  The *tight* parameter
		is passed to :meth:`autoscale_view`, which is executed after
		a margin is changed; the default here is *True*, on the
		assumption that when margins are specified, no additional
		padding to match tick marks is usually desired.  Setting
		*tight* to *None* will preserve the previous setting.
		
		Specifying any margin changes only the autoscaling; for example,
		if *xmargin* is not None, then *xmargin* times the X data
		interval will be added to each end of that interval before
		it is used in autoscaling.
	**/
	public function margins(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a matrix or array as an image.
		
		The matrix will be shown the way it would be printed, with the first
		row at the top.  Row and column numbering is zero-based.
		
		Parameters
		----------
		Z : array_like shape (n, m)
		    The matrix to be displayed.
		
		Returns
		-------
		image : `~matplotlib.image.AxesImage`
		
		Other parameters
		----------------
		kwargs : `~matplotlib.axes.Axes.imshow` arguments
		    Sets `origin` to 'upper', 'interpolation' to 'nearest' and
		    'aspect' to equal.
		
		See also
		--------
		imshow : plot an image
		
		Examples
		--------
		.. plot:: mpl_examples/pylab_examples/matshow.py
	**/
	public function matshow(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove minor ticks from the axes.
	**/
	public function minorticks_off():Dynamic;
	/**
		Add autoscaling minor ticks to the axes.
	**/
	public function minorticks_on():Dynamic;
	public var mouseover : Dynamic;
	static public var name : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		Create a pseudocolor plot of a 2-D array.
		
		.. note::
		
		    pcolor can be very slow for large arrays; consider
		    using the similar but much faster
		    :func:`~matplotlib.pyplot.pcolormesh` instead.
		
		Call signatures::
		
		  pcolor(C, **kwargs)
		  pcolor(X, Y, C, **kwargs)
		
		*C* is the array of color values.
		
		*X* and *Y*, if given, specify the (*x*, *y*) coordinates of
		the colored quadrilaterals; the quadrilateral for C[i,j] has
		corners at::
		
		  (X[i,   j],   Y[i,   j]),
		  (X[i,   j+1], Y[i,   j+1]),
		  (X[i+1, j],   Y[i+1, j]),
		  (X[i+1, j+1], Y[i+1, j+1]).
		
		Ideally the dimensions of *X* and *Y* should be one greater
		than those of *C*; if the dimensions are the same, then the
		last row and column of *C* will be ignored.
		
		Note that the column index corresponds to the
		*x*-coordinate, and the row index corresponds to *y*; for
		details, see the :ref:`Grid Orientation
		<axes-pcolor-grid-orientation>` section below.
		
		If either or both of *X* and *Y* are 1-D arrays or column vectors,
		they will be expanded as needed into the appropriate 2-D arrays,
		making a rectangular grid.
		
		*X*, *Y* and *C* may be masked arrays.  If either C[i, j], or one
		of the vertices surrounding C[i,j] (*X* or *Y* at [i, j], [i+1, j],
		[i, j+1],[i+1, j+1]) is masked, nothing is plotted.
		
		Keyword arguments:
		
		  *cmap*: [ *None* | Colormap ]
		    A :class:`matplotlib.colors.Colormap` instance. If *None*, use
		    rc settings.
		
		  *norm*: [ *None* | Normalize ]
		    An :class:`matplotlib.colors.Normalize` instance is used
		    to scale luminance data to 0,1. If *None*, defaults to
		    :func:`normalize`.
		
		  *vmin* /*vmax*: [ *None* | scalar ]
		    *vmin* and *vmax* are used in conjunction with *norm* to
		    normalize luminance data.  If either is *None*, it
		    is autoscaled to the respective min or max
		    of the color array *C*.  If not *None*, *vmin* or
		    *vmax* passed in here override any pre-existing values
		    supplied in the *norm* instance.
		
		  *shading*: [ 'flat' | 'faceted' ]
		    If 'faceted', a black grid is drawn around each rectangle; if
		    'flat', edges are not drawn. Default is 'flat', contrary to
		    MATLAB.
		
		    This kwarg is deprecated; please use 'edgecolors' instead:
		      * shading='flat' -- edgecolors='none'
		      * shading='faceted  -- edgecolors='k'
		
		  *edgecolors*: [ *None* | ``'none'`` | color | color sequence]
		    If *None*, the rc setting is used by default.
		
		    If ``'none'``, edges will not be visible.
		
		    An mpl color or sequence of colors will set the edge color
		
		  *alpha*: ``0 <= scalar <= 1``   or *None*
		    the alpha blending value
		
		  *snap*: bool
		    Whether to snap the mesh to pixel boundaries.
		
		Return value is a :class:`matplotlib.collections.Collection`
		instance.
		
		.. _axes-pcolor-grid-orientation:
		
		The grid orientation follows the MATLAB convention: an
		array *C* with shape (*nrows*, *ncolumns*) is plotted with
		the column number as *X* and the row number as *Y*, increasing
		up; hence it is plotted the way the array would be printed,
		except that the *Y* axis is reversed.  That is, *C* is taken
		as *C*(*y*, *x*).
		
		Similarly for :func:`meshgrid`::
		
		  x = np.arange(5)
		  y = np.arange(3)
		  X, Y = np.meshgrid(x, y)
		
		is equivalent to::
		
		  X = array([[0, 1, 2, 3, 4],
		             [0, 1, 2, 3, 4],
		             [0, 1, 2, 3, 4]])
		
		  Y = array([[0, 0, 0, 0, 0],
		             [1, 1, 1, 1, 1],
		             [2, 2, 2, 2, 2]])
		
		so if you have::
		
		  C = rand(len(x), len(y))
		
		then you need to transpose C::
		
		  pcolor(X, Y, C.T)
		
		or::
		
		  pcolor(C.T)
		
		MATLAB :func:`pcolor` always discards the last row and column
		of *C*, but matplotlib displays the last row and column if *X* and
		*Y* are not specified, or if *X* and *Y* have one more row and
		column than *C*.
		
		kwargs can be used to control the
		:class:`~matplotlib.collections.PolyCollection` properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		.. note::
		
		    The default *antialiaseds* is False if the default
		    *edgecolors*="none" is used.  This eliminates artificial lines
		    at patch boundaries, and works regardless of the value of
		    alpha.  If *edgecolors* is not "none", then the default
		    *antialiaseds* is taken from
		    rcParams['patch.antialiased'], which defaults to *True*.
		    Stroking the edges may be preferred if *alpha* is 1, but
		    will cause artifacts otherwise.
		
		.. seealso::
		
		    :func:`~matplotlib.pyplot.pcolormesh`
		        For an explanation of the differences between
		        pcolor and pcolormesh.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function pcolor(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		pseudocolor plot of a 2-D array
		
		Experimental; this is a pcolor-type method that
		provides the fastest possible rendering with the Agg
		backend, and that can handle any quadrilateral grid.
		It supports only flat shading (no outlines), it lacks
		support for log scaling of the axes, and it does not
		have a pyplot wrapper.
		
		Call signatures::
		
		  ax.pcolorfast(C, **kwargs)
		  ax.pcolorfast(xr, yr, C, **kwargs)
		  ax.pcolorfast(x, y, C, **kwargs)
		  ax.pcolorfast(X, Y, C, **kwargs)
		
		C is the 2D array of color values corresponding to quadrilateral
		cells. Let (nr, nc) be its shape.  C may be a masked array.
		
		``ax.pcolorfast(C, **kwargs)`` is equivalent to
		``ax.pcolorfast([0,nc], [0,nr], C, **kwargs)``
		
		*xr*, *yr* specify the ranges of *x* and *y* corresponding to the
		rectangular region bounding *C*.  If::
		
		    xr = [x0, x1]
		
		and::
		
		    yr = [y0,y1]
		
		then *x* goes from *x0* to *x1* as the second index of *C* goes
		from 0 to *nc*, etc.  (*x0*, *y0*) is the outermost corner of
		cell (0,0), and (*x1*, *y1*) is the outermost corner of cell
		(*nr*-1, *nc*-1).  All cells are rectangles of the same size.
		This is the fastest version.
		
		*x*, *y* are 1D arrays of length *nc* +1 and *nr* +1, respectively,
		giving the x and y boundaries of the cells.  Hence the cells are
		rectangular but the grid may be nonuniform.  The speed is
		intermediate.  (The grid is checked, and if found to be
		uniform the fast version is used.)
		
		*X* and *Y* are 2D arrays with shape (*nr* +1, *nc* +1) that specify
		the (x,y) coordinates of the corners of the colored
		quadrilaterals; the quadrilateral for C[i,j] has corners at
		(X[i,j],Y[i,j]), (X[i,j+1],Y[i,j+1]), (X[i+1,j],Y[i+1,j]),
		(X[i+1,j+1],Y[i+1,j+1]).  The cells need not be rectangular.
		This is the most general, but the slowest to render.  It may
		produce faster and more compact output using ps, pdf, and
		svg backends, however.
		
		Note that the column index corresponds to the x-coordinate,
		and the row index corresponds to y; for details, see
		the "Grid Orientation" section below.
		
		Optional keyword arguments:
		
		  *cmap*: [ *None* | Colormap ]
		    A :class:`matplotlib.colors.Colormap` instance from cm. If *None*,
		    use rc settings.
		
		  *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance is used to scale
		    luminance data to 0,1. If *None*, defaults to normalize()
		
		  *vmin* /*vmax*: [ *None* | scalar ]
		    *vmin* and *vmax* are used in conjunction with norm to normalize
		    luminance data.  If either are *None*, the min and max
		    of the color array *C* is used.  If you pass a norm instance,
		    *vmin* and *vmax* will be *None*.
		
		  *alpha*: ``0 <= scalar <= 1``  or *None*
		    the alpha blending value
		
		Return value is an image if a regular or rectangular grid
		is specified, and a :class:`~matplotlib.collections.QuadMesh`
		collection in the general quadrilateral case.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function pcolorfast(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a quadrilateral mesh.
		
		Call signatures::
		
		  pcolormesh(C)
		  pcolormesh(X, Y, C)
		  pcolormesh(C, **kwargs)
		
		Create a pseudocolor plot of a 2-D array.
		
		pcolormesh is similar to :func:`~matplotlib.pyplot.pcolor`,
		but uses a different mechanism and returns a different
		object; pcolor returns a
		:class:`~matplotlib.collections.PolyCollection` but pcolormesh
		returns a
		:class:`~matplotlib.collections.QuadMesh`.  It is much faster,
		so it is almost always preferred for large arrays.
		
		*C* may be a masked array, but *X* and *Y* may not.  Masked
		array support is implemented via *cmap* and *norm*; in
		contrast, :func:`~matplotlib.pyplot.pcolor` simply does not
		draw quadrilaterals with masked colors or vertices.
		
		Keyword arguments:
		
		  *cmap*: [ *None* | Colormap ]
		    A :class:`matplotlib.colors.Colormap` instance. If *None*, use
		    rc settings.
		
		  *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance is used to
		    scale luminance data to 0,1. If *None*, defaults to
		    :func:`normalize`.
		
		  *vmin* /*vmax*: [ *None* | scalar ]
		    *vmin* and *vmax* are used in conjunction with *norm* to
		    normalize luminance data.  If either is *None*, it
		    is autoscaled to the respective min or max
		    of the color array *C*.  If not *None*, *vmin* or
		    *vmax* passed in here override any pre-existing values
		    supplied in the *norm* instance.
		
		  *shading*: [ 'flat' | 'gouraud' ]
		    'flat' indicates a solid color for each quad.  When
		    'gouraud', each quad will be Gouraud shaded.  When gouraud
		    shading, edgecolors is ignored.
		
		  *edgecolors*: [*None* | ``'None'`` | ``'face'`` | color |
		                 color sequence]
		
		    If *None*, the rc setting is used by default.
		
		    If ``'None'``, edges will not be visible.
		
		    If ``'face'``, edges will have the same color as the faces.
		
		    An mpl color or sequence of colors will set the edge color
		
		  *alpha*: ``0 <= scalar <= 1``  or *None*
		    the alpha blending value
		
		Return value is a :class:`matplotlib.collections.QuadMesh`
		object.
		
		kwargs can be used to control the
		:class:`matplotlib.collections.QuadMesh` properties:
		
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
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
		
		.. seealso::
		
		    :func:`~matplotlib.pyplot.pcolor`
		        For an explanation of the grid orientation and the
		        expansion of 1-D *X* and/or *Y* to 2-D arrays.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function pcolormesh(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the phase spectrum.
		
		Call signature::
		
		  phase_spectrum(x, Fs=2, Fc=0,  window=mlab.window_hanning,
		                 pad_to=None, sides='default', **kwargs)
		
		Compute the phase spectrum (unwrapped angle spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		  *x*: 1-D array or sequence
		    Array or sequence containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  While not increasing the actual resolution of
		    the spectrum (the minimum distance between resolvable peaks),
		    this can give more points in the plot, allowing for more
		    detail. This corresponds to the *n* parameter in the call to fft().
		    The default is None, which sets *pad_to* equal to the length of the
		    input signal (i.e. no padding).
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		Returns the tuple (*spectrum*, *freqs*, *line*):
		
		  *spectrum*: 1-D array
		    The values for the phase spectrum in radians (real valued)
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the elements in *spectrum*
		
		  *line*: a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function
		
		kwargs control the :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/spectrum_demo.py
		
		.. seealso::
		
		    :func:`magnitude_spectrum`
		        :func:`magnitude_spectrum` plots the magnitudes of the
		        corresponding frequencies.
		
		    :func:`angle_spectrum`
		        :func:`angle_spectrum` plots the wrapped version of this
		        function.
		
		    :func:`specgram`
		        :func:`specgram` can plot the phase spectrum of segments
		        within the signal in a colormap.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function phase_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		    pick(mouseevent)
		
		each child artist will fire a pick event if mouseevent is over
		the artist and the artist has picker set
	**/
	public function pick(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return *True* if :class:`Artist` is pickable.
	**/
	public function pickable():Dynamic;
	/**
		Plot a pie chart.
		
		Call signature::
		
		  pie(x, explode=None, labels=None,
		      colors=('b', 'g', 'r', 'c', 'm', 'y', 'k', 'w'),
		      autopct=None, pctdistance=0.6, shadow=False,
		      labeldistance=1.1, startangle=None, radius=None,
		      counterclock=True, wedgeprops=None, textprops=None,
		      center = (0, 0), frame = False )
		
		Make a pie chart of array *x*.  The fractional area of each
		wedge is given by x/sum(x).  If sum(x) <= 1, then the values
		of x give the fractional area directly and the array will not
		be normalized.  The wedges are plotted counterclockwise,
		by default starting from the x-axis.
		
		Keyword arguments:
		
		  *explode*: [ *None* | len(x) sequence ]
		    If not *None*, is a ``len(x)`` array which specifies the
		    fraction of the radius with which to offset each wedge.
		
		  *colors*: [ *None* | color sequence ]
		    A sequence of matplotlib color args through which the pie chart
		    will cycle.
		
		  *labels*: [ *None* | len(x) sequence of strings ]
		    A sequence of strings providing the labels for each wedge
		
		  *autopct*: [ *None* | format string | format function ]
		    If not *None*, is a string or function used to label the wedges
		    with their numeric value.  The label will be placed inside the
		    wedge.  If it is a format string, the label will be ``fmt%pct``.
		    If it is a function, it will be called.
		
		  *pctdistance*: scalar
		    The ratio between the center of each pie slice and the
		    start of the text generated by *autopct*.  Ignored if
		    *autopct* is *None*; default is 0.6.
		
		  *labeldistance*: scalar
		    The radial distance at which the pie labels are drawn
		
		  *shadow*: [ *False* | *True* ]
		    Draw a shadow beneath the pie.
		
		  *startangle*: [ *None* | Offset angle ]
		    If not *None*, rotates the start of the pie chart by *angle*
		    degrees counterclockwise from the x-axis.
		
		  *radius*: [ *None* | scalar ]
		  The radius of the pie, if *radius* is *None* it will be set to 1.
		
		  *counterclock*: [ *False* | *True* ]
		    Specify fractions direction, clockwise or counterclockwise.
		
		  *wedgeprops*: [ *None* | dict of key value pairs ]
		    Dict of arguments passed to the wedge objects making the pie.
		    For example, you can pass in wedgeprops = { 'linewidth' : 3 }
		    to set the width of the wedge border lines equal to 3.
		    For more details, look at the doc/arguments of the wedge object.
		    By default `clip_on=False`.
		
		  *textprops*: [ *None* | dict of key value pairs ]
		    Dict of arguments to pass to the text objects.
		
		  *center*: [ (0,0) | sequence of 2 scalars ]
		  Center position of the chart.
		
		  *frame*: [ *False* | *True* ]
		    Plot axes frame with the chart.
		
		The pie chart will probably look best if the figure and axes are
		square, or the Axes aspect is equal.  e.g.::
		
		  figure(figsize=(8,8))
		  ax = axes([0.1, 0.1, 0.8, 0.8])
		
		or::
		
		  axes(aspect=1)
		
		Return value:
		  If *autopct* is *None*, return the tuple (*patches*, *texts*):
		
		    - *patches* is a sequence of
		      :class:`matplotlib.patches.Wedge` instances
		
		    - *texts* is a list of the label
		      :class:`matplotlib.text.Text` instances.
		
		  If *autopct* is not *None*, return the tuple (*patches*,
		  *texts*, *autotexts*), where *patches* and *texts* are as
		  above, and *autotexts* is a list of
		  :class:`~matplotlib.text.Text` instances for the numeric
		  labels.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'labels', 'colors', 'x', 'explode'.
	**/
	public function pie(x:Dynamic, ?explode:Dynamic, ?labels:Dynamic, ?colors:Dynamic, ?autopct:Dynamic, ?pctdistance:Dynamic, ?shadow:Dynamic, ?labeldistance:Dynamic, ?startangle:Dynamic, ?radius:Dynamic, ?counterclock:Dynamic, ?wedgeprops:Dynamic, ?textprops:Dynamic, ?center:Dynamic, ?frame:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Plot lines and/or markers to the
		:class:`~matplotlib.axes.Axes`.  *args* is a variable length
		argument, allowing for multiple *x*, *y* pairs with an
		optional format string.  For example, each of the following is
		legal::
		
		    plot(x, y)        # plot x and y using default line style and color
		    plot(x, y, 'bo')  # plot x and y using blue circle markers
		    plot(y)           # plot y using x as index array 0..N-1
		    plot(y, 'r+')     # ditto, but with red plusses
		
		If *x* and/or *y* is 2-dimensional, then the corresponding columns
		will be plotted.
		
		If used with labeled data, make sure that the color spec is not
		included as an element in data, as otherwise the last case
		``plot("v","r", data={"v":..., "r":...)``
		can be interpreted as the first case which would do ``plot(v, r)``
		using the default line style and color.
		
		If not used with labeled data (i.e., without a data argument),
		an arbitrary number of *x*, *y*, *fmt* groups can be specified, as in::
		
		    a.plot(x1, y1, 'g^', x2, y2, 'g-')
		
		Return value is a list of lines that were added.
		
		By default, each line is assigned a different style specified by a
		'style cycle'.  To change this behavior, you can edit the
		axes.prop_cycle rcParam.
		
		The following format string characters are accepted to control
		the line style or marker:
		
		================    ===============================
		character           description
		================    ===============================
		``'-'``             solid line style
		``'--'``            dashed line style
		``'-.'``            dash-dot line style
		``':'``             dotted line style
		``'.'``             point marker
		``','``             pixel marker
		``'o'``             circle marker
		``'v'``             triangle_down marker
		``'^'``             triangle_up marker
		``'<'``             triangle_left marker
		``'>'``             triangle_right marker
		``'1'``             tri_down marker
		``'2'``             tri_up marker
		``'3'``             tri_left marker
		``'4'``             tri_right marker
		``'s'``             square marker
		``'p'``             pentagon marker
		``'*'``             star marker
		``'h'``             hexagon1 marker
		``'H'``             hexagon2 marker
		``'+'``             plus marker
		``'x'``             x marker
		``'D'``             diamond marker
		``'d'``             thin_diamond marker
		``'|'``             vline marker
		``'_'``             hline marker
		================    ===============================
		
		
		The following color abbreviations are supported:
		
		==========  ========
		character   color
		==========  ========
		'b'         blue
		'g'         green
		'r'         red
		'c'         cyan
		'm'         magenta
		'y'         yellow
		'k'         black
		'w'         white
		==========  ========
		
		In addition, you can specify colors in many weird and
		wonderful ways, including full names (``'green'``), hex
		strings (``'#008000'``), RGB or RGBA tuples (``(0,1,0,1)``) or
		grayscale intensities as a string (``'0.8'``).  Of these, the
		string specifications can be used in place of a ``fmt`` group,
		but the tuple forms can be used only as ``kwargs``.
		
		Line styles and colors are combined in a single format string, as in
		``'bo'`` for blue circles.
		
		The *kwargs* can be used to set line properties (any property that has
		a ``set_*`` method).  You can use this to set a line label (for auto
		legends), linewidth, anitialising, marker face color, etc.  Here is an
		example::
		
		    plot([1,2,3], [1,2,3], 'go-', label='line 1', linewidth=2)
		    plot([1,2,3], [1,4,9], 'rs',  label='line 2')
		    axis([0, 4, 0, 10])
		    legend()
		
		If you make multiple lines with one plot command, the kwargs
		apply to all those lines, e.g.::
		
		    plot(x1, y1, x2, y2, antialised=False)
		
		Neither line will be antialiased.
		
		You do not need to use format strings, which are just
		abbreviations.  All of the line properties can be controlled
		by keyword arguments.  For example, you can set the color,
		marker, linestyle, and markercolor with::
		
		    plot(x, y, color='green', linestyle='dashed', marker='o',
		         markerfacecolor='blue', markersize=12).
		
		See :class:`~matplotlib.lines.Line2D` for details.
		
		The kwargs are :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		kwargs *scalex* and *scaley*, if defined, are passed on to
		:meth:`~matplotlib.axes.Axes.autoscale_view` to determine
		whether the *x* and *y* axes are autoscaled; the default is
		*True*.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function plot(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with data with dates.
		
		Call signature::
		
		   plot_date(x, y, fmt='bo', tz=None, xdate=True,
		             ydate=False, **kwargs)
		
		Similar to the :func:`~matplotlib.pyplot.plot` command, except
		the *x* or *y* (or both) data is considered to be dates, and the
		axis is labeled accordingly.
		
		*x* and/or *y* can be a sequence of dates represented as float
		days since 0001-01-01 UTC.
		
		Keyword arguments:
		
		  *fmt*: string
		    The plot format string.
		
		  *tz*: [ *None* | timezone string | :class:`tzinfo` instance]
		    The time zone to use in labeling dates. If *None*, defaults to rc
		    value.
		
		  *xdate*: [ *True* | *False* ]
		    If *True*, the *x*-axis will be labeled with dates.
		
		  *ydate*: [ *False* | *True* ]
		    If *True*, the *y*-axis will be labeled with dates.
		
		Note if you are using custom date tickers and formatters, it
		may be necessary to set the formatters/locators after the call
		to :meth:`plot_date` since :meth:`plot_date` will set the
		default tick locator to
		:class:`matplotlib.dates.AutoDateLocator` (if the tick
		locator is not already set to a
		:class:`matplotlib.dates.DateLocator` instance) and the
		default tick formatter to
		:class:`matplotlib.dates.AutoDateFormatter` (if the tick
		formatter is not already set to a
		:class:`matplotlib.dates.DateFormatter` instance).
		
		Valid kwargs are :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		.. seealso::
		
		   :mod:`~matplotlib.dates` for helper functions
		
		   :func:`~matplotlib.dates.date2num`,
		   :func:`~matplotlib.dates.num2date` and
		   :func:`~matplotlib.dates.drange` for help on creating the required
		   floating point dates.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function plot_date(x:Dynamic, y:Dynamic, ?fmt:Dynamic, ?tz:Dynamic, ?xdate:Dynamic, ?ydate:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a dictionary mapping property name -> value for all Artist props
	**/
	public function properties():Dynamic;
	/**
		Plot the power spectral density.
		
		Call signature::
		
		  psd(x, NFFT=256, Fs=2, Fc=0, detrend=mlab.detrend_none,
		      window=mlab.window_hanning, noverlap=0, pad_to=None,
		      sides='default', scale_by_freq=None, return_line=None, **kwargs)
		
		The power spectral density :math:`P_{xx}` by Welch's average
		periodogram method.  The vector *x* is divided into *NFFT* length
		segments.  Each segment is detrended by function *detrend* and
		windowed by function *window*.  *noverlap* gives the length of
		the overlap between segments.  The :math:`|\mathrm{fft}(i)|^2`
		of each segment :math:`i` are averaged to compute :math:`P_{xx}`,
		with a scaling to correct for power loss due to windowing.
		
		If len(*x*) < *NFFT*, it will be zero padded to *NFFT*.
		
		  *x*: 1-D array or sequence
		    Array or sequence containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		*NFFT*: integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		*detrend*: [ 'default' | 'constant' | 'mean' | 'linear' | 'none'] or
		           callable
		
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		*scale_by_freq*: boolean
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		  *noverlap*: integer
		    The number of points of overlap between segments.
		    The default value is 0 (no overlap).
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		  *return_line*: bool
		    Whether to include the line object plotted in the returned values.
		    Default is False.
		
		If *return_line* is False, returns the tuple (*Pxx*, *freqs*).
		If *return_line* is True, returns the tuple (*Pxx*, *freqs*. *line*):
		
		  *Pxx*: 1-D array
		    The values for the power spectrum `P_{xx}` before scaling
		    (real valued)
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the elements in *Pxx*
		
		  *line*: a :class:`~matplotlib.lines.Line2D` instance
		    The line created by this function.
		    Only returend if *return_line* is True.
		
		For plotting, the power is plotted as
		:math:`10\log_{10}(P_{xx})` for decibels, though *Pxx* itself
		is returned.
		
		References:
		  Bendat & Piersol -- Random Data: Analysis and Measurement
		  Procedures, John Wiley & Sons (1986)
		
		kwargs control the :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/psd_demo.py
		
		.. seealso::
		
		    :func:`specgram`
		        :func:`specgram` differs in the default overlap; in not
		        returning the mean of the segment periodograms; in  returning
		        the times of the segments; and in plotting a colormap instead
		        of a line.
		
		    :func:`magnitude_spectrum`
		        :func:`magnitude_spectrum` plots the magnitude spectrum.
		
		    :func:`csd`
		        :func:`csd` plots the spectral density between two signals.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function psd(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?return_line:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
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
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  cmap: a colormap or registered colormap name         
		  color: matplotlib color arg or sequence of rgba tuples
		  contains: a callable function         
		  edgecolor or edgecolors: matplotlib color spec or sequence of specs         
		  facecolor or facecolors: matplotlib color spec or sequence of specs         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  gid: an id string         
		  hatch: [ '/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*' ]         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or linestyles or dashes: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
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
	public function quiverkey(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function redraw_in_frame():Dynamic;
	/**
		Recompute the data limits based on current artists. If you want to
		exclude invisible artists from the calculation, set
		``visible_only=True``
		
		At present, :class:`~matplotlib.collections.Collection`
		instances are not supported.
	**/
	public function relim(?visible_only:Dynamic):Dynamic;
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
		Make the original position the active position
	**/
	public function reset_position():Dynamic;
	/**
		Make a scatter plot of x vs y, where x and y are sequence like objects
		of the same lengths.
		
		Parameters
		----------
		x, y : array_like, shape (n, )
		    Input data
		
		s : scalar or array_like, shape (n, ), optional, default: 20
		    size in points^2.
		
		c : color or sequence of color, optional, default : 'b'
		    `c` can be a single color format string, or a sequence of color
		    specifications of length `N`, or a sequence of `N` numbers to be
		    mapped to colors using the `cmap` and `norm` specified via kwargs
		    (see below). Note that `c` should not be a single numeric RGB or
		    RGBA sequence because that is indistinguishable from an array of
		    values to be colormapped.  `c` can be a 2-D array in which the
		    rows are RGB or RGBA, however, including the case of a single
		    row to specify the same color for all points.
		
		marker : `~matplotlib.markers.MarkerStyle`, optional, default: 'o'
		    See `~matplotlib.markers` for more information on the different
		    styles of markers scatter supports. `marker` can be either
		    an instance of the class or the text shorthand for a particular
		    marker.
		
		cmap : `~matplotlib.colors.Colormap`, optional, default: None
		    A `~matplotlib.colors.Colormap` instance or registered name.
		    `cmap` is only used if `c` is an array of floats. If None,
		    defaults to rc `image.cmap`.
		
		norm : `~matplotlib.colors.Normalize`, optional, default: None
		    A `~matplotlib.colors.Normalize` instance is used to scale
		    luminance data to 0, 1. `norm` is only used if `c` is an array of
		    floats. If `None`, use the default :func:`normalize`.
		
		vmin, vmax : scalar, optional, default: None
		    `vmin` and `vmax` are used in conjunction with `norm` to normalize
		    luminance data.  If either are `None`, the min and max of the
		    color array is used.  Note if you pass a `norm` instance, your
		    settings for `vmin` and `vmax` will be ignored.
		
		alpha : scalar, optional, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque)
		
		linewidths : scalar or array_like, optional, default: None
		    If None, defaults to (lines.linewidth,).
		
		edgecolors : color or sequence of color, optional, default: None
		    If None, defaults to (patch.edgecolor).
		    If 'face', the edge color will always be the same as
		    the face color.  If it is 'none', the patch boundary will not
		    be drawn.  For non-filled markers, the `edgecolors` kwarg
		    is ignored; color is determined by `c`.
		
		Returns
		-------
		paths : `~matplotlib.collections.PathCollection`
		
		Other parameters
		----------------
		kwargs : `~matplotlib.collections.Collection` properties
		
		Notes
		------
		Any or all of `x`, `y`, `s`, and `c` may be masked arrays, in
		which case all masks will be combined and only unmasked points
		will be plotted.
		
		Fundamentally, scatter works with 1-D arrays; `x`, `y`, `s`,
		and `c` may be input as 2-D arrays, but within scatter
		they will be flattened. The exception is `c`, which
		will be flattened only if its size matches the size of `x`
		and `y`.
		
		Examples
		--------
		.. plot:: mpl_examples/shapes_and_collections/scatter_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 's', 'facecolors', 'edgecolors', 'x', 'y', 'linewidths', 'c', 'color', 'facecolor'.
	**/
	public function scatter(x:Dynamic, y:Dynamic, ?s:Dynamic, ?c:Dynamic, ?marker:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?verts:Dynamic, ?edgecolors:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the *x* axis.
		
		Call signature::
		
		  semilogx(*args, **kwargs)
		
		:func:`semilogx` supports all the keyword arguments of
		:func:`~matplotlib.pyplot.plot` and
		:meth:`matplotlib.axes.Axes.set_xscale`.
		
		Notable keyword arguments:
		
		  *basex*: scalar > 1
		    Base of the *x* logarithm
		
		  *subsx*: [ *None* | sequence ]
		    The location of the minor xticks; *None* defaults to
		    autosubs, which depend on the number of decades in the
		    plot; see :meth:`~matplotlib.axes.Axes.set_xscale` for
		    details.
		
		  *nonposx*: [ 'mask' | 'clip' ]
		    Non-positive values in *x* can be masked as
		    invalid, or clipped to a very small positive number
		
		The remaining valid kwargs are
		:class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		.. seealso::
		
		    :meth:`loglog`
		        For example code and figure
	**/
	public function semilogx(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the *y* axis.
		
		call signature::
		
		  semilogy(*args, **kwargs)
		
		:func:`semilogy` supports all the keyword arguments of
		:func:`~matplotlib.pylab.plot` and
		:meth:`matplotlib.axes.Axes.set_yscale`.
		
		Notable keyword arguments:
		
		  *basey*: scalar > 1
		    Base of the *y* logarithm
		
		  *subsy*: [ *None* | sequence ]
		    The location of the minor yticks; *None* defaults to
		    autosubs, which depend on the number of decades in the
		    plot; see :meth:`~matplotlib.axes.Axes.set_yscale` for
		    details.
		
		  *nonposy*: [ 'mask' | 'clip' ]
		    Non-positive values in *y* can be masked as
		    invalid, or clipped to a very small positive number
		
		The remaining valid kwargs are
		:class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		.. seealso::
		
		    :meth:`loglog`
		        For example code and figure
	**/
	public function semilogy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A property batch setter. Pass *kwargs* to set properties.
		Will handle property name collisions (e.g., if both
		'color' and 'facecolor' are specified, the property
		with higher priority gets set last).
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		ACCEPTS: [ 'box' | 'datalim' | 'box-forced']
	**/
	public function set_adjustable(adjustable:Dynamic):Dynamic;
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
		*anchor*
		
		  =====  ============
		  value  description
		  =====  ============
		  'C'    Center
		  'SW'   bottom left
		  'S'    bottom
		  'SE'   bottom right
		  'E'    right
		  'NE'   top right
		  'N'    top
		  'NW'   top left
		  'W'    left
		  =====  ============
	**/
	public function set_anchor(anchor:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		*aspect*
		
		  ========   ================================================
		  value      description
		  ========   ================================================
		  'auto'     automatic; fill position rectangle with data
		  'normal'   same as 'auto'; deprecated
		  'equal'    same scaling from data to plot units for x and y
		   num       a circle will be stretched such that the height
		             is num times the width. aspect=1 is the same as
		             aspect='equal'.
		  ========   ================================================
		
		*adjustable*
		
		  ============   =====================================
		  value          description
		  ============   =====================================
		  'box'          change physical size of axes
		  'datalim'      change xlim or ylim
		  'box-forced'   same as 'box', but axes can be shared
		  ============   =====================================
		
		'box' does not allow axes sharing, as this can cause
		unintended side effect. For cases when sharing axes is
		fine, use 'box-forced'.
		
		*anchor*
		
		  =====   =====================
		  value   description
		  =====   =====================
		  'C'     centered
		  'SW'    lower left corner
		  'S'     middle of bottom edge
		  'SE'    lower right corner
		  etc.
		  =====   =====================
		
		.. deprecated:: 1.2
		    the option 'normal' for aspect is deprecated. Use 'auto' instead.
	**/
	public function set_aspect(aspect:Dynamic, ?adjustable:Dynamic, ?anchor:Dynamic):Dynamic;
	/**
		Set whether autoscaling is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscale_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the x-axis is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscalex_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the y-axis is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscaley_on(b:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		set axes_locator
		
		ACCEPT: a callable object which takes an axes instance and renderer and
		         returns a bbox.
	**/
	public function set_axes_locator(locator:Dynamic):Dynamic;
	/**
		set the axes background color
		
		ACCEPTS: any matplotlib color - see
		:func:`~matplotlib.pyplot.colors`
	**/
	public function set_axis_bgcolor(color:Dynamic):Dynamic;
	/**
		turn off the axis
	**/
	public function set_axis_off():Dynamic;
	/**
		turn on the axis
	**/
	public function set_axis_on():Dynamic;
	/**
		Set whether the axis ticks and gridlines are above or below most
		artists
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_axisbelow(b:Dynamic):Dynamic;
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
		Set the color cycle for any future plot commands on this Axes.
		
		*clist* is a list of mpl color specifiers.
		
		.. deprecated:: 1.5
	**/
	public function set_color_cycle(clist:Dynamic):Dynamic;
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
		Set the cursor property as::
		
		  ax.set_cursor_props(linewidth, color)
		
		or::
		
		  ax.set_cursor_props((linewidth, color))
		
		ACCEPTS: a (*float*, *color*) tuple
	**/
	public function set_cursor_props(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set the class:`~matplotlib.axes.Axes` figure
		
		accepts a class:`~matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the axes rectangle patch is drawn
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
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
		Set whether the axes responds to navigation toolbar commands
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_navigate(b:Dynamic):Dynamic;
	/**
		Set the navigation toolbar button status;
		
		.. warning::
		    this is not a user-API function.
	**/
	public function set_navigate_mode(b:Dynamic):Dynamic;
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
		Set the axes position with::
		
		  pos = [left, bottom, width, height]
		
		in relative 0,1 coords, or *pos* can be a
		:class:`~matplotlib.transforms.Bbox`
		
		There are two position variables: one which is ultimately
		used, but which may be modified by :meth:`apply_aspect`, and a
		second which is the starting point for :meth:`apply_aspect`.
		
		
		Optional keyword arguments:
		  *which*
		
		    ==========   ====================
		    value        description
		    ==========   ====================
		    'active'     to change the first
		    'original'   to change the second
		    'both'       to change both
		    ==========   ====================
	**/
	public function set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set the property cycle for any future plot commands on this Axes.
		
		set_prop_cycle(arg)
		set_prop_cycle(label, itr)
		set_prop_cycle(label1=itr1[, label2=itr2[, ...]])
		
		Form 1 simply sets given `Cycler` object.
		
		Form 2 creates and sets  a `Cycler` from a label and an iterable.
		
		Form 3 composes and sets  a `Cycler` as an inner product of the
		pairs of keyword arguments. In other words, all of the
		iterables are cycled simultaneously, as if through zip().
		
		Parameters
		----------
		arg : Cycler
		    Set the given Cycler.
		    Can also be `None` to reset to the cycle defined by the
		    current style.
		
		label : name
		    The property key. Must be a valid `Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		itr : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		See Also
		--------
		    :func:`cycler`      Convenience function for creating your
		                        own cyclers.
	**/
	public function set_prop_cycle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set zorder value below which artists will be rasterized.  Set
		to `None` to disable rasterizing of artists below a particular
		zorder.
	**/
	public function set_rasterization_zorder(z:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
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
		
		Returns
		-------
		text : :class:`~matplotlib.text.Text`
		    The matplotlib text instance representing the title
		
		Other parameters
		----------------
		kwargs : text properties
		    Other keyword arguments are text properties, see
		    :class:`~matplotlib.text.Text` for a list of valid text
		    properties.
	**/
	public function set_title(label:Dynamic, ?fontdict:Dynamic, ?loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the lower and upper numerical bounds of the x-axis.
		This method will honor axes inversion regardless of parameter order.
		It will not change the _autoscaleXon attribute.
	**/
	public function set_xbound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the xaxis.
		
		Parameters
		----------
		xlabel : string
		    x label
		
		labelpad : scalar, optional, default: None
		    spacing in points between the label and the x-axis
		
		Other parameters
		----------------
		kwargs : `~matplotlib.text.Text` properties
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_xlabel(xlabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  set_xlim(self, *args, **kwargs):
		
		Set the data limits for the xaxis
		
		Examples::
		
		  set_xlim((left, right))
		  set_xlim(left, right)
		  set_xlim(left=1) # right unchanged
		  set_xlim(right=1) # left unchanged
		
		Keyword arguments:
		
		  *left*: scalar
		    The left xlim; *xmin*, the previous name, may still be used
		
		  *right*: scalar
		    The right xlim; *xmax*, the previous name, may still be used
		
		  *emit*: [ *True* | *False* ]
		    Notify observers of limit change
		
		  *auto*: [ *True* | *False* | *None* ]
		    Turn *x* autoscaling on (*True*), off (*False*; default),
		    or leave unchanged (*None*)
		
		Note, the *left* (formerly *xmin*) value may be greater than
		the *right* (formerly *xmax*).
		For example, suppose *x* is years before present.
		Then one might use::
		
		  set_ylim(5000, 0)
		
		so 5000 years ago is on the left of the plot and the
		present is on the right.
		
		Returns the current xlimits as a length 2 tuple
		
		ACCEPTS: length 2 sequence of floats
	**/
	public function set_xlim(?left:Dynamic, ?right:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set padding of X data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		
		accepts: float in range 0 to 1
	**/
	public function set_xmargin(m:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_xscale(value)
		
		Set the scaling of the x-axis: 'linear' | 'log' | 'logit' | 'symlog'
		
		ACCEPTS: ['linear' | 'log' | 'logit' | 'symlog']
		
		Different kwargs are accepted, depending on the scale:
		    'linear'
		
		        
		
		
		    'log'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *nonposx* /*nonposy*: ['mask' | 'clip' ]
		          non-positive values in *x* or *y* can be masked as
		          invalid, or clipped to a very small positive number
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		
		
		    'logit'
		
		        *nonpos*: ['mask' | 'clip' ]
		          values beyond ]0, 1[ can be masked as invalid, or clipped to a number
		          very close to 0 or 1
		
		
		    'symlog'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *linthreshx* /*linthreshy*:
		          The range (-*x*, *x*) within which the plot is linear (to
		          avoid having the plot go to infinity around zero).
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		        
		        *linscalex* /*linscaley*:
		           This allows the linear range (-*linthresh* to *linthresh*)
		           to be stretched relative to the logarithmic range.  Its
		           value is the number of decades to use for each half of the
		           linear range.  For example, when *linscale* == 1.0 (the
		           default), the space used for the positive and negative
		           halves of the linear range will be equal to one decade in
		           the logarithmic range.
	**/
	public function set_xscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  set_xticklabels(labels, fontdict=None, minor=False, **kwargs)
		
		Set the xtick labels with list of strings *labels*. Return a
		list of axis text instances.
		
		*kwargs* set the :class:`~matplotlib.text.Text` properties.
		Valid properties are
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
		  family or fontname or fontfamily or name: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
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
		  verticalalignment or ma or va: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  wrap: unknown
		  x: float         
		  y: float         
		  zorder: any number         
		
		ACCEPTS: sequence of strings
	**/
	public function set_xticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x ticks with list of *ticks*
		
		ACCEPTS: sequence of floats
	**/
	public function set_xticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the lower and upper numerical bounds of the y-axis.
		This method will honor axes inversion regardless of parameter order.
		It will not change the _autoscaleYon attribute.
	**/
	public function set_ybound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the yaxis
		
		Parameters
		----------
		ylabel : string
		    y label
		
		labelpad : scalar, optional, default: None
		    spacing in points between the label and the x-axis
		
		Other parameters
		----------------
		kwargs : `~matplotlib.text.Text` properties
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_ylabel(ylabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  set_ylim(self, *args, **kwargs):
		
		Set the data limits for the yaxis
		
		Examples::
		
		  set_ylim((bottom, top))
		  set_ylim(bottom, top)
		  set_ylim(bottom=1) # top unchanged
		  set_ylim(top=1) # bottom unchanged
		
		Keyword arguments:
		
		  *bottom*: scalar
		    The bottom ylim; the previous name, *ymin*, may still be used
		
		  *top*: scalar
		    The top ylim; the previous name, *ymax*, may still be used
		
		  *emit*: [ *True* | *False* ]
		    Notify observers of limit change
		
		  *auto*: [ *True* | *False* | *None* ]
		    Turn *y* autoscaling on (*True*), off (*False*; default),
		    or leave unchanged (*None*)
		
		Note, the *bottom* (formerly *ymin*) value may be greater than
		the *top* (formerly *ymax*).
		For example, suppose *y* is depth in the ocean.
		Then one might use::
		
		  set_ylim(5000, 0)
		
		so 5000 m depth is at the bottom of the plot and the
		surface, 0 m, is at the top.
		
		Returns the current ylimits as a length 2 tuple
		
		ACCEPTS: length 2 sequence of floats
	**/
	public function set_ylim(?bottom:Dynamic, ?top:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set padding of Y data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		
		accepts: float in range 0 to 1
	**/
	public function set_ymargin(m:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_yscale(value)
		
		Set the scaling of the y-axis: 'linear' | 'log' | 'logit' | 'symlog'
		
		ACCEPTS: ['linear' | 'log' | 'logit' | 'symlog']
		
		Different kwargs are accepted, depending on the scale:
		    'linear'
		
		        
		
		
		    'log'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *nonposx* /*nonposy*: ['mask' | 'clip' ]
		          non-positive values in *x* or *y* can be masked as
		          invalid, or clipped to a very small positive number
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		
		
		    'logit'
		
		        *nonpos*: ['mask' | 'clip' ]
		          values beyond ]0, 1[ can be masked as invalid, or clipped to a number
		          very close to 0 or 1
		
		
		    'symlog'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *linthreshx* /*linthreshy*:
		          The range (-*x*, *x*) within which the plot is linear (to
		          avoid having the plot go to infinity around zero).
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		        
		        *linscalex* /*linscaley*:
		           This allows the linear range (-*linthresh* to *linthresh*)
		           to be stretched relative to the logarithmic range.  Its
		           value is the number of decades to use for each half of the
		           linear range.  For example, when *linscale* == 1.0 (the
		           default), the space used for the positive and negative
		           halves of the linear range will be equal to one decade in
		           the logarithmic range.
	**/
	public function set_yscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  set_yticklabels(labels, fontdict=None, minor=False, **kwargs)
		
		Set the y tick labels with list of strings *labels*.  Return a list of
		:class:`~matplotlib.text.Text` instances.
		
		*kwargs* set :class:`~matplotlib.text.Text` properties for the labels.
		Valid properties are
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
		  family or fontname or fontfamily or name: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
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
		  verticalalignment or ma or va: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  wrap: unknown
		  x: float         
		  y: float         
		  zorder: any number         
		
		ACCEPTS: sequence of strings
	**/
	public function set_yticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y ticks with list of *ticks*
		
		ACCEPTS: sequence of floats
		
		Keyword arguments:
		
		  *minor*: [ *False* | *True* ]
		    Sets the minor ticks if *True*
	**/
	public function set_yticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		ACCEPTS: any number
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Plot a spectrogram.
		
		Call signature::
		
		  specgram(x, NFFT=256, Fs=2, Fc=0, detrend=mlab.detrend_none,
		           window=mlab.window_hanning, noverlap=128,
		           cmap=None, xextent=None, pad_to=None, sides='default',
		           scale_by_freq=None, mode='default', scale='default',
		           **kwargs)
		
		Compute and plot a spectrogram of data in *x*.  Data are split into
		*NFFT* length segments and the spectrum of each section is
		computed.  The windowing function *window* is applied to each
		segment, and the amount of overlap of each segment is
		specified with *noverlap*. The spectrogram is plotted as a colormap
		(using imshow).
		
		*x*: 1-D array or sequence
		    Array or sequence containing the data
		
		Keyword arguments:
		
		  *Fs*: scalar
		      The sampling frequency (samples per time unit).  It is used
		      to calculate the Fourier frequencies, freqs, in cycles per time
		      unit. The default value is 2.
		
		  *window*: callable or ndarray
		      A function or a vector of length *NFFT*. To create window
		      vectors see :func:`window_hanning`, :func:`window_none`,
		      :func:`numpy.blackman`, :func:`numpy.hamming`,
		      :func:`numpy.bartlett`, :func:`scipy.signal`,
		      :func:`scipy.signal.get_window`, etc. The default is
		      :func:`window_hanning`.  If a function is passed as the
		      argument, it must take a data segment as an argument and
		      return the windowed version of the segment.
		
		  *sides*: [ 'default' | 'onesided' | 'twosided' ]
		      Specifies which sides of the spectrum to return.  Default gives the
		      default behavior, which returns one-sided for real data and both
		      for complex data.  'onesided' forces the return of a one-sided
		      spectrum, while 'twosided' forces two-sided.
		
		*pad_to*: integer
		    The number of points to which the data segment is padded when
		    performing the FFT.  This can be different from *NFFT*, which
		    specifies the number of data points used.  While not increasing
		    the actual resolution of the spectrum (the minimum distance between
		    resolvable peaks), this can give more points in the plot,
		    allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft(). The default is None, which sets *pad_to*
		    equal to *NFFT*
		
		*NFFT*: integer
		    The number of data points used in each block for the FFT.
		    A power 2 is most efficient.  The default value is 256.
		    This should *NOT* be used to get zero padding, or the scaling of the
		    result will be incorrect. Use *pad_to* for this instead.
		
		*detrend*: [ 'default' | 'constant' | 'mean' | 'linear' | 'none'] or
		           callable
		
		    The function applied to each segment before fft-ing,
		    designed to remove the mean or linear trend.  Unlike in
		    MATLAB, where the *detrend* parameter is a vector, in
		    matplotlib is it a function.  The :mod:`~matplotlib.pylab`
		    module defines :func:`~matplotlib.pylab.detrend_none`,
		    :func:`~matplotlib.pylab.detrend_mean`, and
		    :func:`~matplotlib.pylab.detrend_linear`, but you can use
		    a custom function as well.  You can also use a string to choose
		    one of the functions.  'default', 'constant', and 'mean' call
		    :func:`~matplotlib.pylab.detrend_mean`.  'linear' calls
		    :func:`~matplotlib.pylab.detrend_linear`.  'none' calls
		    :func:`~matplotlib.pylab.detrend_none`.
		
		*scale_by_freq*: boolean
		    Specifies whether the resulting density values should be scaled
		    by the scaling frequency, which gives density in units of Hz^-1.
		    This allows for integration over the returned frequency values.
		    The default is True for MATLAB compatibility.
		
		  *mode*: [ 'default' | 'psd' | 'magnitude' | 'angle' | 'phase' ]
		    What sort of spectrum to use.  Default is 'psd'. which takes
		    the power spectral density.  'complex' returns the complex-valued
		    frequency spectrum.  'magnitude' returns the magnitude spectrum.
		    'angle' returns the phase spectrum without unwrapping.  'phase'
		    returns the phase spectrum with unwrapping.
		
		  *noverlap*: integer
		    The number of points of overlap between blocks.  The
		    default value is 128.
		
		  *scale*: [ 'default' | 'linear' | 'dB' ]
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale.  When *mode* is 'psd',
		    this is dB power (10 * log10).  Otherwise this is dB amplitude
		    (20 * log10). 'default' is 'dB' if *mode* is 'psd' or
		    'magnitude' and 'linear' otherwise.  This must be 'linear'
		    if *mode* is 'angle' or 'phase'.
		
		  *Fc*: integer
		    The center frequency of *x* (defaults to 0), which offsets
		    the x extents of the plot to reflect the frequency range used
		    when a signal is acquired and then filtered and downsampled to
		    baseband.
		
		  *cmap*:
		    A :class:`matplotlib.colors.Colormap` instance; if *None*, use
		    default determined by rc
		
		  *xextent*:
		    The image extent along the x-axis. xextent = (xmin,xmax)
		    The default is (0,max(bins)), where bins is the return
		    value from :func:`~matplotlib.mlab.specgram`
		
		  *kwargs*:
		    Additional kwargs are passed on to imshow which makes the
		    specgram image
		
		.. note::
		
		    *detrend* and *scale_by_freq* only apply when *mode* is set to
		    'psd'
		
		Returns the tuple (*spectrum*, *freqs*, *t*, *im*):
		
		  *spectrum*: 2-D array
		    columns are the periodograms of successive segments
		
		  *freqs*: 1-D array
		    The frequencies corresponding to the rows in *spectrum*
		
		  *t*: 1-D array
		    The times corresponding to midpoints of segments (i.e the columns
		    in *spectrum*)
		
		  *im*: instance of class :class:`~matplotlib.image.AxesImage`
		    The image created by imshow containing the spectrogram
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/specgram_demo.py
		
		.. seealso::
		
		    :func:`psd`
		        :func:`psd` differs in the default overlap; in returning
		        the mean of the segment periodograms; in not returning
		        times; and in generating a line plot instead of colormap.
		
		    :func:`magnitude_spectrum`
		        A single spectrum, similar to having a single segment when
		        *mode* is 'magnitude'.  Plots a line instead of a colormap.
		
		    :func:`angle_spectrum`
		        A single spectrum, similar to having a single segment when
		        *mode* is 'angle'.  Plots a line instead of a colormap.
		
		    :func:`phase_spectrum`
		        A single spectrum, similar to having a single segment when
		        *mode* is 'phase'.  Plots a line instead of a colormap.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x'.
	**/
	public function specgram(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?cmap:Dynamic, ?xextent:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic, ?scale:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the sparsity pattern on a 2-D array.
		
		``spy(Z)`` plots the sparsity pattern of the 2-D array *Z*.
		
		Parameters
		----------
		
		Z : sparse array (n, m)
		    The array to be plotted.
		
		precision : float, optional, default: 0
		    If *precision* is 0, any non-zero value will be plotted; else,
		    values of :math:`|Z| > precision` will be plotted.
		
		    For :class:`scipy.sparse.spmatrix` instances, there is a special
		    case: if *precision* is 'present', any value present in the array
		    will be plotted, even if it is identically zero.
		
		origin : ["upper", "lower"], optional, default: "upper"
		    Place the [0,0] index of the array in the upper left or lower left
		    corner of the axes.
		
		aspect : ['auto' | 'equal' | scalar], optional, default: "equal"
		
		    If 'equal', and `extent` is None, changes the axes aspect ratio to
		    match that of the image. If `extent` is not `None`, the axes
		    aspect ratio is changed to match that of the extent.
		
		
		    If 'auto', changes the image aspect ratio to match that of the
		    axes.
		
		    If None, default to rc ``image.aspect`` value.
		
		Two plotting styles are available: image or marker. Both
		are available for full arrays, but only the marker style
		works for :class:`scipy.sparse.spmatrix` instances.
		
		If *marker* and *markersize* are *None*, an image will be
		returned and any remaining kwargs are passed to
		:func:`~matplotlib.pyplot.imshow`; else, a
		:class:`~matplotlib.lines.Line2D` object will be returned with
		the value of marker determining the marker type, and any
		remaining kwargs passed to the
		:meth:`~matplotlib.axes.Axes.plot` method.
		
		If *marker* and *markersize* are *None*, useful kwargs include:
		
		* *cmap*
		* *alpha*
		
		See also
		--------
		imshow : for image options.
		plot : for plotting options
	**/
	public function spy(Z:Dynamic, ?precision:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?aspect:Dynamic, ?origin:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draws a stacked area plot.
		
		*x* : 1d array of dimension N
		
		*y* : 2d array of dimension MxN, OR any number 1d arrays each of dimension
		      1xN. The data is assumed to be unstacked. Each of the following
		      calls is legal::
		
		        stackplot(x, y)               # where y is MxN
		        stackplot(x, y1, y2, y3, y4)  # where y1, y2, y3, y4, are all 1xNm
		
		Keyword arguments:
		
		*baseline* : ['zero', 'sym', 'wiggle', 'weighted_wiggle']
		            Method used to calculate the baseline. 'zero' is just a
		            simple stacked plot. 'sym' is symmetric around zero and
		            is sometimes called `ThemeRiver`.  'wiggle' minimizes the
		            sum of the squared slopes. 'weighted_wiggle' does the
		            same but weights to account for size of each layer.
		            It is also called `Streamgraph`-layout. More details
		            can be found at http://www.leebyron.com/else/streamgraph/.
		
		
		*labels* : A list or tuple of labels to assign to each data series.
		
		
		*colors* : A list or tuple of colors. These will be cycled through and
		           used to colour the stacked areas.
		           All other keyword arguments are passed to
		           :func:`~matplotlib.Axes.fill_between`
		
		Returns *r* : A list of
		:class:`~matplotlib.collections.PolyCollection`, one for each
		element in the stacked area plot.
	**/
	public function stackplot(x:Dynamic, ?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
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
		
		Call signatures::
		
		  stem(y, linefmt='b-', markerfmt='bo', basefmt='r-')
		  stem(x, y, linefmt='b-', markerfmt='bo', basefmt='r-')
		
		A stem plot plots vertical lines (using *linefmt*) at each *x*
		location from the baseline to *y*, and places a marker there
		using *markerfmt*.  A horizontal line at 0 is is plotted using
		*basefmt*.
		
		If no *x* values are provided, the default is (0, 1, ..., len(y) - 1)
		
		Return value is a tuple (*markerline*, *stemlines*,
		*baseline*).
		
		.. seealso::
		    This
		    `document <http://www.mathworks.com/help/techdoc/ref/stem.html>`_
		    for details.
		
		
		**Example:**
		
		.. plot:: mpl_examples/pylab_examples/stem_plot.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All positional and all keyword arguments.
	**/
	public function stem(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a step plot.
		
		Call signature::
		
		  step(x, y, *args, **kwargs)
		
		Additional keyword args to :func:`step` are the same as those
		for :func:`~matplotlib.pyplot.plot`.
		
		*x* and *y* must be 1-D sequences, and it is assumed, but not checked,
		that *x* is uniformly increasing.
		
		Keyword arguments:
		
		*where*: [ 'pre' | 'post' | 'mid'  ]
		  If 'pre' (the default), the interval from x[i] to x[i+1] has level
		  y[i+1].
		
		  If 'post', that interval has level y[i].
		
		  If 'mid', the jumps in *y* occur half-way between the
		  *x*-values.
		
		Return value is a list of lines that were added.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function step(x:Dynamic, y:Dynamic, ?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draws streamlines of a vector flow.
		
		*x*, *y* : 1d arrays
		    an *evenly spaced* grid.
		*u*, *v* : 2d arrays
		    x and y-velocities. Number of rows should match length of y, and
		    the number of columns should match x.
		*density* : float or 2-tuple
		    Controls the closeness of streamlines. When `density = 1`, the domain
		    is divided into a 30x30 grid---*density* linearly scales this grid.
		    Each cell in the grid can have, at most, one traversing streamline.
		    For different densities in each direction, use [density_x, density_y].
		*linewidth* : numeric or 2d array
		    vary linewidth when given a 2d array with the same shape as velocities.
		*color* : matplotlib color code, or 2d array
		    Streamline color. When given an array with the same shape as
		    velocities, *color* values are converted to colors using *cmap*.
		*cmap* : :class:`~matplotlib.colors.Colormap`
		    Colormap used to plot streamlines and arrows. Only necessary when using
		    an array input for *color*.
		*norm* : :class:`~matplotlib.colors.Normalize`
		    Normalize object used to scale luminance data to 0, 1. If None, stretch
		    (min, max) to (0, 1). Only necessary when *color* is an array.
		*arrowsize* : float
		    Factor scale arrow size.
		*arrowstyle* : str
		    Arrow style specification.
		    See :class:`~matplotlib.patches.FancyArrowPatch`.
		*minlength* : float
		    Minimum length of streamline in axes coordinates.
		*start_points*: Nx2 array
		    Coordinates of starting points for the streamlines.
		    In data coordinates, the same as the ``x`` and ``y`` arrays.
		*zorder* : int
		    any number
		
		Returns:
		
		    *stream_container* : StreamplotSet
		        Container object with attributes
		
		            - lines: `matplotlib.collections.LineCollection` of streamlines
		
		            - arrows: collection of `matplotlib.patches.FancyArrowPatch`
		              objects representing arrows half-way along stream
		              lines.
		
		        This container will probably change in the future to allow changes
		        to the colormap, alpha, etc. for both lines and arrows, but these
		        changes should be backward compatible.
	**/
	public function streamplot(x:Dynamic, y:Dynamic, u:Dynamic, v:Dynamic, ?density:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?arrowsize:Dynamic, ?arrowstyle:Dynamic, ?minlength:Dynamic, ?transform:Dynamic, ?zorder:Dynamic, ?start_points:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Add a table to the current axes.
		
		Call signature::
		
		  table(cellText=None, cellColours=None,
		        cellLoc='right', colWidths=None,
		        rowLabels=None, rowColours=None, rowLoc='left',
		        colLabels=None, colColours=None, colLoc='center',
		        loc='bottom', bbox=None):
		
		Returns a :class:`matplotlib.table.Table` instance.  For finer
		grained control over tables, use the
		:class:`~matplotlib.table.Table` class and add it to the axes
		with :meth:`~matplotlib.axes.Axes.add_table`.
		
		Thanks to John Gill for providing the class and table.
		
		kwargs control the :class:`~matplotlib.table.Table`
		properties:
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  contains: a callable function         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fontsize: a float in points         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  zorder: any number         
	**/
	public function table(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add text to the axes.
		
		Add text in string `s` to axis at location `x`, `y`, data
		coordinates.
		
		Parameters
		----------
		x, y : scalars
		    data coordinates
		
		s : string
		    text
		
		fontdict : dictionary, optional, default: None
		    A dictionary to override the default text properties. If fontdict
		    is None, the defaults are determined by your rc parameters.
		
		withdash : boolean, optional, default: False
		    Creates a `~matplotlib.text.TextWithDash` instance instead of a
		    `~matplotlib.text.Text` instance.
		
		Other parameters
		----------------
		kwargs : `~matplotlib.text.Text` properties.
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
		
		    >>> text(0.5, 0.5,'matplotlib', horizontalalignment='center',
		    ...      verticalalignment='center',
		    ...      transform=ax.transAxes)
		
		You can put a rectangular box around the text instance (e.g., to
		set a background color) by using the keyword `bbox`.  `bbox` is
		a dictionary of `~matplotlib.patches.Rectangle`
		properties.  For example::
		
		    >>> text(x, y, s, bbox=dict(facecolor='red', alpha=0.5))
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?fontdict:Dynamic, ?withdash:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change the appearance of ticks and tick labels.
		
		Keyword arguments:
		
		*axis* : ['x' | 'y' | 'both']
		    Axis on which to operate; default is 'both'.
		
		*reset* : [True | False]
		    If *True*, set all parameters to defaults
		    before processing other keyword arguments.  Default is
		    *False*.
		
		*which* : ['major' | 'minor' | 'both']
		    Default is 'major'; apply arguments to *which* ticks.
		
		*direction* : ['in' | 'out' | 'inout']
		    Puts ticks inside the axes, outside the axes, or both.
		
		*length*
		    Tick length in points.
		
		*width*
		    Tick width in points.
		
		*color*
		    Tick color; accepts any mpl color spec.
		
		*pad*
		    Distance in points between tick and label.
		
		*labelsize*
		    Tick label font size in points or as a string (e.g., 'large').
		
		*labelcolor*
		    Tick label color; mpl color spec.
		
		*colors*
		    Changes the tick color and the label color to the same value:
		    mpl color spec.
		
		*zorder*
		    Tick and label zorder.
		
		*bottom*, *top*, *left*, *right* : [bool | 'on' | 'off']
		    controls whether to draw the respective ticks.
		
		*labelbottom*, *labeltop*, *labelleft*, *labelright*
		    Boolean or ['on' | 'off'], controls whether to draw the
		    respective tick labels.
		
		Example::
		
		    ax.tick_params(direction='out', length=6, width=2, colors='r')
		
		This will make all major ticks be red, pointing out of the box,
		and with dimensions 6 points by 2 points.  Tick labels will
		also be red.
	**/
	public function tick_params(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change the `~matplotlib.ticker.ScalarFormatter` used by
		default for linear axes.
		
		Optional keyword arguments:
		
		  ============   =========================================
		  Keyword        Description
		  ============   =========================================
		  *style*        [ 'sci' (or 'scientific') | 'plain' ]
		                 plain turns off scientific notation
		  *scilimits*    (m, n), pair of integers; if *style*
		                 is 'sci', scientific notation will
		                 be used for numbers outside the range
		                 10`m`:sup: to 10`n`:sup:.
		                 Use (0,0) to include all numbers.
		  *useOffset*    [True | False | offset]; if True,
		                 the offset will be calculated as needed;
		                 if False, no offset will be used; if a
		                 numeric offset is specified, it will be
		                 used.
		  *axis*         [ 'x' | 'y' | 'both' ]
		  *useLocale*    If True, format the number according to
		                 the current locale.  This affects things
		                 such as the character used for the
		                 decimal separator.  If False, use
		                 C-style (English) formatting.  The
		                 default setting is controlled by the
		                 axes.formatter.use_locale rcparam.
		  ============   =========================================
		
		Only the major ticks are affected.
		If the method is called when the
		:class:`~matplotlib.ticker.ScalarFormatter` is not the
		:class:`~matplotlib.ticker.Formatter` being used, an
		:exc:`AttributeError` will be raised.
	**/
	public function ticklabel_format(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		:func:`~matplotlib.pyplot.tricontour` and
		:func:`~matplotlib.pyplot.tricontourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		The triangulation can be specified in one of two ways; either::
		
		  tricontour(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tricontour(x, y, ...)
		  tricontour(x, y, triangles, ...)
		  tricontour(x, y, triangles=triangles, ...)
		  tricontour(x, y, mask=mask, ...)
		  tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of
		these possibilities.
		
		The remaining arguments may be::
		
		  tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point
		in the triangulation.  The level values are chosen
		automatically.
		
		::
		
		  tricontour(..., Z, N)
		
		contour *N* automatically-chosen levels.
		
		::
		
		  tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*
		
		::
		
		  tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		``C = tricontour(...)`` returns a
		:class:`~matplotlib.contour.TriContourSet` object.
		
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
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
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
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
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
		    in ``contour.negative_linestyle`` in ``matplotlibrc``
		    will be used.
		
		tricontourf-only keyword arguments:
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing
		
		Note: tricontourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/tricontour_demo.py
	**/
	public function tricontour(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		:func:`~matplotlib.pyplot.tricontour` and
		:func:`~matplotlib.pyplot.tricontourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		The triangulation can be specified in one of two ways; either::
		
		  tricontour(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tricontour(x, y, ...)
		  tricontour(x, y, triangles, ...)
		  tricontour(x, y, triangles=triangles, ...)
		  tricontour(x, y, mask=mask, ...)
		  tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of
		these possibilities.
		
		The remaining arguments may be::
		
		  tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point
		in the triangulation.  The level values are chosen
		automatically.
		
		::
		
		  tricontour(..., Z, N)
		
		contour *N* automatically-chosen levels.
		
		::
		
		  tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*
		
		::
		
		  tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		``C = tricontour(...)`` returns a
		:class:`~matplotlib.contour.TriContourSet` object.
		
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
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
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
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
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
		    in ``contour.negative_linestyle`` in ``matplotlibrc``
		    will be used.
		
		tricontourf-only keyword arguments:
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing
		
		Note: tricontourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/tricontour_demo.py
	**/
	public function tricontourf(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		triangles use the kwarg *facecolors*=C instead of just *C*.
		
		*shading* may be 'flat' (the default) or 'gouraud'. If *shading*
		is 'flat' and C values are defined at points, the color values
		used for each triangle are from the mean C of the triangle's
		three points. If *shading* is 'gouraud' then color values must be
		defined at points.
		
		The remaining kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.pcolor`.
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/tripcolor_demo.py
	**/
	public function tripcolor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/triplot_demo.py
	**/
	public function triplot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call signature::
		
		  ax = twinx()
		
		create a twin of Axes for generating a plot with a sharex
		x-axis but independent y axis.  The y-axis of self will have
		ticks on left and the returned axes will have ticks on the
		right.
		
		.. note::
		    For those who are 'picking' artists while using twinx, pick
		    events are only called for the artists in the top-most axes.
	**/
	public function twinx():Dynamic;
	/**
		Call signature::
		
		  ax = twiny()
		
		create a twin of Axes for generating a plot with a shared
		y-axis but independent x axis.  The x-axis of self will have
		ticks on bottom and the returned axes will have ticks on the
		top.
		
		.. note::
		    For those who are 'picking' artists while using twiny, pick
		    events are only called for the artists in the top-most axes.
	**/
	public function twiny():Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Update the data lim bbox with seq of xy tups or equiv. 2-D array
	**/
	public function update_datalim(xys:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Update the datalim to include the given
		:class:`~matplotlib.transforms.Bbox` *bounds*
	**/
	public function update_datalim_bounds(bounds:Dynamic):Dynamic;
	/**
		Update the data lim bbox with seq of xy tups
	**/
	public function update_datalim_numerix(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Drawing function for violin plots.
		
		Call signature::
		
		  violin(vpstats, positions=None, vert=True, widths=0.5,
		         showmeans=False, showextrema=True, showmedians=False):
		
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
		  If true, plots the violins veritcally.
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
		
		    - ``means``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the mean values of each of the
		      violin's distribution.
		
		    - ``mins``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the bottom of each violin's
		      distribution.
		
		    - ``maxes``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the top of each violin's
		      distribution.
		
		    - ``bars``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the centers of each violin's
		      distribution.
		
		    - ``medians``: A
		      :class:`matplotlib.collections.LineCollection` instance
		      created to identify the median values of each of the
		      violin's distribution.
	**/
	public function violin(vpstats:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Make a violin plot.
		
		        Call signature::
		
		          violinplot(dataset, positions=None, vert=True, widths=0.5,
		                     showmeans=False, showextrema=True, showmedians=False,
		                     points=100, bw_method=None):
		
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
		
		            - ``means``: A
		              :class:`matplotlib.collections.LineCollection` instance
		              created to identify the mean values of each of the
		              violin's distribution.
		
		            - ``mins``: A
		              :class:`matplotlib.collections.LineCollection` instance
		              created to identify the bottom of each violin's
		              distribution.
		
		            - ``maxes``: A
		              :class:`matplotlib.collections.LineCollection` instance
		              created to identify the top of each violin's
		              distribution.
		
		            - ``bars``: A
		              :class:`matplotlib.collections.LineCollection` instance
		              created to identify the centers of each violin's
		              distribution.
		
		            - ``medians``: A
		              :class:`matplotlib.collections.LineCollection` instance
		              created to identify the median values of each of the
		              violin's distribution.
		        
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'dataset'.
	**/
	public function violinplot(dataset:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic, ?points:Dynamic, ?bw_method:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Plot vertical lines.
		
		Plot vertical lines at each `x` from `ymin` to `ymax`.
		
		Parameters
		----------
		x : scalar or 1D array_like
		    x-indexes where to plot the lines.
		
		ymin, ymax : scalar or 1D array_like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : array_like of colors, optional, default: 'k'
		
		linestyles : ['solid' | 'dashed' | 'dashdot' | 'dotted'], optional
		
		label : string, optional, default: ''
		
		Returns
		-------
		lines : `~matplotlib.collections.LineCollection`
		
		Other parameters
		----------------
		kwargs : `~matplotlib.collections.LineCollection` properties.
		
		See also
		--------
		hlines : horizontal lines
		
		Examples
		---------
		.. plot:: mpl_examples/pylab_examples/vline_hline_demo.py
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'ymin', 'x', 'ymax', 'colors'.
	**/
	public function vlines(x:Dynamic, ymin:Dynamic, ymax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets up x-axis ticks and labels that treat the x data as dates.
		
		*tz* is a timezone string or :class:`tzinfo` instance.
		Defaults to rc value.
	**/
	public function xaxis_date(?tz:Dynamic):Dynamic;
	/**
		Returns *True* if the x-axis is inverted.
	**/
	public function xaxis_inverted():Dynamic;
	/**
		Plot the cross correlation between *x* and *y*.
		
		Parameters
		----------
		
		x : sequence of scalars of length n
		
		y : sequence of scalars of length n
		
		hold : boolean, optional, default: True
		
		detrend : callable, optional, default: `mlab.detrend_none`
		    x is detrended by the `detrend` callable. Default is no
		    normalization.
		
		normed : boolean, optional, default: True
		    if True, normalize the data by the autocorrelation at the 0-th
		    lag.
		
		usevlines : boolean, optional, default: True
		    if True, Axes.vlines is used to plot the vertical lines from the
		    origin to the acorr. Otherwise, Axes.plot is used.
		
		maxlags : integer, optional, default: 10
		    number of lags to show. If None, will return all 2 * len(x) - 1
		    lags.
		
		Returns
		-------
		(lags, c, line, b) : where:
		
		  - `lags` are a length 2`maxlags+1 lag vector.
		  - `c` is the 2`maxlags+1 auto correlation vectorI
		  - `line` is a `~matplotlib.lines.Line2D` instance returned by
		    `plot`.
		  - `b` is the x-axis (none, if plot is used).
		
		Other parameters
		-----------------
		linestyle : `~matplotlib.lines.Line2D` prop, optional, default: None
		    Only used if usevlines is False.
		
		marker : string, optional, default: 'o'
		
		Notes
		-----
		The cross correlation is performed with :func:`numpy.correlate` with
		`mode` = 2.
		
		Notes
		-----
		
		In addition to the above described arguments, this function can take a
		**data** keyword argument. If such a **data** argument is given, the
		following arguments are replaced by **data[<arg>]**:
		
		* All arguments with the following names: 'x', 'y'.
	**/
	public function xcorr(x:Dynamic, y:Dynamic, ?normed:Dynamic, ?detrend:Dynamic, ?usevlines:Dynamic, ?maxlags:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets up y-axis ticks and labels that treat the y data as dates.
		
		*tz* is a timezone string or :class:`tzinfo` instance.
		Defaults to rc value.
	**/
	public function yaxis_date(?tz:Dynamic):Dynamic;
	/**
		Returns *True* if the y-axis is inverted.
	**/
	public function yaxis_inverted():Dynamic;
	static public var zorder : Dynamic;
}