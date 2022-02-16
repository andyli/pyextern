/* This file is generated, do not edit! */
package matplotlib.backends.backend_template;
@:pythonImport("matplotlib.backends.backend_template", "GraphicsContextTemplate") extern class GraphicsContextTemplate {
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
	/**
		Copy properties from *gc* to self.
	**/
	public function copy_properties(gc:Dynamic):Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends.
	**/
	public function get_alpha():Dynamic;
	/**
		Return whether the object should try to do antialiased rendering.
	**/
	public function get_antialiased():Dynamic;
	/**
		Return the `.CapStyle`.
	**/
	public function get_capstyle():Dynamic;
	/**
		Return the clip path in the form (path, transform), where path
		is a `~.path.Path` instance, and transform is
		an affine transform to apply to the path before clipping.
	**/
	public function get_clip_path():Dynamic;
	/**
		Return the clip rectangle as a `~matplotlib.transforms.Bbox` instance.
	**/
	public function get_clip_rectangle():Dynamic;
	/**
		Return the dash style as an (offset, dash-list) pair.
		
		The dash list is a even-length list that gives the ink on, ink off in
		points.  See p. 107 of to PostScript `blue book`_ for more info.
		
		Default value is (None, None).
		
		.. _blue book: https://www-cdf.fnal.gov/offline/PostScript/BLUEBOOK.PDF
	**/
	public function get_dashes():Dynamic;
	/**
		Return whether the value given by get_alpha() should be used to
		override any other alpha-channel values.
	**/
	public function get_forced_alpha():Dynamic;
	/**
		Return the object identifier if one is set, None otherwise.
	**/
	public function get_gid():Dynamic;
	/**
		Get the current hatch style.
	**/
	public function get_hatch():Dynamic;
	/**
		Get the hatch color.
	**/
	public function get_hatch_color():Dynamic;
	/**
		Get the hatch linewidth.
	**/
	public function get_hatch_linewidth():Dynamic;
	/**
		Return a `.Path` for the current hatch.
	**/
	public function get_hatch_path(?density:Dynamic):Dynamic;
	/**
		Return the `.JoinStyle`.
	**/
	public function get_joinstyle():Dynamic;
	/**
		Return the line width in points.
	**/
	public function get_linewidth():Dynamic;
	/**
		Return a tuple of three or four floats from 0-1.
	**/
	public function get_rgb():Dynamic;
	/**
		Return the sketch parameters for the artist.
		
		Returns
		-------
		tuple or `None`
		
		    A 3-tuple with the following elements:
		
		    * ``scale``: The amplitude of the wiggle perpendicular to the
		      source line.
		    * ``length``: The length of the wiggle along the line.
		    * ``randomness``: The scale factor by which the length is
		      shrunken or expanded.
		
		    May return `None` if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Return the snap setting, which can be:
		
		* True: snap vertices to the nearest pixel center
		* False: leave vertices as-is
		* None: (auto) If the path contains only rectilinear line segments,
		  round to the nearest pixel center
	**/
	public function get_snap():Dynamic;
	/**
		Return a url if one is set, None otherwise.
	**/
	public function get_url():Dynamic;
	/**
		Restore the graphics context from the stack - needed only
		for backends that save graphics contexts on a stack.
	**/
	public function restore():Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		If ``alpha=None`` (the default), the alpha components of the
		foreground and fill colors will be used to set their respective
		transparencies (where applicable); otherwise, ``alpha`` will override
		them.
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set whether object should be drawn with antialiased rendering.
	**/
	public function set_antialiased(b:Dynamic):Dynamic;
	/**
		Set how to draw endpoints of lines.
		
		Parameters
		----------
		cs : `.CapStyle` or {'butt', 'projecting', 'round'}
	**/
	public function set_capstyle(cs:Dynamic):Dynamic;
	/**
		Set the clip path to a `.TransformedPath` or None.
	**/
	public function set_clip_path(path:Dynamic):Dynamic;
	/**
		Set the clip rectangle to a `.Bbox` or None.
	**/
	public function set_clip_rectangle(rectangle:Dynamic):Dynamic;
	/**
		Set the dash style for the gc.
		
		Parameters
		----------
		dash_offset : float
		    The offset (usually 0).
		dash_list : array-like or None
		    The on-off sequence as points.  None specifies a solid line.
		
		Notes
		-----
		See p. 107 of to PostScript `blue book`_ for more info.
		
		.. _blue book: https://www-cdf.fnal.gov/offline/PostScript/BLUEBOOK.PDF
	**/
	public function set_dashes(dash_offset:Dynamic, dash_list:Dynamic):Dynamic;
	/**
		Set the foreground color.
		
		Parameters
		----------
		fg : color
		isRGBA : bool
		    If *fg* is known to be an ``(r, g, b, a)`` tuple, *isRGBA* can be
		    set to True to improve performance.
	**/
	public function set_foreground(fg:Dynamic, ?isRGBA:Dynamic):Dynamic;
	/**
		Set the id.
	**/
	public function set_gid(id:Dynamic):Dynamic;
	/**
		Set the hatch style (for fills).
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
	/**
		Set the hatch color.
	**/
	public function set_hatch_color(hatch_color:Dynamic):Dynamic;
	/**
		Set how to draw connections between line segments.
		
		Parameters
		----------
		js : `.JoinStyle` or {'miter', 'round', 'bevel'}
	**/
	public function set_joinstyle(js:Dynamic):Dynamic;
	/**
		Set the linewidth in points.
	**/
	public function set_linewidth(w:Dynamic):Dynamic;
	/**
		Set the sketch parameters.
		
		Parameters
		----------
		scale : float, optional
		    The amplitude of the wiggle perpendicular to the source line, in
		    pixels.  If scale is `None`, or not provided, no sketch filter will
		    be provided.
		length : float, default: 128
		    The length of the wiggle along the line, in pixels.
		randomness : float, default: 16
		    The scale factor by which the length is shrunken or expanded.
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Set the snap setting which may be:
		
		* True: snap vertices to the nearest pixel center
		* False: leave vertices as-is
		* None: (auto) If the path contains only rectilinear line segments,
		  round to the nearest pixel center
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the url for links in compatible backends.
	**/
	public function set_url(url:Dynamic):Dynamic;
}