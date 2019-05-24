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
	static public function _draw_list_compositing_images(renderer:Dynamic, parent:Dynamic, artists:Dynamic, ?suppress_composite:Dynamic):Dynamic;
	static public var _interpd_ : Dynamic;
	static public var _log : Dynamic;
	/**
		Convert an RGB image to RGBA, as required by the image resample C++
		extension.
	**/
	static public function _rgb_to_rgba(A:Dynamic):Dynamic;
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
	/**
		Read an image from a file into an array.
		
		Parameters
		----------
		fname : str or file-like
		    The image file to read. This can be a filename, a URL or a Python
		    file-like object opened in read-binary mode.
		format : str, optional
		    The image file format assumed for reading the data. If not
		    given, the format is deduced from the filename.  If nothing can
		    be deduced, PNG is tried.
		
		Returns
		-------
		imagedata : :class:`numpy.array`
		    The image data. The returned array has shape
		
		    - (M, N) for grayscale images.
		    - (M, N, 3) for RGB images.
		    - (M, N, 4) for RGBA images.
		
		Notes
		-----
		Matplotlib can only read PNGs natively. Further image formats are
		supported via the optional dependency on Pillow. Note, URL strings
		are not compatible with Pillow. Check the `Pillow documentation`_
		for more information.
		
		.. _Pillow documentation: http://pillow.readthedocs.io/en/latest/
	**/
	static public function imread(fname:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Save an array as an image file.
		
		Parameters
		----------
		fname : str or PathLike file-like
		    A path or a Python file-like object to store the image in.
		    If *format* is not set, then the output format is inferred from the
		    extension of *fname*, if any, and from :rc:`savefig.format` otherwise.
		    If *format* is set, it determines the output format.
		arr : array-like
		    The image data. The shape can be one of
		    MxN (luminance), MxNx3 (RGB) or MxNx4 (RGBA).
		vmin, vmax : scalar, optional
		    *vmin* and *vmax* set the color scaling for the image by fixing the
		    values that map to the colormap color limits. If either *vmin*
		    or *vmax* is None, that limit is determined from the *arr*
		    min/max value.
		cmap : str or `~matplotlib.colors.Colormap`, optional
		    A Colormap instance or registered colormap name. The colormap
		    maps scalar data to colors. It is ignored for RGB(A) data.
		    Defaults to :rc:`image.cmap` ('viridis').
		format : str, optional
		    The file format, e.g. 'png', 'pdf', 'svg', ...  The behavior when this
		    is unset is documented under *fname*.
		origin : {'upper', 'lower'}, optional
		    Indicates whether the ``(0, 0)`` index of the array is in the upper
		    left or lower left corner of the axes.  Defaults to :rc:`image.origin`
		    ('upper').
		dpi : int
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
		Load a `PIL image`_ and return it as a numpy array.
		
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
	static public var rcParams : Dynamic;
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
		    The image file -- must be PNG, or Pillow-readable if you have Pillow_
		    installed.
		
		    .. _Pillow: http://python-pillow.org/
		
		thumbfile : str or file-like
		    The thumbnail filename.
		
		scale : float, optional
		    The scale factor for the thumbnail.
		
		interpolation : str, optional
		    The interpolation scheme used in the resampling. See the
		    *interpolation* parameter of `~.Axes.imshow` for possible values.
		
		preview : bool, optional
		    If True, the default backend (presumably a user interface
		    backend) will be used which will cause a figure to be raised if
		    `~matplotlib.pyplot.show` is called.  If it is False, the figure is
		    created using `FigureCanvasBase` and the drawing backend is selected
		    as `~matplotlib.figure.savefig` would normally do.
		
		Returns
		-------
		figure : `~.figure.Figure`
		    The figure instance containing the thumbnail.
	**/
	static public function thumbnail(infile:Dynamic, thumbfile:Dynamic, ?scale:Dynamic, ?interpolation:Dynamic, ?preview:Dynamic):Dynamic;
}