/* This file is generated, do not edit! */
package matplotlib.image;
@:pythonImport("matplotlib.image") extern class Image_Module {
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
	/**
		Draw a sorted list of artists, compositing images into a single
		image where possible.
		
		For internal matplotlib use only: It is here to reduce duplication
		between `Figure.draw` and `Axes.draw`, but otherwise should not be
		generally useful.
	**/
	static public function _draw_list_compositing_images(renderer:Dynamic, parent:Dynamic, dsu:Dynamic, ?suppress_composite:Dynamic):Dynamic;
	static public var _interpd_ : Dynamic;
	/**
		Convert an RGB image to RGBA, as required by the image resample C++
		extension.
	**/
	static public function _rgb_to_rgba(A:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Composite a number of RGBA images into one.  The images are
		composited in the order in which they appear in the `images` list.
		
		Parameters
		----------
		images : list of Images
		    Each must have a `make_image` method.  For each image,
		    `can_composite` should return `True`, though this is not
		    enforced by this function.  Each image must have a purely
		    affine transformation with no shear.
		
		renderer : RendererBase instance
		
		magnification : float
		    The additional magnification to apply for the renderer in use.
		
		Returns
		-------
		tuple : image, offset_x, offset_y
		    Returns the tuple:
		
		    - image: A numpy array of the same type as the input images.
		
		    - offset_x, offset_y: The offset of the image (left, bottom)
		      in the output figure.
	**/
	static public function composite_images(images:Dynamic, renderer:Dynamic, ?magnification:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		resample(input_array, output_array, matrix, interpolation=NEAREST, alpha=1.0, norm=0, radius=1)
		
		Resample input_array, blending it in-place into output_array, using an
		affine transformation.
		
		Parameters
		----------
		input_array : 2-d or 3-d Numpy array of float, double or uint8
		    If 2-d, the image is grayscale.  If 3-d, the image must be of size
		    4 in the last dimension and represents RGBA data.
		
		output_array : 2-d or 3-d Numpy array of float, double or uint8
		    The dtype and number of dimensions must match `input_array`.
		
		transform : matplotlib.transforms.Transform instance
		    The transformation from the input array to the output
		    array.
		
		interpolation : int, optional
		    The interpolation method.  Must be one of the following constants
		    defined in this module:
		
		      NEAREST (default), BILINEAR, BICUBIC, SPLINE16, SPLINE36,
		      HANNING, HAMMING, HERMITE, KAISER, QUADRIC, CATROM, GAUSSIAN,
		      BESSEL, MITCHELL, SINC, LANCZOS, BLACKMAN
		
		resample : bool, optional
		    When `True`, use a full resampling method.  When `False`, only
		    resample when the output image is larger than the input image.
		
		alpha : float, optional
		    The level of transparency to apply.  1.0 is completely opaque.
		    0.0 is completely transparent.
		
		norm : float, optional
		    The norm for the interpolation function.  Default is 0.
		
		radius: float, optional
		    The radius of the kernel, if method is SINC, LANCZOS or BLACKMAN.
		    Default is 1.
	**/
	static public function resample(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		make a thumbnail of image in *infile* with output filename
		*thumbfile*.
		
		  *infile* the image file -- must be PNG or Pillow-readable if you
		     have `Pillow <http://python-pillow.org/>`_ installed
		
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
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
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