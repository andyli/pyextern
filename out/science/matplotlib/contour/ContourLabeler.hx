/* This file is generated, do not edit! */
package matplotlib.contour;
@:pythonImport("matplotlib.contour", "ContourLabeler") extern class ContourLabeler {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _add_label(t:Dynamic, x:Dynamic, y:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	public function _get_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	public function _get_label_text(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	/**
		Return the width of the *nth* label, in pixels.
	**/
	public function _get_nth_label_width(nth:Dynamic):Dynamic;
	/**
		Add contour label using :class:`~matplotlib.text.Text` class.
	**/
	public function add_label(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add contour label using :class:`ClabelText` class.
	**/
	public function add_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add a label near the point ``(x, y)``.
		
		Parameters
		----------
		x, y : float
		    The approximate location of the label.
		inline : bool, default: True
		    If *True* remove the segment of the contour beneath the label.
		inline_spacing : int, default: 5
		    Space in pixels to leave on each side of label when placing
		    inline. This spacing will be exact for labels at locations where
		    the contour is straight, less so for labels on curved contours.
		transform : `.Transform` or `False`, default: ``self.axes.transData``
		    A transform applied to ``(x, y)`` before labeling.  The default
		    causes ``(x, y)`` to be interpreted as data coordinates.  `False`
		    is a synonym for `.IdentityTransform`; i.e. ``(x, y)`` should be
		    interpreted as display coordinates.
	**/
	public function add_label_near(x:Dynamic, y:Dynamic, ?_inline:Dynamic, ?inline_spacing:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Calculate the appropriate label rotation given the linecontour
		coordinates in screen units, the index of the label location and the
		label width.
		
		If *lc* is not None or empty, also break contours and compute
		inlining.
		
		*spacing* is the empty space to leave around the label, in pixels.
		
		Both tasks are done together to avoid calculating path lengths
		multiple times, which is relatively costly.
		
		The method used here involves computing the path length along the
		contour in pixel coordinates and then looking approximately (label
		width / 2) away from central point to determine rotation and then to
		break contour if desired.
	**/
	public function calc_label_rot_and_inline(slc:Dynamic, ind:Dynamic, lw:Dynamic, ?lc:Dynamic, ?spacing:Dynamic):Dynamic;
	/**
		Label a contour plot.
		
		Adds labels to line contours in this `.ContourSet` (which inherits from
		this mixin class).
		
		Parameters
		----------
		levels : array-like, optional
		    A list of level values, that should be labeled. The list must be
		    a subset of ``cs.levels``. If not given, all levels are labeled.
		
		fontsize : str or float, default: :rc:`font.size`
		    Size in points or relative size e.g., 'smaller', 'x-large'.
		    See `.Text.set_size` for accepted string values.
		
		colors : color or colors or None, default: None
		    The label colors:
		
		    - If *None*, the color of each label matches the color of
		      the corresponding contour.
		
		    - If one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color.
		
		    - If a tuple of colors (string, float, rgb, etc), different labels
		      will be plotted in different colors in the order specified.
		
		inline : bool, default: True
		    If ``True`` the underlying contour is removed where the label is
		    placed.
		
		inline_spacing : float, default: 5
		    Space in pixels to leave on each side of label when placing inline.
		
		    This spacing will be exact for labels at locations where the
		    contour is straight, less so for labels on curved contours.
		
		fmt : `.Formatter` or str or callable or dict, optional
		    How the levels are formatted:
		
		    - If a `.Formatter`, it is used to format all levels at once, using
		      its `.Formatter.format_ticks` method.
		    - If a str, it is interpreted as a %-style format string.
		    - If a callable, it is called with one level at a time and should
		      return the corresponding label.
		    - If a dict, it should directly map levels to labels.
		
		    The default is to use a standard `.ScalarFormatter`.
		
		manual : bool or iterable, default: False
		    If ``True``, contour labels will be placed manually using
		    mouse clicks. Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels. The third
		    button can be used to remove the last label added, but
		    only if labels are not inline. Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can also be an iterable object of (x, y) tuples.
		    Contour labels will be created as if mouse is clicked at each
		    (x, y) position.
		
		rightside_up : bool, default: True
		    If ``True``, label rotations will always be plus
		    or minus 90 degrees from level.
		
		use_clabeltext : bool, default: False
		    If ``True``, `.ClabelText` class (instead of `.Text`) is used to
		    create labels. `ClabelText` recalculates rotation angles
		    of texts during the drawing time, therefore this can be used if
		    aspect of the axes changes.
		
		zorder : float or None, default: ``(2 + contour.get_zorder())``
		    zorder of the contour labels.
		
		Returns
		-------
		labels
		    A list of `.Text` instances for the labels.
	**/
	public function clabel(?levels:Dynamic, ?fontsize:Dynamic, ?_inline:Dynamic, ?inline_spacing:Dynamic, ?fmt:Dynamic, ?colors:Dynamic, ?use_clabeltext:Dynamic, ?manual:Dynamic, ?rightside_up:Dynamic, ?zorder:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return x, y, and the index of a label location.
		
		Labels are plotted at a location with the smallest
		deviation of the contour from a straight line
		unless there is another label nearby, in which case
		the next best place on the contour is picked up.
		If all such candidates are rejected, the beginning
		of the contour is chosen.
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function get_label_coords(distances:Dynamic, XX:Dynamic, YY:Dynamic, ysize:Dynamic, lw:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return the width of the label in points.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	public function get_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		Get the text of the label.
	**/
	public function get_text(lev:Dynamic, fmt:Dynamic):Dynamic;
	public function labels(_inline:Dynamic, inline_spacing:Dynamic):Dynamic;
	/**
		Find good place to draw a label (relatively flat part of the contour).
	**/
	public function locate_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		Defaults to removing last label, but any index can be supplied
	**/
	public function pop_label(?index:Dynamic):Dynamic;
	/**
		Return whether a contour is long enough to hold a label.
	**/
	public function print_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		Set the label properties - color, fontsize, text.
	**/
	public function set_label_props(label:Dynamic, text:Dynamic, color:Dynamic):Dynamic;
	/**
		Return whether a label is already near this location.
	**/
	public function too_close(x:Dynamic, y:Dynamic, lw:Dynamic):Dynamic;
}