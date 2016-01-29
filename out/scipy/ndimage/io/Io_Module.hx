/* This file is generated, do not edit! */
package scipy.ndimage.io;
@:pythonImport("scipy.ndimage.io") extern class Io_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _have_pil : Dynamic;
	/**
		Read an image from a file as an array.
		
		Parameters
		----------
		name : str or file object
		    The file name or file object to be read.
		flatten : bool, optional
		    If True, flattens the color layers into a single gray-scale layer.
		mode : str, optional
		    Mode to convert image to, e.g. ``'RGB'``.  See the Notes for more
		    details.
		
		Returns
		-------
		imread : ndarray
		    The array obtained by reading the image.
		
		Notes
		-----
		`imread` uses the Python Imaging Library (PIL) to read an image.
		The following notes are from the PIL documentation.
		
		`mode` can be one of the following strings:
		
		* 'L' (8-bit pixels, black and white)
		* 'P' (8-bit pixels, mapped to any other mode using a color palette)
		* 'RGB' (3x8-bit pixels, true color)
		* 'RGBA' (4x8-bit pixels, true color with transparency mask)
		* 'CMYK' (4x8-bit pixels, color separation)
		* 'YCbCr' (3x8-bit pixels, color video format)
		* 'I' (32-bit signed integer pixels)
		* 'F' (32-bit floating point pixels)
		
		PIL also provides limited support for a few special modes, including
		'LA' ('L' with alpha), 'RGBX' (true color with padding) and 'RGBa'
		(true color with premultiplied alpha).
		
		When translating a color image to black and white (mode 'L', 'I' or
		'F'), the library uses the ITU-R 601-2 luma transform::
		
		    L = R * 299/1000 + G * 587/1000 + B * 114/1000
		
		When `flatten` is True, the image is converted using mode 'F'.
		When `mode` is not None and `flatten` is True, the image is first
		converted according to `mode`, and the result is then flattened using
		mode 'F'.
	**/
	static public function _imread(name:Dynamic, ?flatten:Dynamic, ?mode:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Read an image from a file as an array.
		
		Parameters
		----------
		fname : str or file object
		    The file name or file object to be read.
		flatten : bool, optional
		    If True, flattens the color layers into a single gray-scale layer.
		mode : str, optional
		    Mode to convert image to, e.g. ``'RGB'``.  See the Notes for more
		    details.
		
		Returns
		-------
		imread : ndarray
		    The array obtained by reading the image.
		
		Notes
		-----
		`imread` uses the Python Imaging Library (PIL) to read an image.
		The following notes are from the PIL documentation.
		
		`mode` can be one of the following strings:
		
		* 'L' (8-bit pixels, black and white)
		* 'P' (8-bit pixels, mapped to any other mode using a color palette)
		* 'RGB' (3x8-bit pixels, true color)
		* 'RGBA' (4x8-bit pixels, true color with transparency mask)
		* 'CMYK' (4x8-bit pixels, color separation)
		* 'YCbCr' (3x8-bit pixels, color video format)
		* 'I' (32-bit signed integer pixels)
		* 'F' (32-bit floating point pixels)
		
		PIL also provides limited support for a few special modes, including
		'LA' ('L' with alpha), 'RGBX' (true color with padding) and 'RGBa'
		(true color with premultiplied alpha).
		
		When translating a color image to black and white (mode 'L', 'I' or
		'F'), the library uses the ITU-R 601-2 luma transform::
		
		    L = R * 299/1000 + G * 587/1000 + B * 114/1000
		
		When `flatten` is True, the image is converted using mode 'F'.
		When `mode` is not None and `flatten` is True, the image is first
		converted according to `mode`, and the result is then flattened using
		mode 'F'.
	**/
	static public function imread(fname:Dynamic, ?flatten:Dynamic, ?mode:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}