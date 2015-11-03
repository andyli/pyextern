/* This file is generated, do not edit! */
package matplotlib.backends.backend_agg;
@:pythonImport("matplotlib.backends.backend_agg", "RendererAgg") extern class RendererAgg {
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
	public function ___init__(width:Dynamic, height:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(width:Dynamic, height:Dynamic, dpi:Dynamic):Void;
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
	static public var _fontd : Dynamic;
	/**
		Get the font for text instance t, cacheing for efficiency
	**/
	public function _get_agg_font(prop:Dynamic):Dynamic;
	public function _get_hinting_flag():Dynamic;
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
	public function _update_methods():Dynamic;
	public function buffer_rgba():Dynamic;
	public function clear():Dynamic;
	/**
		Close a grouping element with label *s*
		Is only currently used by :mod:`~matplotlib.backends.backend_svg`
	**/
	public function close_group(s:Dynamic):Dynamic;
	static public var debug : Dynamic;
	/**
		Draw a Gouraud-shaded triangle.
		
		*points* is a 3x2 array of (x, y) points for the triangle.
		
		*colors* is a 3x4 array of RGBA colors for each point of the
		triangle.
		
		*transform* is an affine transform to apply to the points.
	**/
	public function draw_gouraud_triangle(gc:Dynamic, points:Dynamic, colors:Dynamic, transform:Dynamic):Dynamic;
	/**
		Draws a series of Gouraud triangles.
		
		*points* is a Nx3x2 array of (x, y) points for the trianglex.
		
		*colors* is a Nx3x4 array of RGBA colors for each point of the
		triangles.
		
		*transform* is an affine transform to apply to the points.
	**/
	public function draw_gouraud_triangles(gc:Dynamic, triangles_array:Dynamic, colors_array:Dynamic, transform:Dynamic):Dynamic;
	/**
		Draw the image instance into the current axes;
		
		*gc*
		    a GraphicsContext containing clipping information
		
		*x*
		    is the distance in pixels from the left hand side of the canvas.
		
		*y*
		    the distance from the origin.  That is, if origin is
		    upper, y is the distance from top.  If origin is lower, y
		    is the distance from bottom
		
		*im*
		    the :class:`matplotlib._image.Image` instance
	**/
	public function draw_image(gc:Dynamic, x:Dynamic, y:Dynamic, im:Dynamic):Dynamic;
	/**
		Draws a marker at each of the vertices in path.  This includes
		all vertices, including control points on curves.  To avoid
		that behavior, those vertices should be removed before calling
		this function.
		
		*gc*
		    the :class:`GraphicsContextBase` instance
		
		*marker_trans*
		    is an affine transform applied to the marker.
		
		*trans*
		     is an affine transform applied to the path.
		
		This provides a fallback implementation of draw_markers that
		makes multiple calls to :meth:`draw_path`.  Some backends may
		want to override this method in order to draw the marker only
		once and reuse it multiple times.
	**/
	public function draw_markers(?kl:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw the math text using matplotlib.mathtext
	**/
	public function draw_mathtext(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic):Dynamic;
	/**
		Draw the path
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
	public function draw_path_collection(?kl:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		This provides a fallback implementation of
		:meth:`draw_quad_mesh` that generates paths and then calls
		:meth:`draw_path_collection`.
	**/
	public function draw_quad_mesh(gc:Dynamic, master_transform:Dynamic, meshWidth:Dynamic, meshHeight:Dynamic, coordinates:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, antialiased:Dynamic, edgecolors:Dynamic):Dynamic;
	/**
		        
	**/
	public function draw_tex(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic):Dynamic;
	/**
		Render the text
	**/
	public function draw_text(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic):Dynamic;
	/**
		Return true if y small numbers are top for renderer Is used
		for drawing text (:mod:`matplotlib.text`) and images
		(:mod:`matplotlib.image`) only
	**/
	public function flipy():Dynamic;
	/**
		return the canvas width and height in display coords
	**/
	public function get_canvas_width_height():Dynamic;
	/**
		Get the factor by which to magnify images passed to :meth:`draw_image`.
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
		
		# passing rgb is a little hack to make caching in the
		# texmanager more efficient.  It is not meant to be used
		# outside the backend
	**/
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic):Dynamic;
	static public var lock : Dynamic;
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
		override this method for renderers that do not necessarily always
		want to rescale and composite raster images. (like SVG, PDF, or PS)
	**/
	public function option_image_nocomposite():Dynamic;
	/**
		agg backend support arbitrary scaling of image.
	**/
	public function option_scale_image():Dynamic;
	/**
		convert point measures to pixes using dpi and the pixels per
		inch of the display
	**/
	public function points_to_pixels(points:Dynamic):Dynamic;
	/**
		Restore the saved region. If bbox (instance of BboxBase, or
		its extents) is given, only the region specified by the bbox
		will be restored. *xy* (a tuple of two floasts) optionally
		specifies the new position (the LLC of the original region,
		not the LLC of the bbox) where the region will be restored.
		
		>>> region = renderer.copy_from_bbox()
		>>> x1, y1, x2, y2 = region.get_extents()
		>>> renderer.restore_region(region, bbox=(x1+dx, y1, x2, y2),
		...                         xy=(x1-dx, y1))
	**/
	public function restore_region(region:Dynamic, ?bbox:Dynamic, ?xy:Dynamic):Dynamic;
	/**
		Start filtering. It simply create a new canvas (the old one is saved).
	**/
	public function start_filter():Dynamic;
	/**
		Used in MixedModeRenderer. Switch to the raster renderer.
	**/
	public function start_rasterizing():Dynamic;
	/**
		Save the plot in the current canvas as a image and apply
		the *post_processing* function.
		
		   def post_processing(image, dpi):
		     # ny, nx, depth = image.shape
		     # image (numpy array) has RGBA channels and has a depth of 4.
		     ...
		     # create a new_image (numpy array of 4 channels, size can be
		     # different). The resulting image may have offsets from
		     # lower-left corner of the original image
		     return new_image, offset_x, offset_y
		
		The saved renderer is restored and the returned image from
		post_processing is plotted (using draw_image) on it.
	**/
	public function stop_filter(post_processing:Dynamic):Dynamic;
	/**
		Used in MixedModeRenderer. Switch back to the vector renderer
		and draw the contents of the raster renderer as an image on
		the vector renderer.
	**/
	public function stop_rasterizing():Dynamic;
	public function strip_math(s:Dynamic):Dynamic;
	public function tostring_argb():Dynamic;
	public function tostring_rgb():Dynamic;
	public function tostring_rgba_minimized():Dynamic;
}