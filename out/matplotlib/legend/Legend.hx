/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend", "Legend") extern class Legend {
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
		Parameters
		----------
		parent : `~matplotlib.axes.Axes` or `.Figure`
		    The artist that contains the legend.
		
		handles : sequence of `.Artist`
		    A list of Artists (lines, patches) to be added to the legend.
		
		labels : sequence of strings
		    A list of labels to show next to the artists. The length of handles
		    and labels should be the same. If they are not, they are truncated
		    to the smaller of both lengths.
		
		Other Parameters
		----------------
		
		
		loc : int or string or pair of floats, default: :rc:`legend.loc` ('best' for axes, 'upper right' for figures)
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
		
		    The 'best' option can be quite slow for plots with large amounts
		    of data. Your plotting speed may benefit from providing a specific
		    location.
		
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
		
		
		
		Notes
		-----
		
		Users can specify any arbitrary location for the legend using the
		*bbox_to_anchor* keyword argument. bbox_to_anchor can be an instance
		of BboxBase(or its derivatives) or a tuple of 2 or 4 floats.
		See :meth:`set_bbox_to_anchor` for more detail.
		
		The legend location can be specified by setting *loc* with a tuple of
		2 floats, which is interpreted as the lower-left corner of the legend
		in the normalized axes coordinate.
	**/
	@:native("__init__")
	public function ___init__(parent:Dynamic, handles:Dynamic, labels:Dynamic, ?loc:Dynamic, ?numpoints:Dynamic, ?markerscale:Dynamic, ?markerfirst:Dynamic, ?scatterpoints:Dynamic, ?scatteryoffsets:Dynamic, ?prop:Dynamic, ?fontsize:Dynamic, ?borderpad:Dynamic, ?labelspacing:Dynamic, ?handlelength:Dynamic, ?handleheight:Dynamic, ?handletextpad:Dynamic, ?borderaxespad:Dynamic, ?columnspacing:Dynamic, ?ncol:Dynamic, ?mode:Dynamic, ?fancybox:Dynamic, ?shadow:Dynamic, ?title:Dynamic, ?title_fontsize:Dynamic, ?framealpha:Dynamic, ?edgecolor:Dynamic, ?facecolor:Dynamic, ?bbox_to_anchor:Dynamic, ?bbox_transform:Dynamic, ?frameon:Dynamic, ?handler_map:Dynamic):Dynamic;
	/**
		Parameters
		----------
		parent : `~matplotlib.axes.Axes` or `.Figure`
		    The artist that contains the legend.
		
		handles : sequence of `.Artist`
		    A list of Artists (lines, patches) to be added to the legend.
		
		labels : sequence of strings
		    A list of labels to show next to the artists. The length of handles
		    and labels should be the same. If they are not, they are truncated
		    to the smaller of both lengths.
		
		Other Parameters
		----------------
		
		
		loc : int or string or pair of floats, default: :rc:`legend.loc` ('best' for axes, 'upper right' for figures)
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
		
		    The 'best' option can be quite slow for plots with large amounts
		    of data. Your plotting speed may benefit from providing a specific
		    location.
		
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
		
		
		
		Notes
		-----
		
		Users can specify any arbitrary location for the legend using the
		*bbox_to_anchor* keyword argument. bbox_to_anchor can be an instance
		of BboxBase(or its derivatives) or a tuple of 2 or 4 floats.
		See :meth:`set_bbox_to_anchor` for more detail.
		
		The legend location can be specified by setting *loc* with a tuple of
		2 floats, which is interpreted as the lower-left corner of the legend
		in the normalized axes coordinate.
	**/
	public function new(parent:Dynamic, handles:Dynamic, labels:Dynamic, ?loc:Dynamic, ?numpoints:Dynamic, ?markerscale:Dynamic, ?markerfirst:Dynamic, ?scatterpoints:Dynamic, ?scatteryoffsets:Dynamic, ?prop:Dynamic, ?fontsize:Dynamic, ?borderpad:Dynamic, ?labelspacing:Dynamic, ?handlelength:Dynamic, ?handleheight:Dynamic, ?handletextpad:Dynamic, ?borderaxespad:Dynamic, ?columnspacing:Dynamic, ?ncol:Dynamic, ?mode:Dynamic, ?fancybox:Dynamic, ?shadow:Dynamic, ?title:Dynamic, ?title_fontsize:Dynamic, ?framealpha:Dynamic, ?edgecolor:Dynamic, ?facecolor:Dynamic, ?bbox_to_anchor:Dynamic, ?bbox_transform:Dynamic, ?frameon:Dynamic, ?handler_map:Dynamic):Void;
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
	/**
		Return the approximate height of the text. This is used to place
		the legend handle.
	**/
	public function _approx_text_height(?renderer:Dynamic):Dynamic;
	/**
		Returns list of vertices and extents covered by the plot.
		
		Returns a two long list.
		
		First element is a list of (x, y) vertices (in
		display-coordinates) covered by all the lines and line
		collections, in the legend's handles.
		
		Second element is a list of bounding boxes for all the patches in
		the legend's handles.
	**/
	public function _auto_legend_data():Dynamic;
	static public var _default_handler_map : Dynamic;
	/**
		Determine the best location to place the legend.
		
		*consider* is a list of ``(x, y)`` pairs to consider as a potential
		lower-left corner of the legend. All are display coords.
	**/
	public function _find_best_position(width:Dynamic, height:Dynamic, renderer:Dynamic, ?consider:Dynamic):Dynamic;
	/**
		Helper function to locate the legend.
	**/
	public function _findoffset(width:Dynamic, height:Dynamic, xdescent:Dynamic, ydescent:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Place the *bbox* inside the *parentbbox* according to a given
		location code. Return the (x,y) coordinate of the bbox.
		
		- loc: a location code in range(1, 11).
		  This corresponds to the possible values for self._loc, excluding
		  "best".
		
		- bbox: bbox to be placed, display coordinate units.
		- parentbbox: a parent box which will contain the bbox. In
		    display coordinates.
	**/
	public function _get_anchored_bbox(loc:Dynamic, bbox:Dynamic, parentbbox:Dynamic, renderer:Dynamic):Dynamic;
	public function _get_loc():Dynamic;
	/**
		Initialize the legend_box. The legend_box is an instance of
		the OffsetBox, which is packed with legend handles and
		texts. Once packed, their location is calculated during the
		drawing time.
	**/
	public function _init_legend_box(handles:Dynamic, labels:Dynamic, ?markerfirst:Dynamic):Dynamic;
	public var _loc : Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the boilerplate props for artists added to axes.
	**/
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_loc(loc:Dynamic):Dynamic;
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
	static public var codes : Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Returns the truth value and a dictionary of artist specific details of
		selection, such as which points are contained in the pick radius.  See
		individual artists for details.
	**/
	public function contains(event:Dynamic):Dynamic;
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
		Set the draggable state -- if state is
		
		  * None : toggle the current state
		
		  * True : turn draggable on
		
		  * False : turn draggable off
		
		If draggable is on, you can drag the legend on the canvas with
		the mouse. The `.DraggableLegend` helper instance is returned if
		draggable is on.
		
		The update parameter control which parameter of the legend changes
		when dragged. If update is "loc", the *loc* parameter of the legend
		is changed. If "bbox", the *bbox_to_anchor* parameter is changed.
	**/
	public function draggable(?state:Dynamic, ?use_blit:Dynamic, ?update:Dynamic):Dynamic;
	/**
		Draw everything that belongs to the legend.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Set draw frame to b.
		
		Parameters
		----------
		b : bool
	**/
	public function draw_frame(b:Dynamic):Dynamic;
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
		Return filter function to be used for agg filter.
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
		Return the bbox that the legend will be anchored to.
	**/
	public function get_bbox_to_anchor():Dynamic;
	/**
		Return a list of child artists.
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
		A class method that returns the default handler map.
	**/
	static public function get_default_handler_map():Dynamic;
	/**
		Return ``True`` if the legend is draggable, ``False`` otherwise.
	**/
	public function get_draggable():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the `~.patches.Rectangle` instances used to frame the legend.
	**/
	public function get_frame():Dynamic;
	/**
		Get whether the legend box patch is drawn.
	**/
	public function get_frame_on():Dynamic;
	/**
		Returns the group id.
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
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return a legend handler from *legend_handler_map* that
		corresponds to *orig_handler*.
		
		*legend_handler_map* should be a dictionary object (that is
		returned by the get_legend_handler_map method).
		
		It first checks if the *orig_handle* itself is a key in the
		*legend_hanler_map* and return the associated value.
		Otherwise, it checks for each of the classes in its
		method-resolution-order. If no matching key is found, it
		returns ``None``.
	**/
	static public function get_legend_handler(legend_handler_map:Dynamic, orig_handle:Dynamic):Dynamic;
	/**
		Return the handler map.
	**/
	public function get_legend_handler_map():Dynamic;
	/**
		Return a list of `~.lines.Line2D` instances in the legend.
	**/
	public function get_lines():Dynamic;
	/**
		Return a list of `~.patches.Patch` instances in the legend.
	**/
	public function get_patches():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist.
	**/
	public function get_picker():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
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
		Return a list of `~.text.Text` instances in the legend.
	**/
	public function get_texts():Dynamic;
	/**
		Like `.Legend.get_window_extent`, but uses the box for the legend.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		`.BboxBase` : containing the bounding box in figure pixel co-ordinates.
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
	/**
		Return the `.Text` instance for the legend title.
	**/
	public function get_title():Dynamic;
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
		Returns the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Return extent of the legend.
	**/
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		.. deprecated:: 2.2
		    The hitlist function was deprecated in Matplotlib 2.2 and will be removed in 3.1.
		
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		.. deprecated:: 2.2
		    artist.figure is not None
		
		Returns whether the artist is assigned to a `.Figure`.
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
		Process pick event
		
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
		Set the bbox that the legend will be anchored to.
		
		*bbox* can be
		
		- A `.BboxBase` instance
		- A tuple of ``(left, bottom, width, height)`` in the given transform
		  (normalized axes coordinate if None)
		- A tuple of ``(left, bottom)`` where the width and height will be
		  assumed to be zero.
	**/
	public function set_bbox_to_anchor(bbox:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the artist's clip `.Bbox`.
		
		Parameters
		----------
		clipbox : `.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether artist uses clipping.
		
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
		Replace the contains test used by this artist. The new picker
		should be a callable function which determines whether the
		artist is hit by the mouse event::
		
		    hit, props = picker(artist, mouseevent)
		
		If the mouse event is over the artist, return *hit* = *True*
		and *props* is a dictionary of properties you want returned
		with the contains test.
		
		Parameters
		----------
		picker : callable
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		A class method to set the default handler map.
	**/
	static public function set_default_handler_map(handler_map:Dynamic):Dynamic;
	/**
		Enable or disable mouse dragging support of the legend.
		
		Parameters
		----------
		state : bool
		    Whether mouse dragging is enabled.
		use_blit : bool, optional
		    Use blitting for faster image composition. For details see
		    :ref:`func-animation`.
		update : {'loc', 'bbox'}, optional
		    The legend parameter to be changed when dragged:
		
		    - 'loc': update the *loc* parameter of the legend
		    - 'bbox': update the *bbox_to_anchor* parameter of the legend
		
		Returns
		-------
		If *state* is ``True`` this returns the `~.DraggableLegend` helper
		instance. Otherwise this returns ``None``.
	**/
	public function set_draggable(state:Dynamic, ?use_blit:Dynamic, ?update:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the legend box patch is drawn.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist.
		
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
		Set the label to *s* for auto legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
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
		
		Parameters
		----------
		picker : None or bool or float or callable
	**/
	public function set_picker(picker:Dynamic):Dynamic;
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
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the legend title. Fontproperties can be optionally set
		with *prop* parameter.
	**/
	public function set_title(title:Dynamic, ?prop:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Sets the url for the artist.
		
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
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		`x` and `y` sticky edge lists.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical usecase is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the `x` and `y` lists
		can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Update this artist's properties from the dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		A class method to update the default handler map.
	**/
	static public function update_default_handler_map(handler_map:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}