/* This file is generated, do not edit! */
package matplotlib._image;
@:pythonImport("matplotlib._image") extern class _Image_Module {
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
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}