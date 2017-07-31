/* This file is generated, do not edit! */
package matplotlib._image;
@:pythonImport("matplotlib._image") extern class _Image_Module {
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
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _n_interpolation : Dynamic;
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
}