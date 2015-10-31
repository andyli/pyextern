/* This file is generated, do not edit! */
package matplotlib.image;
@:pythonImport("matplotlib.image") extern class Image_Module {
	static public var ASPECT_FREE : Dynamic;
	static public var ASPECT_PRESERVE : Dynamic;
	static public var BESSEL : Dynamic;
	static public var BICUBIC : Dynamic;
	static public var BILINEAR : Dynamic;
	static public var BLACKMAN : Dynamic;
	static public var CATROM : Dynamic;
	static public var GAUSSIAN : Dynamic;
	static public var HAMMING : Dynamic;
	static public var HANNING : Dynamic;
	static public var HERMITE : Dynamic;
	static public var KAISER : Dynamic;
	static public var LANCZOS : Dynamic;
	static public var MITCHELL : Dynamic;
	static public var NEAREST : Dynamic;
	static public var QUADRIC : Dynamic;
	static public var SINC : Dynamic;
	static public var SPLINE16 : Dynamic;
	static public var SPLINE36 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _interpd_ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		from_images(numrows, numcols, seq)
		
		return an image instance with numrows, numcols from a seq of image
		instances using alpha blending.  seq is a list of (Image, ox, oy)
	**/
	static public function from_images(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fromarray(A, isoutput)
		
		Load the image from a numpy array
		By default this function fills the input buffer, which can subsequently
		be resampled using resize.  If isoutput=1, fill the output buffer.
		This is used to support raw pixel images w/o resampling
	**/
	static public function fromarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombuffer(buffer, width, height, isoutput)
		
		Load the image from a character buffer
		By default this function fills the input buffer, which can subsequently
		be resampled using resize.  If isoutput=1, fill the output buffer.
		This is used to support raw pixel images w/o resampling.
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombyte(A, isoutput)
		
		Load the image from a byte array.
		By default this function fills the input buffer, which can subsequently
		be resampled using resize.  If isoutput=1, fill the output buffer.
		This is used to support raw pixel images w/o resampling.
	**/
	static public function frombyte(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read an image from a file into an array.
		
		*fname* may be a string path, a valid URL, or a Python
		file-like object.  If using a file object, it must be opened in binary
		mode.
		
		If *format* is provided, will try to read file of that type,
		otherwise the format is deduced from the filename.  If nothing can
		be deduced, PNG is tried.
		
		Return value is a :class:`numpy.array`.  For grayscale images, the
		return array is MxN.  For RGB images, the return value is MxNx3.
		For RGBA images the return value is MxNx4.
		
		matplotlib can only read PNGs natively, but if `PIL
		<http://www.pythonware.com/products/pil/>`_ is installed, it will
		use it to load the image and return an array (if possible) which
		can be used with :func:`~matplotlib.pyplot.imshow`. Note, URL strings
		may not be compatible with PIL. Check the PIL documentation for more
		information.
	**/
	static public function imread(fname:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Save an array as in image file.
		
		The output formats available depend on the backend being used.
		
		Arguments:
		  *fname*:
		    A string containing a path to a filename, or a Python file-like object.
		    If *format* is *None* and *fname* is a string, the output
		    format is deduced from the extension of the filename.
		  *arr*:
		    An MxN (luminance), MxNx3 (RGB) or MxNx4 (RGBA) array.
		Keyword arguments:
		  *vmin* /*vmax*: [ None | scalar ]
		    *vmin* and *vmax* set the color scaling for the image by fixing the
		    values that map to the colormap color limits. If either *vmin*
		    or *vmax* is None, that limit is determined from the *arr*
		    min/max value.
		  *cmap*:
		    cmap is a colors.Colormap instance, e.g., cm.jet.
		    If None, default to the rc image.cmap value.
		  *format*:
		    One of the file extensions supported by the active
		    backend.  Most backends support png, pdf, ps, eps and svg.
		  *origin*
		    [ 'upper' | 'lower' ] Indicates where the [0,0] index of
		    the array is in the upper left or lower left corner of
		    the axes. Defaults to the rc image.origin value.
		  *dpi*
		    The DPI to store in the metadata of the file.  This does not affect the
		    resolution of the output image.
	**/
	static public function imsave(fname:Dynamic, arr:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?cmap:Dynamic, ?format:Dynamic, ?origin:Dynamic, ?dpi:Dynamic):Dynamic;
	static public var interpolations_names : Dynamic;
	/**
		pcolor(x, y, data, rows, cols, bounds)
		
		Generate a pseudo-color image from data on a non-uniform grid using
		nearest neighbour or linear interpolation.
		bounds = (x_min, x_max, y_min, y_max)
		interpolation = NEAREST or BILINEAR 
	**/
	static public function pcolor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pcolor2(x, y, data, rows, cols, bounds, bg)
		
		Generate a pseudo-color image from data on a non-uniform grid
		specified by its cell boundaries.
		bounds = (x_left, x_right, y_bot, y_top)
		bg = ndarray of 4 uint8 representing background rgba
	**/
	static public function pcolor2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load a PIL image and return it as a numpy array.  For grayscale
		images, the return array is MxN.  For RGB images, the return value
		is MxNx3.  For RGBA images the return value is MxNx4
	**/
	static public function pil_to_array(pilImage:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		make a thumbnail of image in *infile* with output filename
		*thumbfile*.
		
		  *infile* the image file -- must be PNG or Pillow-readable if you
		     have `Pillow <http://python-pillow.github.io/>`_ installed
		
		  *thumbfile*
		    the thumbnail filename
		
		  *scale*
		    the scale factor for the thumbnail
		
		  *interpolation*
		    the interpolation scheme used in the resampling
		
		
		  *preview*
		    if True, the default backend (presumably a user interface
		    backend) will be used which will cause a figure to be raised
		    if :func:`~matplotlib.pyplot.show` is called.  If it is False,
		    a pure image backend will be used depending on the extension,
		    'png'->FigureCanvasAgg, 'pdf'->FigureCanvasPdf,
		    'svg'->FigureCanvasSVG
		
		
		See examples/misc/image_thumbnail.py.
		
		.. htmlonly::
		
		    :ref:`misc-image_thumbnail`
		
		Return value is the figure instance containing the thumbnail
	**/
	static public function thumbnail(infile:Dynamic, thumbfile:Dynamic, ?scale:Dynamic, ?interpolation:Dynamic, ?preview:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Parse a URL into 6 components:
		<scheme>://<netloc>/<path>;<params>?<query>#<fragment>
		Return a 6-tuple: (scheme, netloc, path, params, query, fragment).
		Note that we don't break the components up in smaller bits
		(e.g. netloc is a single string) and we don't expand % escapes.
	**/
	static public function urlparse(url:Dynamic, ?scheme:Dynamic, ?allow_fragments:Dynamic):Dynamic;
}