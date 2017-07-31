/* This file is generated, do not edit! */
package matplotlib.backends.backend_ps;
@:pythonImport("matplotlib.backends.backend_ps", "RendererPS") extern class RendererPS {
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
		Although postscript itself is dpi independent, we need to
		imform the image code about a requested dpi to generate high
		res images and them scale them before embeddin them
	**/
	@:native("__init__")
	public function ___init__(width:Dynamic, height:Dynamic, pswriter:Dynamic, ?imagedpi:Dynamic):Dynamic;
	/**
		Although postscript itself is dpi independent, we need to
		imform the image code about a requested dpi to generate high
		res images and them scale them before embeddin them
	**/
	public function new(width:Dynamic, height:Dynamic, pswriter:Dynamic, ?imagedpi:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _convert_path(path:Dynamic, transform:Dynamic, ?clip:Dynamic, ?simplify:Dynamic):Dynamic;
	/**
		Emit the PostScript sniplet 'ps' with all the attributes from 'gc'
		applied.  'ps' must consist of PostScript commands to construct a path.
		
		The fill and/or stroke kwargs can be set to False if the
		'ps' string already includes filling and/or stroking, in
		which case _draw_ps is just supplying properties and
		clipping.
	**/
	public function _draw_ps(ps:Dynamic, gc:Dynamic, rgbFace:Dynamic, ?fill:Dynamic, ?stroke:Dynamic, ?command:Dynamic):Dynamic;
	/**
		draw the text by converting them to paths using textpath module.
		
		*prop*
		  font property
		
		*s*
		  text to be converted
		
		*usetex*
		  If True, use matplotlib usetex mode.
		
		*ismath*
		  If True, use mathtext parser. If "TeX", use *usetex* mode.
	**/
	public function _draw_text_as_path(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ismath:Dynamic):Dynamic;
	public function _get_clip_path(clippath:Dynamic, clippath_transform:Dynamic):Dynamic;
	public function _get_font_afm(prop:Dynamic):Dynamic;
	public function _get_font_ttf(prop:Dynamic):Dynamic;
	public function _get_image_h_w_bits_command(im:Dynamic):Dynamic;
	/**
		return the text path and transform
		
		*prop*
		  font property
		
		*s*
		  text to be converted
		
		*usetex*
		  If True, use matplotlib usetex mode.
		
		*ismath*
		  If True, use mathtext parser. If "TeX", use *usetex* mode.
	**/
	public function _get_text_path_transform(x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ismath:Dynamic):Dynamic;
	public function _hex_lines(s:Dynamic, ?chars_per_line:Dynamic):Dynamic;
	/**
		This is a helper method (along with
		:meth:`_iter_collection_raw_paths`) to make it easier to write
		a space-efficent :meth:`draw_path_collection` implementation in a
		backend.
		
		This method yields all of the path, offset and graphics
		context combinations to draw the path collection.  The caller
		should already have looped over the results of
		:meth:`_iter_collection_raw_paths` to draw this collection.
		
		The arguments should be the same as that passed into
		:meth:`draw_path_collection`, with the exception of
		*path_ids*, which is a list of arbitrary objects that the
		backend will use to reference one of the paths created in the
		:meth:`_iter_collection_raw_paths` stage.
		
		Each yielded result is of the form::
		
		   xo, yo, path_id, gc, rgbFace
		
		where *xo*, *yo* is an offset; *path_id* is one of the elements of
		*path_ids*; *gc* is a graphics context and *rgbFace* is a color to
		use for filling the path.
	**/
	public function _iter_collection(gc:Dynamic, master_transform:Dynamic, all_transforms:Dynamic, path_ids:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, edgecolors:Dynamic, linewidths:Dynamic, linestyles:Dynamic, antialiaseds:Dynamic, urls:Dynamic, offset_position:Dynamic):Dynamic;
	/**
		This is a helper method (along with :meth:`_iter_collection`) to make
		it easier to write a space-efficent :meth:`draw_path_collection`
		implementation in a backend.
		
		This method yields all of the base path/transform
		combinations, given a master transform, a list of paths and
		list of transforms.
		
		The arguments should be exactly what is passed in to
		:meth:`draw_path_collection`.
		
		The backend should take each yielded path and transform and
		create an object that can be referenced (reused) later.
	**/
	public function _iter_collection_raw_paths(master_transform:Dynamic, paths:Dynamic, all_transforms:Dynamic):Dynamic;
	/**
		Compute how many times each raw path object returned by
		_iter_collection_raw_paths would be used when calling
		_iter_collection. This is intended for the backend to decide
		on the tradeoff between using the paths in-line and storing
		them once and reusing. Rounds up in case the number of uses
		is not the same for every path.
	**/
	public function _iter_collection_uses_per_path(paths:Dynamic, all_transforms:Dynamic, offsets:Dynamic, facecolors:Dynamic, edgecolors:Dynamic):Dynamic;
	public function _rgb(rgba:Dynamic):Dynamic;
	static public var afmfontd : Dynamic;
	/**
		Close a grouping element with label *s*
		Is only currently used by :mod:`~matplotlib.backends.backend_svg`
	**/
	public function close_group(s:Dynamic):Dynamic;
	public function create_hatch(hatch:Dynamic):Dynamic;
	/**
		Draw a Gouraud-shaded triangle.
		
		*points* is a 3x2 array of (x, y) points for the triangle.
		
		*colors* is a 3x4 array of RGBA colors for each point of the
		triangle.
		
		*transform* is an affine transform to apply to the points.
	**/
	public function draw_gouraud_triangle(gc:Dynamic, points:Dynamic, colors:Dynamic, trans:Dynamic):Dynamic;
	/**
		Draws a series of Gouraud triangles.
		
		*points* is a Nx3x2 array of (x, y) points for the trianglex.
		
		*colors* is a Nx3x4 array of RGBA colors for each point of the
		triangles.
		
		*transform* is an affine transform to apply to the points.
	**/
	public function draw_gouraud_triangles(gc:Dynamic, points:Dynamic, colors:Dynamic, trans:Dynamic):Dynamic;
	/**
		Draw the Image instance into the current axes; x is the
		distance in pixels from the left hand side of the canvas and y
		is the distance from bottom
	**/
	public function draw_image(gc:Dynamic, x:Dynamic, y:Dynamic, im:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Draw the markers defined by path at each of the positions in x
		and y.  path coordinates are points, x and y coords will be
		transformed by the transform
	**/
	public function draw_markers(gc:Dynamic, marker_path:Dynamic, marker_trans:Dynamic, path:Dynamic, trans:Dynamic, ?rgbFace:Dynamic):Dynamic;
	/**
		Draw the math text using matplotlib.mathtext
	**/
	public function draw_mathtext(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic):Dynamic;
	/**
		Draws a Path instance using the given affine transform.
	**/
	public function draw_path(gc:Dynamic, path:Dynamic, transform:Dynamic, ?rgbFace:Dynamic):Dynamic;
	/**
		Draws a collection of paths selecting drawing properties from
		the lists *facecolors*, *edgecolors*, *linewidths*,
		*linestyles* and *antialiaseds*. *offsets* is a list of
		offsets to apply to each of the paths.  The offsets in
		*offsets* are first transformed by *offsetTrans* before being
		applied.  *offset_position* may be either "screen" or "data"
		depending on the space that the offsets are in.
		
		This provides a fallback implementation of
		:meth:`draw_path_collection` that makes multiple calls to
		:meth:`draw_path`.  Some backends may want to override this in
		order to render each set of path data only once, and then
		reference that path multiple times with the different offsets,
		colors, styles etc.  The generator methods
		:meth:`_iter_collection_raw_paths` and
		:meth:`_iter_collection` are provided to help with (and
		standardize) the implementation across backends.  It is highly
		recommended to use those generators, so that changes to the
		behavior of :meth:`draw_path_collection` can be made globally.
	**/
	public function draw_path_collection(gc:Dynamic, master_transform:Dynamic, paths:Dynamic, all_transforms:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, edgecolors:Dynamic, linewidths:Dynamic, linestyles:Dynamic, antialiaseds:Dynamic, urls:Dynamic, offset_position:Dynamic):Dynamic;
	/**
		This provides a fallback implementation of
		:meth:`draw_quad_mesh` that generates paths and then calls
		:meth:`draw_path_collection`.
	**/
	public function draw_quad_mesh(gc:Dynamic, master_transform:Dynamic, meshWidth:Dynamic, meshHeight:Dynamic, coordinates:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, antialiased:Dynamic, edgecolors:Dynamic):Dynamic;
	/**
		draw a Text instance
	**/
	public function draw_tex(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic):Dynamic;
	/**
		draw a Text instance
	**/
	public function draw_text(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic):Dynamic;
	/**
		return true if small y numbers are top for renderer
	**/
	public function flipy():Dynamic;
	/**
		return the canvas width and height in display coords
	**/
	public function get_canvas_width_height():Dynamic;
	/**
		Get the factor by which to magnify images passed to draw_image.
		Allows a backend to have images at a different resolution to other
		artists.
	**/
	public function get_image_magnification():Dynamic;
	/**
		return the :class:`matplotlib.texmanager.TexManager` instance
	**/
	public function get_texmanager():Dynamic;
	/**
		get the width and height in display coords of the string s
		with FontPropertry prop
	**/
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic):Dynamic;
	public function merge_used_characters(other:Dynamic):Dynamic;
	/**
		Return an instance of a :class:`GraphicsContextBase`
	**/
	public function new_gc():Dynamic;
	/**
		Open a grouping element with label *s*. If *gid* is given, use
		*gid* as the id of the group. Is only currently used by
		:mod:`~matplotlib.backends.backend_svg`.
	**/
	public function open_group(s:Dynamic, ?gid:Dynamic):Dynamic;
	/**
		return whether to generate a composite image from multiple images on
		a set of axes
	**/
	public function option_image_nocomposite():Dynamic;
	/**
		ps backend support arbitrary scaling of image.
	**/
	public function option_scale_image():Dynamic;
	/**
		Convert points to display units
		
		*points*
		    a float or a numpy array of float
		
		return points converted to pixels
		
		You need to override this function (unless your backend
		doesn't have a dpi, e.g., postscript or svg).  Some imaging
		systems assume some value for pixels per inch::
		
		    points to pixels = points * pixels_per_inch/72.0 * dpi/72.0
	**/
	public function points_to_pixels(points:Dynamic):Dynamic;
	public function set_color(r:Dynamic, g:Dynamic, b:Dynamic, ?store:Dynamic):Dynamic;
	public function set_font(fontname:Dynamic, fontsize:Dynamic, ?store:Dynamic):Dynamic;
	public function set_linecap(linecap:Dynamic, ?store:Dynamic):Dynamic;
	public function set_linedash(offset:Dynamic, seq:Dynamic, ?store:Dynamic):Dynamic;
	public function set_linejoin(linejoin:Dynamic, ?store:Dynamic):Dynamic;
	public function set_linewidth(linewidth:Dynamic, ?store:Dynamic):Dynamic;
	/**
		Used in AggRenderer. Switch to a temporary renderer for image
		filtering effects.
	**/
	public function start_filter():Dynamic;
	/**
		Used in MixedModeRenderer. Switch to the raster renderer.
	**/
	public function start_rasterizing():Dynamic;
	/**
		Used in AggRenderer. Switch back to the original renderer.
		The contents of the temporary renderer is processed with the
		*filter_func* and is drawn on the original renderer as an
		image.
	**/
	public function stop_filter(filter_func:Dynamic):Dynamic;
	/**
		Used in MixedModeRenderer. Switch back to the vector renderer
		and draw the contents of the raster renderer as an image on
		the vector renderer.
	**/
	public function stop_rasterizing():Dynamic;
	public function strip_math(s:Dynamic):Dynamic;
	/**
		Keeps track of which characters are required from
		each font.
	**/
	public function track_characters(font:Dynamic, s:Dynamic):Dynamic;
}