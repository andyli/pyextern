/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "Annotation") extern class Annotation {
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
	@:native("__init__")
	public function ___init__(text:Dynamic, xy:Dynamic, ?xytext:Dynamic, ?xycoords:Dynamic, ?textcoords:Dynamic, ?arrowprops:Dynamic, ?annotation_clip:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function new(text:Dynamic, xy:Dynamic, ?xytext:Dynamic, ?xycoords:Dynamic, ?textcoords:Dynamic, ?arrowprops:Dynamic, ?annotation_clip:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _cached : Dynamic;
	/**
		given the xy pixel coordinate, check if the annotation need to
		be drawn.
	**/
	public function _check_xy(renderer:Dynamic, xy_pixel:Dynamic):Dynamic;
	/**
		Update the location and size of the bbox (`.patches.FancyBboxPatch`),
		and draw.
	**/
	public function _draw_bbox(renderer:Dynamic, posx:Dynamic, posy:Dynamic):Dynamic;
	/**
		Return the distance from the given points to the boundaries of a
		rotated box, in pixels.
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
		Return the pixel position of the annotated point.
	**/
	public function _get_position_xy(renderer:Dynamic):Dynamic;
	/**
		return x, y (in display coordinate) that is to be used for a reference
		of any offset coordinate
	**/
	public function _get_ref_xy(renderer:Dynamic):Dynamic;
	/**
		Return the width of a given text string, in pixels.
	**/
	public function _get_rendered_text_width(text:Dynamic):Dynamic;
	/**
		Return the maximum line width for wrapping text based on the current
		orientation.
	**/
	public function _get_wrap_line_width():Dynamic;
	/**
		Return a copy of the text with new lines added, so that
		the text is wrapped relative to the parent figure.
	**/
	public function _get_wrapped_text():Dynamic;
	public function _get_xy(renderer:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic):Dynamic;
	/**
		Get the (possibly unit converted) transformed x, y in display coords.
	**/
	public function _get_xy_display():Dynamic;
	public function _get_xy_transform(renderer:Dynamic, s:Dynamic):Dynamic;
	/**
		Return the string *s* after mathtext preprocessing, and the kind of
		mathtext support needed.
		
		- If *self* is configured to use TeX, return *s* unchanged except that
		  a single space gets escaped, and the flag "TeX".
		- Otherwise, if *s* is mathtext (has an even number of unescaped dollar
		  signs), return *s* and the flag True.
		- Otherwise, return *s* with dollar signs unescaped, and the flag
		  False.
	**/
	public function _preprocess_math(s:Dynamic):Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _update_clip_properties():Dynamic;
	/**
		Update the pixel positions of the annotation text and the arrow patch.
	**/
	public function _update_position_xytext(renderer:Dynamic, xy_pixel:Dynamic):Dynamic;
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
	public var aname : Dynamic;
	/**
		The coordinate system to use for `.Annotation.xyann`.
	**/
	public var anncoords : Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.0
		   arrow was deprecated in Matplotlib 3.0 and will be removed in 3.2. Use arrow_patch instead.\ 
	**/
	public var arrow : Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether the mouse event occurred in the patch.
		
		In the case of text, a hit is true anywhere in the
		axis-aligned bounding-box containing the text.
		
		Returns
		-------
		bool : bool
	**/
	public function contains(event:Dynamic):Bool;
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
		Set the draggable state -- if state is
		
		  * None : toggle the current state
		
		  * True : turn draggable on
		
		  * False : turn draggable off
		
		If draggable is on, you can drag the annotation on the canvas with
		the mouse.  The DraggableAnnotation helper instance is returned if
		draggable is on.
	**/
	public function draggable(?state:Dynamic, ?use_blit:Dynamic):Dynamic;
	/**
		Draw the :class:`Annotation` object to the given *renderer*.
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
		Return the coordinate system to use for `.Annotation.xyann`.
		
		See also *xycoords* in `.Annotation`.
	**/
	public function get_anncoords():Dynamic;
	/**
		Return *annotation_clip* attribute.
		See :meth:`set_annotation_clip` for the meaning of return values.
	**/
	public function get_annotation_clip():Dynamic;
	/**
		Return the bbox Patch, or None if the `.patches.FancyBboxPatch`
		is not made.
	**/
	public function get_bbox_patch():Dynamic;
	/**
		Alias for `get_color`.
	**/
	public function get_c():Dynamic;
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
		Return the color of the text
	**/
	public function get_color():Dynamic;
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
		Alias for `get_fontfamily`.
	**/
	public function get_family():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Alias for `get_fontproperties`.
	**/
	public function get_font_properties():Dynamic;
	/**
		Return the list of font families used for font lookup
		
		See Also
		--------
		.font_manager.FontProperties.get_family
	**/
	public function get_fontfamily():Dynamic;
	/**
		Return the font name as string
		
		See Also
		--------
		.font_manager.FontProperties.get_name
	**/
	public function get_fontname():Dynamic;
	/**
		Return the `.font_manager.FontProperties` object
	**/
	public function get_fontproperties():Dynamic;
	/**
		Return the font size as integer
		
		See Also
		--------
		.font_manager.FontProperties.get_size_in_points
	**/
	public function get_fontsize():Dynamic;
	/**
		Return the font style as string
		
		See Also
		--------
		.font_manager.FontProperties.get_style
	**/
	public function get_fontstyle():Dynamic;
	/**
		Return the font variant as a string
		
		See Also
		--------
		.font_manager.FontProperties.get_variant
	**/
	public function get_fontvariant():Dynamic;
	/**
		Get the font weight as string or number
		
		See Also
		--------
		.font_manager.FontProperties.get_weight
	**/
	public function get_fontweight():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Alias for `get_horizontalalignment`.
	**/
	public function get_ha():Dynamic;
	/**
		Return the horizontal alignment as string.  Will be one of
		'left', 'center' or 'right'.
	**/
	public function get_horizontalalignment():Dynamic;
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
		Alias for `get_fontname`.
	**/
	public function get_name():Dynamic;
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
		Return the position of the text as a tuple (*x*, *y*)
	**/
	public function get_position():Dynamic;
	/**
		Return a hashable tuple of properties.
		
		Not intended to be human readable, but useful for backends who
		want to cache derived information about text (e.g., layouts) and
		need to know if the text has changed.
	**/
	public function get_prop_tup(?renderer:Dynamic):Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Return the text angle as float in degrees.
	**/
	public function get_rotation():Dynamic;
	/**
		Get the text rotation mode.
	**/
	public function get_rotation_mode():Dynamic;
	/**
		Alias for `get_fontsize`.
	**/
	public function get_size():Dynamic;
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
		Get the font stretch as a string or number
		
		See Also
		--------
		.font_manager.FontProperties.get_stretch
	**/
	public function get_stretch():Dynamic;
	/**
		Alias for `get_fontstyle`.
	**/
	public function get_style():Dynamic;
	/**
		Get the text as string
	**/
	public function get_text():Dynamic;
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
	/**
		Return the unitless position of the text as a tuple (*x*, *y*)
	**/
	public function get_unitless_position():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return whether this `Text` object uses TeX for rendering.
	**/
	public function get_usetex():Dynamic;
	/**
		Alias for `get_verticalalignment`.
	**/
	public function get_va():Dynamic;
	/**
		Alias for `get_fontvariant`.
	**/
	public function get_variant():Dynamic;
	/**
		Return the vertical alignment as string.  Will be one of
		'top', 'center', 'bottom' or 'baseline'.
	**/
	public function get_verticalalignment():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Alias for `get_fontweight`.
	**/
	public function get_weight():Dynamic;
	/**
		Return the `Bbox` bounding the text and arrow, in display units.
		
		Parameters
		----------
		renderer : Renderer, optional
		    A renderer is needed to compute the bounding box.  If the artist
		    has already been drawn, the renderer is cached; thus, it is only
		    necessary to pass this argument when calling `get_window_extent`
		    before the first `draw`.  In practice, it is usually easier to
		    trigger a draw first (e.g. by saving the figure).
	**/
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the wrapping state for the text.
	**/
	public function get_wrap():Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		[*Deprecated*] Returns a cleaned string and a boolean flag.
		The flag indicates if the given string *s* contains any mathtext,
		determined by counting unescaped dollar signs. If no mathtext
		is present, the cleaned string has its dollar signs unescaped.
		If usetex is on, the flag always has the value "TeX".
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function is_math_text(s:Dynamic, ?usetex:Dynamic):Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
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
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the coordinate system to use for `.Annotation.xyann`.
		
		See also *xycoords* in `.Annotation`.
	**/
	public function set_anncoords(coords:Dynamic):Dynamic;
	/**
		set *annotation_clip* attribute.
		
		  * True: the annotation will only be drawn when self.xy is inside
		          the axes.
		  * False: the annotation will always be drawn regardless of its
		           position.
		  * None: the self.xy will be checked only if *xycoords* is "data"
	**/
	public function set_annotation_clip(b:Dynamic):Dynamic;
	/**
		Set the background color of the text by updating the bbox.
		
		Parameters
		----------
		color : color
		
		See Also
		--------
		.set_bbox : To change the position of the bounding box
	**/
	public function set_backgroundcolor(color:Dynamic):Dynamic;
	/**
		Draw a bounding box around self.
		
		Parameters
		----------
		rectprops : dict with properties for `.patches.FancyBboxPatch`
		     The default boxstyle is 'square'. The mutation
		     scale of the `.patches.FancyBboxPatch` is set to the fontsize.
		
		Examples
		--------
		::
		
		    t.set_bbox(dict(facecolor='red', alpha=0.5))
	**/
	public function set_bbox(rectprops:Dynamic):Dynamic;
	/**
		Alias for `set_color`.
	**/
	public function set_c(color:Dynamic):Dynamic;
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
		Set the foreground color of the text
		
		Parameters
		----------
		color : color
	**/
	public function set_color(color:Dynamic):Dynamic;
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
		Alias for `set_fontfamily`.
	**/
	public function set_family(fontname:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Alias for `set_fontproperties`.
	**/
	public function set_font_properties(fp:Dynamic):Dynamic;
	/**
		Set the font family.  May be either a single string, or a list of
		strings in decreasing priority.  Each string may be either a real font
		name or a generic font class name.  If the latter, the specific font
		names will be looked up in the corresponding rcParams.
		
		If a `Text` instance is constructed with ``fontfamily=None``, then the
		font is set to :rc:`font.family`, and the
		same is done when `set_fontfamily()` is called on an existing
		`Text` instance.
		
		Parameters
		----------
		fontname : {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		
		See Also
		--------
		.font_manager.FontProperties.set_family
	**/
	public function set_fontfamily(fontname:Dynamic):Dynamic;
	/**
		Alias for `set_family`.
		
		One-way alias only: the getter differs.
		
		Parameters
		----------
		fontname : {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		
		See Also
		--------
		.font_manager.FontProperties.set_family
	**/
	public function set_fontname(fontname:Dynamic):Dynamic;
	/**
		Set the font properties that control the text.
		
		Parameters
		----------
		fp : `.font_manager.FontProperties`
	**/
	public function set_fontproperties(fp:Dynamic):Dynamic;
	/**
		Set the font size.  May be either a size string, relative to
		the default font size, or an absolute font size in points.
		
		Parameters
		----------
		fontsize : {size in points, 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		
		See Also
		--------
		.font_manager.FontProperties.set_size
	**/
	public function set_fontsize(fontsize:Dynamic):Dynamic;
	/**
		Set the font stretch (horizontal condensation or expansion).
		
		Parameters
		----------
		stretch : {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		
		See Also
		--------
		.font_manager.FontProperties.set_stretch
	**/
	public function set_fontstretch(stretch:Dynamic):Dynamic;
	/**
		Set the font style.
		
		Parameters
		----------
		fontstyle : {'normal', 'italic', 'oblique'}
		
		See Also
		--------
		.font_manager.FontProperties.set_style
	**/
	public function set_fontstyle(fontstyle:Dynamic):Dynamic;
	/**
		Set the font variant, either 'normal' or 'small-caps'.
		
		Parameters
		----------
		variant : {'normal', 'small-caps'}
		
		See Also
		--------
		.font_manager.FontProperties.set_variant
	**/
	public function set_fontvariant(variant:Dynamic):Dynamic;
	/**
		Set the font weight.
		
		Parameters
		----------
		weight : {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		
		See Also
		--------
		.font_manager.FontProperties.set_weight
	**/
	public function set_fontweight(weight:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Alias for `set_horizontalalignment`.
	**/
	public function set_ha(align:Dynamic):Dynamic;
	/**
		Set the horizontal alignment to one of
		
		Parameters
		----------
		align : {'center', 'right', 'left'}
	**/
	public function set_horizontalalignment(align:Dynamic):Dynamic;
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
		Set the line spacing as a multiple of the font size.
		Default is 1.2.
		
		Parameters
		----------
		spacing : float (multiple of font size)
	**/
	public function set_linespacing(spacing:Dynamic):Dynamic;
	/**
		Alias for `set_multialignment`.
	**/
	public function set_ma(align:Dynamic):Dynamic;
	/**
		Set the alignment for multiple lines layout.  The layout of the
		bounding box of all the lines is determined bu the horizontalalignment
		and verticalalignment properties, but the multiline text within that
		box can be
		
		Parameters
		----------
		align : {'left', 'right', 'center'}
	**/
	public function set_multialignment(align:Dynamic):Dynamic;
	/**
		Alias for `set_fontname`.
	**/
	public function set_name(fontname:Dynamic):Dynamic;
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
		Set the (*x*, *y*) position of the text.
		
		Parameters
		----------
		xy : (float, float)
	**/
	public function set_position(xy:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the rotation of the text.
		
		Parameters
		----------
		s : {angle in degrees, 'vertical', 'horizontal'}
	**/
	public function set_rotation(s:Dynamic):Dynamic;
	/**
		Set text rotation mode.
		
		Parameters
		----------
		m : {None, 'default', 'anchor'}
		    If ``None`` or ``"default"``, the text will be first rotated, then
		    aligned according to their horizontal and vertical alignments.  If
		    ``"anchor"``, then alignment occurs before rotation.
	**/
	public function set_rotation_mode(m:Dynamic):Dynamic;
	/**
		Alias for `set_fontsize`.
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
		Alias for `set_fontstretch`.
	**/
	public function set_stretch(stretch:Dynamic):Dynamic;
	/**
		Alias for `set_fontstyle`.
	**/
	public function set_style(fontstyle:Dynamic):Dynamic;
	/**
		Set the text string *s*.
		
		It may contain newlines (``\n``) or math in LaTeX syntax.
		
		Parameters
		----------
		s : object
		    Any object gets converted to its `str`, except ``None`` which
		    becomes ``''``.
	**/
	public function set_text(s:Dynamic):Dynamic;
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
		usetex : bool or None
		    Whether to render using TeX, ``None`` means to use
		    :rc:`text.usetex`.
	**/
	public function set_usetex(usetex:Dynamic):Dynamic;
	/**
		Alias for `set_verticalalignment`.
	**/
	public function set_va(align:Dynamic):Dynamic;
	/**
		Alias for `set_fontvariant`.
	**/
	public function set_variant(variant:Dynamic):Dynamic;
	/**
		Set the vertical alignment
		
		Parameters
		----------
		align : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
	**/
	public function set_verticalalignment(align:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Alias for `set_fontweight`.
	**/
	public function set_weight(weight:Dynamic):Dynamic;
	/**
		Set the wrapping state for the text.
		
		Parameters
		----------
		wrap : bool
	**/
	public function set_wrap(wrap:Dynamic):Dynamic;
	/**
		Set the *x* position of the text.
		
		Parameters
		----------
		x : float
	**/
	public function set_x(x:Dynamic):Dynamic;
	/**
		Set the *y* position of the text.
		
		Parameters
		----------
		y : float
	**/
	public function set_y(y:Dynamic):Dynamic;
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
		Update properties from a dictionary.
	**/
	public function update(kwargs:Dynamic):Dynamic;
	/**
		Update the location and the size of the bbox.
		
		This method should be used when the position and size of the bbox needs
		to be updated before actually drawing the bbox.
	**/
	public function update_bbox_position_size(renderer:Dynamic):Dynamic;
	/**
		Copy properties from other to self.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Update the pixel positions of the annotated point and the text.
	**/
	public function update_positions(renderer:Dynamic):Dynamic;
	/**
		The the text position.
		
		See also *xytext* in `.Annotation`.
	**/
	public var xyann : Dynamic;
	static public var zorder : Dynamic;
}