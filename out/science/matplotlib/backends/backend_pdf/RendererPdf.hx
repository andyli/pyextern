/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "RendererPdf") extern class RendererPdf {
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
	public function ___init__(file:Dynamic, image_dpi:Dynamic, height:Dynamic, width:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(file:Dynamic, image_dpi:Dynamic, height:Dynamic, width:Dynamic):Void;
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
	static public var _afm_font_dir : Dynamic;
	/**
		Context manager to temporary disable drawing.
		
		This is used for getting the drawn size of Artists.  This lets us
		run the draw process to update any Python state but does not pay the
		cost of the draw_XYZ calls on the canvas.
	**/
	public function _draw_disabled():Dynamic;
	/**
		Draw the text by converting them to paths using textpath module.
		
		Parameters
		----------
		prop : `matplotlib.font_manager.FontProperties`
		    The font property.
		s : str
		    The text to be converted.
		usetex : bool
		    Whether to use usetex mode.
		ismath : bool or "TeX"
		    If True, use mathtext parser. If "TeX", use *usetex* mode.
	**/
	public function _draw_text_as_path(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ismath:Dynamic):Dynamic;
	/**
		Draw a multibyte character from a Type 3 font as an XObject.
	**/
	public function _draw_xobject_glyph(font:Dynamic, fontsize:Dynamic, glyph_idx:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	public function _get_font_afm(prop:Dynamic):Dynamic;
	public function _get_font_ttf(prop:Dynamic):Dynamic;
	/**
		Return the text path and transform.
		
		Parameters
		----------
		prop : `matplotlib.font_manager.FontProperties`
		    The font property.
		s : str
		    The text to be converted.
		ismath : bool or "TeX"
		    If True, use mathtext parser. If "TeX", use *usetex* mode.
	**/
	public function _get_text_path_transform(x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ismath:Dynamic):Dynamic;
	/**
		Helper method (along with :meth:`_iter_collection_raw_paths`) to
		implement :meth:`draw_path_collection` in a space-efficient manner.
		
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
		Helper method (along with :meth:`_iter_collection`) to implement
		:meth:`draw_path_collection` in a space-efficient manner.
		
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
	public function _setup_textpos(x:Dynamic, y:Dynamic, angle:Dynamic, ?oldx:Dynamic, ?oldy:Dynamic, ?oldangle:Dynamic):Dynamic;
	static public var _use_afm_rc_name : Dynamic;
	public function check_gc(gc:Dynamic, ?fillcolor:Dynamic):Dynamic;
	/**
		Close a grouping element with label *s*.
		
		Only used by the SVG renderer.
	**/
	public function close_group(s:Dynamic):Dynamic;
	/**
		Draw a Gouraud-shaded triangle.
		
		Parameters
		----------
		gc : `.GraphicsContextBase`
		    The graphics context.
		points : (3, 2) array-like
		    Array of (x, y) points for the triangle.
		colors : (3, 4) array-like
		    RGBA colors for each point of the triangle.
		transform : `matplotlib.transforms.Transform`
		    An affine transform to apply to the points.
	**/
	public function draw_gouraud_triangle(gc:Dynamic, points:Dynamic, colors:Dynamic, trans:Dynamic):Dynamic;
	/**
		Draw a series of Gouraud triangles.
		
		Parameters
		----------
		points : (N, 3, 2) array-like
		    Array of *N* (x, y) points for the triangles.
		colors : (N, 3, 4) array-like
		    Array of *N* RGBA colors for each point of the triangles.
		transform : `matplotlib.transforms.Transform`
		    An affine transform to apply to the points.
	**/
	public function draw_gouraud_triangles(gc:Dynamic, points:Dynamic, colors:Dynamic, trans:Dynamic):Dynamic;
	/**
		Draw an RGBA image.
		
		Parameters
		----------
		gc : `.GraphicsContextBase`
		    A graphics context with clipping information.
		
		x : scalar
		    The distance in physical units (i.e., dots or pixels) from the left
		    hand side of the canvas.
		
		y : scalar
		    The distance in physical units (i.e., dots or pixels) from the
		    bottom side of the canvas.
		
		im : (N, M, 4) array-like of np.uint8
		    An array of RGBA pixels.
		
		transform : `matplotlib.transforms.Affine2DBase`
		    If and only if the concrete backend is written such that
		    :meth:`option_scale_image` returns ``True``, an affine
		    transformation (i.e., an `.Affine2DBase`) *may* be passed to
		    :meth:`draw_image`.  The translation vector of the transformation
		    is given in physical units (i.e., dots or pixels). Note that
		    the transformation does not override *x* and *y*, and has to be
		    applied *before* translating the result by *x* and *y* (this can
		    be accomplished by adding *x* and *y* to the translation vector
		    defined by *transform*).
	**/
	public function draw_image(gc:Dynamic, x:Dynamic, y:Dynamic, im:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Draw a marker at each of *path*'s vertices (excluding control points).
		
		This provides a fallback implementation of draw_markers that
		makes multiple calls to :meth:`draw_path`.  Some backends may
		want to override this method in order to draw the marker only
		once and reuse it multiple times.
		
		Parameters
		----------
		gc : `.GraphicsContextBase`
		    The graphics context.
		marker_trans : `matplotlib.transforms.Transform`
		    An affine transform applied to the marker.
		trans : `matplotlib.transforms.Transform`
		    An affine transform applied to the path.
	**/
	public function draw_markers(gc:Dynamic, marker_path:Dynamic, marker_trans:Dynamic, path:Dynamic, trans:Dynamic, ?rgbFace:Dynamic):Dynamic;
	public function draw_mathtext(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic):Dynamic;
	/**
		Draw a `~.path.Path` instance using the given affine transform.
	**/
	public function draw_path(gc:Dynamic, path:Dynamic, transform:Dynamic, ?rgbFace:Dynamic):Dynamic;
	/**
		Draw a collection of paths selecting drawing properties from
		the lists *facecolors*, *edgecolors*, *linewidths*,
		*linestyles* and *antialiaseds*. *offsets* is a list of
		offsets to apply to each of the paths.  The offsets in
		*offsets* are first transformed by *offsetTrans* before being
		applied.
		
		*offset_position* is unused now, but the argument is kept for
		backwards compatibility.
		
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
		Fallback implementation of :meth:`draw_quad_mesh` that generates paths
		and then calls :meth:`draw_path_collection`.
	**/
	public function draw_quad_mesh(gc:Dynamic, master_transform:Dynamic, meshWidth:Dynamic, meshHeight:Dynamic, coordinates:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, antialiased:Dynamic, edgecolors:Dynamic):Dynamic;
	/**
		        
	**/
	public function draw_tex(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?mtext:Dynamic):Dynamic;
	/**
		Draw the text instance.
		
		Parameters
		----------
		gc : `.GraphicsContextBase`
		    The graphics context.
		x : float
		    The x location of the text in display coords.
		y : float
		    The y location of the text baseline in display coords.
		s : str
		    The text string.
		prop : `matplotlib.font_manager.FontProperties`
		    The font properties.
		angle : float
		    The rotation angle in degrees anti-clockwise.
		mtext : `matplotlib.text.Text`
		    The original text object to be rendered.
		
		Notes
		-----
		**Note for backend implementers:**
		
		When you are trying to determine if you have gotten your bounding box
		right (which is what enables the text layout/alignment to work
		properly), it helps to change the line in text.py::
		
		    if 0: bbox_artist(self, renderer)
		
		to if 1, and then the actual bounding box will be plotted along with
		your text.
	**/
	public function draw_text(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic):Dynamic;
	public function encode_string(s:Dynamic, fonttype:Dynamic):Dynamic;
	public function finalize():Dynamic;
	/**
		Return whether y values increase from top to bottom.
		
		Note that this only affects drawing of texts and images.
	**/
	public function flipy():Dynamic;
	/**
		Return the canvas width and height in display coords.
	**/
	public function get_canvas_width_height():Dynamic;
	/**
		Get the factor by which to magnify images passed to :meth:`draw_image`.
		Allows a backend to have images at a different resolution to other
		artists.
	**/
	public function get_image_magnification():Dynamic;
	/**
		Return the `.TexManager` instance.
	**/
	public function get_texmanager():Dynamic;
	/**
		Get the width, height, and descent (offset from the bottom
		to the baseline), in display coords, of the string *s* with
		`.FontProperties` *prop*.
	**/
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic):Dynamic;
	public var mathtext_parser : Dynamic;
	/**
		Return an instance of a `.GraphicsContextBase`.
	**/
	public function new_gc():Dynamic;
	/**
		Open a grouping element with label *s* and *gid* (if set) as id.
		
		Only used by the SVG renderer.
	**/
	public function open_group(s:Dynamic, ?gid:Dynamic):Dynamic;
	/**
		Return whether image composition by Matplotlib should be skipped.
		
		Raster backends should usually return False (letting the C-level
		rasterizer take care of image composition); vector backends should
		usually return ``not rcParams["image.composite_image"]``.
	**/
	public function option_image_nocomposite():Dynamic;
	/**
		Return whether arbitrary affine transformations in :meth:`draw_image`
		are supported (True for most vector backends).
	**/
	public function option_scale_image():Dynamic;
	/**
		Convert points to display units.
		
		You need to override this function (unless your backend
		doesn't have a dpi, e.g., postscript or svg).  Some imaging
		systems assume some value for pixels per inch::
		
		    points to pixels = points * pixels_per_inch/72 * dpi/72
		
		Parameters
		----------
		points : float or array-like
		    a float or a numpy array of float
		
		Returns
		-------
		Points converted to pixels
	**/
	public function points_to_pixels(points:Dynamic):Dynamic;
	/**
		Switch to a temporary renderer for image filtering effects.
		
		Currently only supported by the agg renderer.
	**/
	public function start_filter():Dynamic;
	/**
		Switch to the raster renderer.
		
		Used by `.MixedModeRenderer`.
	**/
	public function start_rasterizing():Dynamic;
	/**
		Switch back to the original renderer.  The contents of the temporary
		renderer is processed with the *filter_func* and is drawn on the
		original renderer as an image.
		
		Currently only supported by the agg renderer.
	**/
	public function stop_filter(filter_func:Dynamic):Dynamic;
	/**
		Switch back to the vector renderer and draw the contents of the raster
		renderer as an image on the vector renderer.
		
		Used by `.MixedModeRenderer`.
	**/
	public function stop_rasterizing():Dynamic;
}