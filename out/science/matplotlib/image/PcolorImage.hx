/* This file is generated, do not edit! */
package matplotlib.image;
@:pythonImport("matplotlib.image", "PcolorImage") extern class PcolorImage {
	static public var _PROPERTIES_EXCLUDED_FROM_SET : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		ax : `~.axes.Axes`
		    The axes the image will belong to.
		x, y : 1D array-like, optional
		    Monotonic arrays of length N+1 and M+1, respectively, specifying
		    rectangle boundaries.  If not given, will default to
		    ``range(N + 1)`` and ``range(M + 1)``, respectively.
		A : array-like
		    The data to be color-coded. The interpretation depends on the
		    shape:
		
		    - (M, N) ndarray or masked array: values to be colormapped
		    - (M, N, 3): RGB array
		    - (M, N, 4): RGBA array
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    The Colormap instance or registered colormap name used to map
		    scalar data to colors.
		norm : `~matplotlib.colors.Normalize`
		    Maps luminance to 0-1.
		**kwargs : `.Artist` properties
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?x:Dynamic, ?y:Dynamic, ?A:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		ax : `~.axes.Axes`
		    The axes the image will belong to.
		x, y : 1D array-like, optional
		    Monotonic arrays of length N+1 and M+1, respectively, specifying
		    rectangle boundaries.  If not given, will default to
		    ``range(N + 1)`` and ``range(M + 1)``, respectively.
		A : array-like
		    The data to be color-coded. The interpretation depends on the
		    shape:
		
		    - (M, N) ndarray or masked array: values to be colormapped
		    - (M, N, 3): RGB array
		    - (M, N, 4): RGBA array
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    The Colormap instance or registered colormap name used to map
		    scalar data to colors.
		norm : `~matplotlib.colors.Normalize`
		    Maps luminance to 0-1.
		**kwargs : `.Artist` properties
	**/
	public function new(ax:Dynamic, ?x:Dynamic, ?y:Dynamic, ?A:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Return whether the image would be better drawn unsampled.
	**/
	public function _check_unsampled_image():Dynamic;
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base impl. for checking whether a mouseevent happened in an artist.
		
		1. If the artist figure is known and the event did not occur in that
		   figure (by checking its ``canvas`` attribute), reject it.
		2. Otherwise, return `None, {}`, indicating that the subclass'
		   implementation should be used.
		
		Subclasses should start their definition of `contains` as follows:
		
		    inside, info = self._default_contains(mouseevent)
		    if inside is not None:
		        return inside, info
		    # subclass-specific implementation follows
		
		The *figure* kwarg is provided for the implementation of
		`.Figure.contains`.
	**/
	public function _default_contains(mouseevent:Dynamic, ?figure:Dynamic):Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	/**
		Get a scalar alpha value to be applied to the artist as a whole.
		
		If the alpha value is a matrix, the method returns 1.0 because pixels
		have individual alpha values (see `~._ImageBase._make_image` for
		details). If the alpha value is a scalar, the method returns said value
		to be applied to the artist as a whole because pixels do not have
		individual alpha values.
	**/
	public function _get_scalar_alpha():Dynamic;
	/**
		Normalize, rescale, and colormap the image *A* from the given *in_bbox*
		(in data space), to the given *out_bbox* (in pixel space) clipped to
		the given *clip_bbox* (also in pixel space), and magnified by the
		*magnification* factor.
		
		*A* may be a greyscale image (M, N) with a dtype of float32, float64,
		float128, uint16 or uint8, or an (M, N, 4) RGBA image with a dtype of
		float32, float64, float128, or uint8.
		
		If *unsampled* is True, the image will not be scaled, but an
		appropriate affine transformation will be returned instead.
		
		If *round_to_pixel_border* is True, the output image size will be
		rounded to the nearest pixel boundary.  This makes the images align
		correctly with the axes.  It should not be used if exact scaling is
		needed, such as for `FigureImage`.
		
		Returns
		-------
		image : (M, N, 4) uint8 array
		    The RGBA image, resampled unless *unsampled* is True.
		x, y : float
		    The upper left corner where the image should be drawn, in pixel
		    space.
		trans : Affine2D
		    The affine transformation from image to pixel space.
	**/
	public function _make_image(A:Dynamic, in_bbox:Dynamic, out_bbox:Dynamic, clip_bbox:Dynamic, ?magnification:Dynamic, ?unsampled:Dynamic, ?round_to_pixel_border:Dynamic):Dynamic;
	/**
		Helper for initial scaling.
		
		Used by public functions that create a ScalarMappable and support
		parameters *vmin*, *vmax* and *norm*. This makes sure that a *norm*
		will take precedence over *vmin*, *vmax*.
		
		Note that this method does not set the norm.
	**/
	public function _scale_norm(norm:Dynamic, vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : array-like or scalar or None
		    All values must be within the 0-1 range, inclusive.
		    Masked values and nans are not supported.
	**/
	public function _set_alpha_for_array(alpha:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Update the signature of the set function to list all properties
		as keyword arguments.
		
		Property aliases are not listed in the signature for brevity, but
		are still accepted as keyword arguments.
	**/
	static public function _update_set_signature_and_docstring():Dynamic;
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
		int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Dynamic;
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
	public var callbacksSM : Dynamic;
	/**
		Return whether the image can be composited with its neighbors.
	**/
	public function can_composite():Dynamic;
	/**
		Call this whenever the mappable is changed so observers can update.
	**/
	public function changed():Dynamic;
	/**
		Test whether the mouse event occurred within the image.
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
		Draw the Artist (and its children) using the given renderer.
		
		This has no effect if the artist is not visible (`.Artist.get_visible`
		returns False).
		
		Parameters
		----------
		renderer : `.RendererBase` subclass.
		
		Notes
		-----
		This method is overridden in the Artist subclasses.
	**/
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets,
		unless the artist has an associated colorbar, in which case scalar
		values are formatted using the colorbar's formatter.
		
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
		backends.
	**/
	public function get_alpha():Dynamic;
	/**
		Return whether the artist is animated.
	**/
	public function get_animated():Dynamic;
	/**
		Return the array of values, that are mapped to colors.
		
		The base class `.ScalarMappable` does not make any assumptions on
		the dimensionality and shape of the array.
	**/
	public function get_array():Dynamic;
	/**
		Return a list of the child `.Artist`\s of this `.Artist`.
	**/
	public function get_children():Dynamic;
	/**
		Return the values (min, max) that are mapped to the colormap limits.
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
		Return the `.Colormap` instance.
	**/
	public function get_cmap():Dynamic;
	/**
		Return the image value at the event position or *None* if the event is
		outside the image.
		
		See Also
		--------
		matplotlib.artist.Artist.get_cursor_data
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Return the image extent as tuple (left, right, bottom, top).
	**/
	public function get_extent():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return whether the resize filter normalizes the weights.
	**/
	public function get_filternorm():Dynamic;
	/**
		Return the filterrad setting.
	**/
	public function get_filterrad():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the interpolation method the image uses when resizing.
		
		One of 'antialiased', 'nearest', 'bilinear', 'bicubic', 'spline16',
		'spline36', 'hanning', 'hamming', 'hermite', 'kaiser', 'quadric',
		'catrom', 'gaussian', 'bessel', 'mitchell', 'sinc', 'lanczos',
		or 'none'.
	**/
	public function get_interpolation():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
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
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Return whether image resampling is used.
	**/
	public function get_resample():Dynamic;
	/**
		Return the size of the image as tuple (numrows, numcols).
	**/
	public function get_size():Dynamic;
	/**
		Return the sketch parameters for the artist.
		
		Returns
		-------
		tuple or None
		
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
		Return the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Like `.Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` subclass
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		`.Bbox`
		    The enclosing bounding box (in figure pixel coordinates).
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
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Get the artist's bounding box in display space.
		
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
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return whether units are set on any axis.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	/**
		Normalize, rescale, and colormap this image's data for rendering using
		*renderer*, with the given *magnification*.
		
		If *unsampled* is True, the image will not be scaled, but an
		appropriate affine transformation will be returned instead.
		
		Returns
		-------
		image : (M, N, 4) uint8 array
		    The RGBA image, resampled unless *unsampled* is True.
		x, y : float
		    The upper left corner where the image should be drawn, in pixel
		    space.
		trans : Affine2D
		    The affine transformation from image to pixel space.
	**/
	public function make_image(renderer:Dynamic, ?magnification:Dynamic, ?unsampled:Dynamic):Dynamic;
	/**
		If this property is set to *True*, the artist will be queried for
		custom context information when the mouse cursor moves over it.
		
		See also :meth:`get_cursor_data`, :class:`.ToolCursorPosition` and
		:class:`.NavigationToolbar2`.
	**/
	public var mouseover : Dynamic;
	public var norm : Dynamic;
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
		Set multiple properties at once.
		
		Supported properties are
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: float or 2D array-like or None
		    animated: bool
		    array: unknown
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    data: unknown
		    extent: 4-tuple of float
		    figure: `.Figure`
		    filternorm: bool
		    filterrad: positive float
		    gid: str
		    in_layout: bool
		    interpolation: {'antialiased', 'nearest', 'bilinear', 'bicubic', 'spline16', 'spline36', 'hanning', 'hamming', 'hermite', 'kaiser', 'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell', 'sinc', 'lanczos', 'none'} or None
		    interpolation_stage: {'data', 'rgba'} or None
		    label: object
		    norm: `.Normalize` or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    resample: bool or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?array:Dynamic, ?clim:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?cmap:Dynamic, ?data:Dynamic, ?extent:Dynamic, ?filternorm:Dynamic, ?filterrad:Dynamic, ?gid:Dynamic, ?in_layout:Dynamic, ?interpolation:Dynamic, ?interpolation_stage:Dynamic, ?label:Dynamic, ?norm:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?rasterized:Dynamic, ?resample:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?transform:Dynamic, ?url:Dynamic, ?visible:Dynamic, ?zorder:Dynamic):Dynamic;
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
		alpha : float or 2D array-like or None
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set whether the artist is intended to be used in an animation.
		
		If True, the artist is excluded from regular drawing of the figure.
		You have to call `.Figure.draw_artist` / `.Axes.draw_artist`
		explicitly on the artist. This appoach is used to speed up animations
		using blitting.
		
		See also `matplotlib.animation` and
		:doc:`/tutorials/advanced/blitting`.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Retained for backwards compatibility - use set_data instead.
		
		Parameters
		----------
		A : array-like
	**/
	public function set_array(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set the norm limits for image scaling.
		
		Parameters
		----------
		vmin, vmax : float
		     The limits.
		
		     The limits may also be passed as a tuple (*vmin*, *vmax*) as a
		     single positional argument.
		
		     .. ACCEPTS: (vmin: float, vmax: float)
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
		
		When False artists will be visible outside of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path.
		
		Parameters
		----------
		path : `.Patch` or `.Path` or `.TransformedPath` or None
		    The clip path. If given a `.Path`, *transform* must be provided as
		    well. If *None*, a previously set clip path is removed.
		transform : `~matplotlib.transforms.Transform`, optional
		    Only used if *path* is a `.Path`, in which case the given `.Path`
		    is converted to a `.TransformedPath` using *transform*.
		
		Notes
		-----
		For efficiency, if *path* is a `.Rectangle` this method will set the
		clipping box to the corresponding rectangle and set the clipping path
		to ``None``.
		
		For technical reasons (support of `~.Artist.set`), a tuple
		(*path*, *transform*) is also accepted as a single positional
		parameter.
		
		.. ACCEPTS: Patch or (Path, Transform) or None
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the colormap for luminance data.
		
		Parameters
		----------
		cmap : `.Colormap` or str or None
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Set the grid for the rectangle boundaries, and the data values.
		
		Parameters
		----------
		x, y : 1D array-like, optional
		    Monotonic arrays of length N+1 and M+1, respectively, specifying
		    rectangle boundaries.  If not given, will default to
		    ``range(N + 1)`` and ``range(M + 1)``, respectively.
		A : array-like
		    The data to be color-coded. The interpretation depends on the
		    shape:
		
		    - (M, N) ndarray or masked array: values to be colormapped
		    - (M, N, 3): RGB array
		    - (M, N, 4): RGBA array
	**/
	public function set_data(x:Dynamic, y:Dynamic, A:Dynamic):Dynamic;
	/**
		Set the image extent.
		
		Parameters
		----------
		extent : 4-tuple of float
		    The position and size of the image as tuple
		    ``(left, right, bottom, top)`` in data coordinates.
		
		Notes
		-----
		This updates ``ax.dataLim``, and, if autoscaling, sets ``ax.viewLim``
		to tightly fit the image, regardless of ``dataLim``.  Autoscaling
		state is not changed, so following this with ``ax.autoscale_view()``
		will redo the autoscaling in accord with ``dataLim``.
	**/
	public function set_extent(extent:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the resize filter normalizes the weights.
		
		See help for `~.Axes.imshow`.
		
		Parameters
		----------
		filternorm : bool
	**/
	public function set_filternorm(filternorm:Dynamic):Dynamic;
	/**
		Set the resize filter radius only applicable to some
		interpolation schemes -- see help for imshow
		
		Parameters
		----------
		filterrad : positive float
	**/
	public function set_filterrad(filterrad:Dynamic):Dynamic;
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
		Set the interpolation method the image uses when resizing.
		
		If None, use :rc:`image.interpolation`. If 'none', the image is
		shown as is without interpolating. 'none' is only supported in
		agg, ps and pdf backends and will fall back to 'nearest' mode
		for other backends.
		
		Parameters
		----------
		s : {'antialiased', 'nearest', 'bilinear', 'bicubic', 'spline16', 'spline36', 'hanning', 'hamming', 'hermite', 'kaiser', 'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell', 'sinc', 'lanczos', 'none'} or None
	**/
	public function set_interpolation(s:Dynamic):Dynamic;
	/**
		Set when interpolation happens during the transform to RGBA.
		
		Parameters
		----------
		s : {'data', 'rgba'} or None
		    Whether to apply up/downsampling interpolation in data or rgba
		    space.
	**/
	public function set_interpolation_stage(s:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the normalization instance.
		
		Parameters
		----------
		norm : `.Normalize` or None
		
		Notes
		-----
		If there are any colorbars using the mappable for this norm, setting
		the norm of the mappable will reset the norm, locator, and formatters
		on the colorbar to default.
	**/
	public function set_norm(norm:Dynamic):Dynamic;
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
		      off an event if its data is within epsilon of the mouse
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
		Force rasterized (bitmap) drawing for vector graphics output.
		
		Rasterized drawing is not supported by all artists. If you try to
		enable this on an artist that does not support it, the command has no
		effect and a warning will be issued.
		
		This setting is ignored for pixel-based output.
		
		See also :doc:`/gallery/misc/rasterization_demo`.
		
		Parameters
		----------
		rasterized : bool
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set whether image resampling is used.
		
		Parameters
		----------
		v : bool or None
		    If None, use :rc:`image.resample`.
	**/
	public function set_resample(v:Dynamic):Dynamic;
	/**
		Set the sketch parameters.
		
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
		
		    The PGF backend uses this argument as an RNG seed and not as
		    described above. Using the same seed yields the same random shape.
		
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
		
		Moreover, margin expansion "bumps" against sticky edges and cannot
		cross them.  For example, if the upper data limit is 1.0, the upper
		view limit computed by simple margin application is 1.2, but there is a
		sticky edge at 1.1, then the actual upper view limit will be 1.1.
		
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
		
		In the normal case, *x* is a 1D or 2D sequence of scalars, and
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
		Update this artist's properties from the dict *props*.
		
		Parameters
		----------
		props : dict
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Write the image to png file *fname*.
	**/
	public function write_png(fname:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}