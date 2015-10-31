/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "GraphicsContextPdf") extern class GraphicsContextPdf {
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
	public function ___init__(file:Dynamic):Dynamic;
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
	public function alpha_cmd(alpha:Dynamic, forced:Dynamic, effective_alphas:Dynamic):Dynamic;
	public function capstyle_cmd(style:Dynamic):Dynamic;
	static public var capstyles : Dynamic;
	/**
		Set clip rectangle. Calls self.pop() and self.push().
	**/
	public function clip_cmd(cliprect:Dynamic, clippath:Dynamic):Dynamic;
	static public var commands : Dynamic;
	/**
		Copy properties of other into self.
	**/
	public function copy_properties(other:Dynamic):Dynamic;
	public function dash_cmd(dashes:Dynamic):Dynamic;
	static public var dashd : Dynamic;
	/**
		Copy properties of other into self and return PDF commands
		needed to transform self into other.
	**/
	public function delta(other:Dynamic):Dynamic;
	/**
		Predicate: does the path need to be filled?
		
		An optional argument can be used to specify an alternative
		_fillcolor, as needed by RendererPdf.draw_markers.
	**/
	public function fill(args:Dynamic):Dynamic;
	public function fillcolor_cmd(rgb:Dynamic):Dynamic;
	/**
		Make sure every pushed graphics state is popped.
	**/
	public function finalize():Dynamic;
	/**
		Return the alpha value used for blending - not supported on
		all backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return true if the object should try to do antialiased rendering
	**/
	public function get_antialiased():Dynamic;
	/**
		Return the capstyle as a string in ('butt', 'round', 'projecting')
	**/
	public function get_capstyle():Dynamic;
	/**
		Return the clip path in the form (path, transform), where path
		is a :class:`~matplotlib.path.Path` instance, and transform is
		an affine transform to apply to the path before clipping.
	**/
	public function get_clip_path():Dynamic;
	/**
		Return the clip rectangle as a :class:`~matplotlib.transforms.Bbox`
		instance
	**/
	public function get_clip_rectangle():Dynamic;
	/**
		Return the dash information as an offset dashlist tuple.
		
		The dash list is a even size list that gives the ink on, ink
		off in pixels.
		
		See p107 of to PostScript `BLUEBOOK
		<http://www-cdf.fnal.gov/offline/PostScript/BLUEBOOK.PDF>`_
		for more info.
		
		Default value is None
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
		Gets the current hatch style
	**/
	public function get_hatch():Dynamic;
	/**
		Returns a Path for the current hatch.
	**/
	public function get_hatch_path(?density:Dynamic):Dynamic;
	/**
		Return the line join style as one of ('miter', 'round', 'bevel')
	**/
	public function get_joinstyle():Dynamic;
	/**
		Return the linestyle: one of ('solid', 'dashed', 'dashdot',
		'dotted').
	**/
	public function get_linestyle(style:Dynamic):Dynamic;
	/**
		Return the line width in points as a scalar
	**/
	public function get_linewidth():Dynamic;
	/**
		returns a tuple of three or four floats from 0-1.
	**/
	public function get_rgb():Dynamic;
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
		returns the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
	**/
	public function get_snap():Dynamic;
	/**
		returns a url if one is set, None otherwise
	**/
	public function get_url():Dynamic;
	public function hatch_cmd(hatch:Dynamic):Dynamic;
	public function joinstyle_cmd(style:Dynamic):Dynamic;
	static public var joinstyles : Dynamic;
	public function linewidth_cmd(width:Dynamic):Dynamic;
	/**
		Return the appropriate pdf operator to cause the path to be
		stroked, filled, or both.
	**/
	public function paint():Dynamic;
	public function pop():Dynamic;
	public function push():Dynamic;
	/**
		Restore the graphics context from the stack - needed only
		for backends that save graphics contexts on a stack
	**/
	public function restore():Dynamic;
	public function rgb_cmd(rgb:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		If ``alpha=None`` (the default), the alpha components of the
		foreground and fill colors will be used to set their respective
		transparencies (where applicable); otherwise, ``alpha`` will override
		them.
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		True if object should be drawn with antialiased rendering
	**/
	public function set_antialiased(b:Dynamic):Dynamic;
	/**
		Set the capstyle as a string in ('butt', 'round', 'projecting')
	**/
	public function set_capstyle(cs:Dynamic):Dynamic;
	/**
		Set the clip path and transformation.  Path should be a
		:class:`~matplotlib.transforms.TransformedPath` instance.
	**/
	public function set_clip_path(path:Dynamic):Dynamic;
	/**
		Set the clip rectangle with sequence (left, bottom, width, height)
	**/
	public function set_clip_rectangle(rectangle:Dynamic):Dynamic;
	/**
		Set the dash style for the gc.
		
		*dash_offset*
		    is the offset (usually 0).
		
		*dash_list*
		    specifies the on-off sequence as points.
		    ``(None, None)`` specifies a solid line
	**/
	public function set_dashes(dash_offset:Dynamic, dash_list:Dynamic):Dynamic;
	/**
		Set the foreground color.  fg can be a MATLAB format string, a
		html hex color string, an rgb or rgba unit tuple, or a float between 0
		and 1.  In the latter case, grayscale is used.
		
		If you know fg is rgba, set ``isRGBA=True`` for efficiency.
	**/
	public function set_foreground(fg:Dynamic, ?isRGBA:Dynamic):Dynamic;
	/**
		Sets the id.
	**/
	public function set_gid(id:Dynamic):Dynamic;
	/**
		Set the foreground color to be a gray level with *frac*
	**/
	public function set_graylevel(frac:Dynamic):Dynamic;
	/**
		Sets the hatch style for filling
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
	/**
		Set the join style to be one of ('miter', 'round', 'bevel')
	**/
	public function set_joinstyle(js:Dynamic):Dynamic;
	/**
		Set the linestyle to be one of ('solid', 'dashed', 'dashdot',
		'dotted'). One may specify customized dash styles by providing
		a tuple of (offset, dash pairs). For example, the predefiend
		linestyles have following values.:
		
		 'dashed'  : (0, (6.0, 6.0)),
		 'dashdot' : (0, (3.0, 5.0, 1.0, 5.0)),
		 'dotted'  : (0, (1.0, 3.0)),
	**/
	public function set_linestyle(style:Dynamic):Dynamic;
	/**
		Set the linewidth in points
	**/
	public function set_linewidth(w:Dynamic):Dynamic;
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
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Sets the url for links in compatible backends
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Predicate: does the path need to be stroked (its outline drawn)?
		This tests for the various conditions that disable stroking
		the path, in which case it would presumably be filled.
	**/
	public function stroke():Dynamic;
}