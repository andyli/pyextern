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
		
		For internal Matplotlib use only: It is here to reduce duplication
		between `Figure.draw` and `Axes.draw`, but otherwise should not be
		generally useful.
	**/
	static public function _draw_list_compositing_images(renderer:Dynamic, parent:Dynamic, artists:Dynamic, ?suppress_composite:Dynamic):Dynamic;
	static public var _interpd_ : Dynamic;
	static public var _log : Dynamic;
	/**
		Convert a PIL `PNGImageFile` to a 0-1 float array.
	**/
	static public function _pil_png_to_float_array(pil_png:Dynamic):Dynamic;
	/**
		Convenience wrapper around `._image.resample` to resample *data* to
		*out_shape* (with a third dimension if *data* is RGBA) that takes care of
		allocating the output array and fetching the relevant properties from the
		Image object *image_obj*.
	**/
	static public function _resample(image_obj:Dynamic, data:Dynamic, out_shape:Dynamic, transform:Dynamic, ?resample:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Convert an RGB image to RGBA, as required by the image resample C++
		extension.
	**/
	static public function _rgb_to_rgba(A:Dynamic):Dynamic;
	/**
		Composite a number of RGBA images into one.  The images are
		composited in the order in which they appear in the *images* list.
		
		Parameters
		----------
		images : list of Images
		    Each must have a `make_image` method.  For each image,
		    `can_composite` should return `True`, though this is not
		    enforced by this function.  Each image must have a purely
		    affine transformation with no shear.
		
		renderer : `.RendererBase`
		
		magnification : float, default: 1
		    The additional magnification to apply for the renderer in use.
		
		Returns
		-------
		image : uint8 array (M, N, 4)
		    The composited RGBA image.
		offset_x, offset_y : float
		    The (left, bottom) offset where the composited image should be placed
		    in the output figure.
	**/
	static public function composite_images(images:Dynamic, renderer:Dynamic, ?magnification:Dynamic):Dynamic;
	/**
		Read an image from a file into an array.
		
		.. note::
		
		    This function exists for historical reasons.  It is recommended to
		    use `PIL.Image.open` instead for loading images.
		
		Parameters
		----------
		fname : str or file-like
		    The image file to read: a filename, a URL or a file-like object opened
		    in read-binary mode.
		
		    Passing a URL is deprecated.  Please open the URL
		    for reading and pass the result to Pillow, e.g. with
		    ``np.array(PIL.Image.open(urllib.request.urlopen(url)))``.
		format : str, optional
		    The image file format assumed for reading the data.  The image is
		    loaded as a PNG file if *format* is set to "png", if *fname* is a path
		    or opened file with a ".png" extension, or if it is an URL.  In all
		    other cases, *format* is ignored and the format is auto-detected by
		    `PIL.Image.open`.
		
		Returns
		-------
		`numpy.array`
		    The image data. The returned array has shape
		
		    - (M, N) for grayscale images.
		    - (M, N, 3) for RGB images.
		    - (M, N, 4) for RGBA images.
		
		    PNG images are returned as float arrays (0-1).  All other formats are
		    returned as int arrays, with a bit depth determined by the file's
		    contents.
	**/
	static public function imread(fname:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Save an array as an image file.
		
		Parameters
		----------
		fname : str or path-like or file-like
		    A path or a file-like object to store the image in.
		    If *format* is not set, then the output format is inferred from the
		    extension of *fname*, if any, and from :rc:`savefig.format` otherwise.
		    If *format* is set, it determines the output format.
		arr : array-like
		    The image data. The shape can be one of
		    MxN (luminance), MxNx3 (RGB) or MxNx4 (RGBA).
		vmin, vmax : float, optional
		    *vmin* and *vmax* set the color scaling for the image by fixing the
		    values that map to the colormap color limits. If either *vmin*
		    or *vmax* is None, that limit is determined from the *arr*
		    min/max value.
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    A Colormap instance or registered colormap name. The colormap
		    maps scalar data to colors. It is ignored for RGB(A) data.
		format : str, optional
		    The file format, e.g. 'png', 'pdf', 'svg', ...  The behavior when this
		    is unset is documented under *fname*.
		origin : {'upper', 'lower'}, default: :rc:`image.origin`
		    Indicates whether the ``(0, 0)`` index of the array is in the upper
		    left or lower left corner of the axes.
		dpi : float
		    The DPI to store in the metadata of the file.  This does not affect the
		    resolution of the output image.  Depending on file format, this may be
		    rounded to the nearest integer.
		metadata : dict, optional
		    Metadata in the image file.  The supported keys depend on the output
		    format, see the documentation of the respective backends for more
		    information.
		pil_kwargs : dict, optional
		    Keyword arguments passed to `PIL.Image.Image.save`.  If the 'pnginfo'
		    key is present, it completely overrides *metadata*, including the
		    default 'Software' key.
	**/
	static public function imsave(fname:Dynamic, arr:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?cmap:Dynamic, ?format:Dynamic, ?origin:Dynamic, ?dpi:Dynamic, ?metadata:Dynamic, ?pil_kwargs:Dynamic):Dynamic;
	static public var interpolations_names : Dynamic;
	/**
		Load a `PIL image`_ and return it as a numpy int array.
		
		.. _PIL image: https://pillow.readthedocs.io/en/latest/reference/Image.html
		
		Returns
		-------
		numpy.array
		
		    The array shape depends on the image type:
		
		    - (M, N) for grayscale images.
		    - (M, N, 3) for RGB images.
		    - (M, N, 4) for RGBA images.
	**/
	static public function pil_to_array(pilImage:Dynamic):Dynamic;
	/**
		resample(input_array, output_array, matrix, interpolation=NEAREST, alpha=1.0, norm=False, radius=1)
		
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
		
		norm : bool, optional
		    Whether to norm the interpolation function.  Default is `False`.
		
		radius: float, optional
		    The radius of the kernel, if method is SINC, LANCZOS or BLACKMAN.
		    Default is 1.
	**/
	static public function resample(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Make a thumbnail of image in *infile* with output filename *thumbfile*.
		
		See :doc:`/gallery/misc/image_thumbnail_sgskip`.
		
		Parameters
		----------
		infile : str or file-like
		    The image file. Matplotlib relies on Pillow_ for image reading, and
		    thus supports a wide range of file formats, including PNG, JPG, TIFF
		    and others.
		
		    .. _Pillow: https://python-pillow.org/
		
		thumbfile : str or file-like
		    The thumbnail filename.
		
		scale : float, default: 0.1
		    The scale factor for the thumbnail.
		
		interpolation : str, default: 'bilinear'
		    The interpolation scheme used in the resampling. See the
		    *interpolation* parameter of `~.Axes.imshow` for possible values.
		
		preview : bool, default: False
		    If True, the default backend (presumably a user interface
		    backend) will be used which will cause a figure to be raised if
		    `~matplotlib.pyplot.show` is called.  If it is False, the figure is
		    created using `.FigureCanvasBase` and the drawing backend is selected
		    as `.Figure.savefig` would normally do.
		
		Returns
		-------
		`~.figure.Figure`
		    The figure instance containing the thumbnail.
	**/
	static public function thumbnail(infile:Dynamic, thumbfile:Dynamic, ?scale:Dynamic, ?interpolation:Dynamic, ?preview:Dynamic):Dynamic;
}