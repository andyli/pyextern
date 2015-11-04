/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "Text") extern class Text {
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
		Create a :class:`~matplotlib.text.Text` instance at *x*, *y*
		with string *text*.
		
		Valid kwargs are
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
		  family or name or fontfamily or fontname: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
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
	@:native("__init__")
	public function ___init__(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?rotation_mode:Dynamic, ?usetex:Dynamic, ?wrap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a :class:`~matplotlib.text.Text` instance at *x*, *y*
		with string *text*.
		
		Valid kwargs are
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
		  family or name or fontfamily or fontname: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
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
	public function new(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?rotation_mode:Dynamic, ?usetex:Dynamic, ?wrap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _cached : Dynamic;
	/**
		Update the location and the size of the bbox
		(FancyBboxPatch), and draw
	**/
	public function _draw_bbox(renderer:Dynamic, posx:Dynamic, posy:Dynamic):Dynamic;
	/**
		Returns the distance from the given points, to the boundaries
		of a rotated box in pixels.
	**/
	public function _get_dist_to_box(rotation:Dynamic, x0:Dynamic, y0:Dynamic, figure_box:Dynamic):Dynamic;
	/**
		return the extent (bbox) of the text together with
		multiple-alignment information. Note that it returns an extent
		of a rotated text when necessary.
	**/
	public function _get_layout(renderer:Dynamic):Dynamic;
	public function _get_multialignment():Dynamic;
	/**
		Returns the width of a given text string, in pixels.
	**/
	public function _get_rendered_text_width(text:Dynamic):Dynamic;
	/**
		Returns the maximum line width for wrapping text based on the
		current orientation.
	**/
	public function _get_wrap_line_width():Dynamic;
	/**
		Return a copy of the text with new lines added, so that
		the text is wrapped relative to the parent figure.
	**/
	public function _get_wrapped_text():Dynamic;
	/**
		get the (possibly unit converted) transformed x, y in display coords
	**/
	public function _get_xy_display():Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _update_clip_properties():Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		The :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether the mouse event occurred in the patch.
		
		In the case of text, a hit is true anywhere in the
		axis-aligned bounding-box containing the text.
		
		Returns True or False.
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
		Draws the :class:`Text` object to the given *renderer*.
	**/
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
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
	**/
	public function get_axes():Dynamic;
	/**
		Return the bbox Patch object. Returns None if the
		FancyBboxPatch is not made.
	**/
	public function get_bbox_patch():Dynamic;
	/**
		Return a list of the child :class:`Artist`s this
		:class:`Artist` contains.
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
		Return the color of the text
	**/
	public function get_color():Dynamic;
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Return the list of font families used for font lookup
	**/
	public function get_family():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		alias for get_fontproperties
	**/
	public function get_font_properties():Dynamic;
	/**
		alias for get_family
	**/
	public function get_fontfamily():Dynamic;
	/**
		alias for get_name
	**/
	public function get_fontname():Dynamic;
	/**
		Return the :class:`~font_manager.FontProperties` object
	**/
	public function get_fontproperties():Dynamic;
	/**
		alias for get_size
	**/
	public function get_fontsize():Dynamic;
	/**
		alias for get_stretch
	**/
	public function get_fontstretch():Dynamic;
	/**
		alias for get_style
	**/
	public function get_fontstyle():Dynamic;
	/**
		alias for get_variant
	**/
	public function get_fontvariant():Dynamic;
	/**
		alias for get_weight
	**/
	public function get_fontweight():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		alias for get_horizontalalignment
	**/
	public function get_ha():Dynamic;
	/**
		Return the horizontal alignment as string.  Will be one of
		'left', 'center' or 'right'.
	**/
	public function get_horizontalalignment():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the font name as string
	**/
	public function get_name():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	/**
		Return the position of the text as a tuple (*x*, *y*)
	**/
	public function get_position():Dynamic;
	/**
		Return a hashable tuple of properties.
		
		Not intended to be human readable, but useful for backends who
		want to cache derived information about text (e.g., layouts) and
		need to know if the text has changed.
	**/
	public function get_prop_tup():Dynamic;
	/**
		return True if the artist is to be rasterized
	**/
	public function get_rasterized():Dynamic;
	/**
		return the text angle as float in degrees
	**/
	public function get_rotation():Dynamic;
	/**
		get text rotation mode
	**/
	public function get_rotation_mode():Dynamic;
	/**
		Return the font size as integer
	**/
	public function get_size():Dynamic;
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
		Get the font stretch as a string or number
	**/
	public function get_stretch():Dynamic;
	/**
		Return the font style as string
	**/
	public function get_style():Dynamic;
	/**
		Get the text as string
	**/
	public function get_text():Dynamic;
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
		Return the unitless position of the text as a tuple (*x*, *y*)
	**/
	public function get_unitless_position():Dynamic;
	/**
		Returns the url
	**/
	public function get_url():Dynamic;
	/**
		Return whether this `Text` object will render using TeX.
		
		If the user has not manually set this value, it will default to
		the value of `rcParams['text.usetex']`
	**/
	public function get_usetex():Dynamic;
	/**
		alias for :meth:`getverticalalignment`
	**/
	public function get_va():Dynamic;
	/**
		Return the font variant as a string
	**/
	public function get_variant():Dynamic;
	/**
		Return the vertical alignment as string.  Will be one of
		'top', 'center', 'bottom' or 'baseline'.
	**/
	public function get_verticalalignment():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Get the font weight as string or number
	**/
	public function get_weight():Dynamic;
	/**
		Return a :class:`~matplotlib.transforms.Bbox` object bounding
		the text, in display units.
		
		In addition to being used internally, this is useful for
		specifying clickable regions in a png file on a web page.
		
		*renderer* defaults to the _renderer attribute of the text
		object.  This is not assigned until the first execution of
		:meth:`draw`, so you must use this kwarg if you want
		to call :meth:`get_window_extent` prior to the first
		:meth:`draw`.  For getting web page regions, it is
		simpler to call the method after saving the figure.
		
		*dpi* defaults to self.figure.dpi; the renderer dpi is
		irrelevant.  For the web application, if figure.dpi is not
		the value used when saving the figure, then the value that
		was used must be specified as the *dpi* argument.
	**/
	public function get_window_extent(?renderer:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		Returns the wrapping state for the text.
	**/
	public function get_wrap():Dynamic;
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
		Returns a cleaned string and a boolean flag.
		The flag indicates if the given string *s* contains any mathtext,
		determined by counting unescaped dollar signs. If no mathtext
		is present, the cleaned string has its dollar signs unescaped.
		If usetex is on, the flag always has the value "TeX".
	**/
	static public function is_math_text(s:Dynamic):Dynamic;
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
		Set the background color of the text by updating the bbox.
		
		.. seealso::
		
		    :meth:`set_bbox`
		       To change the position of the bounding box.
		
		ACCEPTS: any matplotlib color
	**/
	public function set_backgroundcolor(color:Dynamic):Dynamic;
	/**
		Draw a bounding box around self.  rectprops are any settable
		properties for a FancyBboxPatch, e.g., facecolor='red', alpha=0.5.
		
		  t.set_bbox(dict(facecolor='red', alpha=0.5))
		
		The default boxstyle is 'square'. The mutation
		scale of the FancyBboxPatch is set to the fontsize.
		
		ACCEPTS: FancyBboxPatch prop dict
	**/
	public function set_bbox(rectprops:Dynamic):Dynamic;
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
		Set the foreground color of the text
		
		ACCEPTS: any matplotlib color
	**/
	public function set_color(color:Dynamic):Dynamic;
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
		Set the font family.  May be either a single string, or a list
		of strings in decreasing priority.  Each string may be either
		a real font name or a generic font class name.  If the latter,
		the specific font names will be looked up in the
		:file:`matplotlibrc` file.
		
		ACCEPTS: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |
		          'monospace' ]
	**/
	public function set_family(fontname:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		alias for set_fontproperties
	**/
	public function set_font_properties(fp:Dynamic):Dynamic;
	/**
		alias for set_family
	**/
	public function set_fontname(fontname:Dynamic):Dynamic;
	/**
		Set the font properties that control the text.  *fp* must be a
		:class:`matplotlib.font_manager.FontProperties` object.
		
		ACCEPTS: a :class:`matplotlib.font_manager.FontProperties` instance
	**/
	public function set_fontproperties(fp:Dynamic):Dynamic;
	/**
		alias for set_size
	**/
	public function set_fontsize(fontsize:Dynamic):Dynamic;
	/**
		alias for set_stretch
	**/
	public function set_fontstretch(stretch:Dynamic):Dynamic;
	/**
		alias for set_style
	**/
	public function set_fontstyle(fontstyle:Dynamic):Dynamic;
	/**
		alias for set_variant
	**/
	public function set_fontvariant(variant:Dynamic):Dynamic;
	/**
		alias for set_weight
	**/
	public function set_fontweight(weight:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist
		
		ACCEPTS: an id string
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		alias for set_horizontalalignment
	**/
	public function set_ha(align:Dynamic):Dynamic;
	/**
		Set the horizontal alignment to one of
		
		ACCEPTS: [ 'center' | 'right' | 'left' ]
	**/
	public function set_horizontalalignment(align:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		ACCEPTS: string or anything printable with '%s' conversion.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the line spacing as a multiple of the font size.
		Default is 1.2.
		
		ACCEPTS: float (multiple of font size)
	**/
	public function set_linespacing(spacing:Dynamic):Dynamic;
	/**
		alias for set_verticalalignment
	**/
	public function set_ma(align:Dynamic):Dynamic;
	/**
		Set the alignment for multiple lines layout.  The layout of the
		bounding box of all the lines is determined bu the horizontalalignment
		and verticalalignment properties, but the multiline text within that
		box can be
		
		ACCEPTS: ['left' | 'right' | 'center' ]
	**/
	public function set_multialignment(align:Dynamic):Dynamic;
	/**
		alias for set_family
	**/
	public function set_name(fontname:Dynamic):Dynamic;
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
		Set the (*x*, *y*) position of the text
		
		ACCEPTS: (x,y)
	**/
	public function set_position(xy:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the rotation of the text
		
		ACCEPTS: [ angle in degrees | 'vertical' | 'horizontal' ]
	**/
	public function set_rotation(s:Dynamic):Dynamic;
	/**
		set text rotation mode. If "anchor", the un-rotated text
		will first aligned according to their *ha* and
		*va*, and then will be rotated with the alignement
		reference point as a origin. If None (default), the text will be
		rotated first then will be aligned.
	**/
	public function set_rotation_mode(m:Dynamic):Dynamic;
	/**
		Set the font size.  May be either a size string, relative to
		the default font size, or an absolute font size in points.
		
		ACCEPTS: [size in points | 'xx-small' | 'x-small' | 'small' |
		          'medium' | 'large' | 'x-large' | 'xx-large' ]
	**/
	public function set_size(fontsize:Dynamic):Dynamic;
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
		Set the font stretch (horizontal condensation or expansion).
		
		ACCEPTS: [a numeric value in range 0-1000 | 'ultra-condensed' |
		          'extra-condensed' | 'condensed' | 'semi-condensed' |
		          'normal' | 'semi-expanded' | 'expanded' | 'extra-expanded' |
		          'ultra-expanded' ]
	**/
	public function set_stretch(stretch:Dynamic):Dynamic;
	/**
		Set the font style.
		
		ACCEPTS: [ 'normal' | 'italic' | 'oblique']
	**/
	public function set_style(fontstyle:Dynamic):Dynamic;
	/**
		Set the text string *s*
		
		It may contain newlines (``\n``) or math in LaTeX syntax.
		
		ACCEPTS: string or anything printable with '%s' conversion.
	**/
	public function set_text(s:Dynamic):Dynamic;
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
		Set this `Text` object to render using TeX (or not).
		
		If `None` is given, the option will be reset to use the value of
		`rcParams['text.usetex']`
	**/
	public function set_usetex(usetex:Dynamic):Dynamic;
	/**
		alias for set_verticalalignment
	**/
	public function set_va(align:Dynamic):Dynamic;
	/**
		Set the font variant, either 'normal' or 'small-caps'.
		
		ACCEPTS: [ 'normal' | 'small-caps' ]
	**/
	public function set_variant(variant:Dynamic):Dynamic;
	/**
		Set the vertical alignment
		
		ACCEPTS: [ 'center' | 'top' | 'bottom' | 'baseline' ]
	**/
	public function set_verticalalignment(align:Dynamic):Dynamic;
	/**
		Set the artist's visiblity.
		
		ACCEPTS: [True | False]
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the font weight.
		
		ACCEPTS: [a numeric value in range 0-1000 | 'ultralight' | 'light' |
		          'normal' | 'regular' | 'book' | 'medium' | 'roman' |
		          'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |
		          'extra bold' | 'black' ]
	**/
	public function set_weight(weight:Dynamic):Dynamic;
	/**
		Sets the wrapping state for the text.
	**/
	public function set_wrap(wrap:Dynamic):Dynamic;
	/**
		Set the *x* position of the text
		
		ACCEPTS: float
	**/
	public function set_x(x:Dynamic):Dynamic;
	/**
		Set the *y* position of the text
		
		ACCEPTS: float
	**/
	public function set_y(y:Dynamic):Dynamic;
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
		Update properties from a dictionary.
	**/
	public function update(kwargs:Dynamic):Dynamic;
	/**
		Update the location and the size of the bbox. This method
		should be used when the position and size of the bbox needs to
		be updated before actually drawing the bbox.
	**/
	public function update_bbox_position_size(renderer:Dynamic):Dynamic;
	/**
		Copy properties from other to self
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}