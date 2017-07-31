/* This file is generated, do not edit! */
package matplotlib._png;
@:pythonImport("matplotlib._png") extern class _Png_Module {
	static public var PNG_FILTER_AVG : Dynamic;
	static public var PNG_FILTER_NONE : Dynamic;
	static public var PNG_FILTER_PAETH : Dynamic;
	static public var PNG_FILTER_SUB : Dynamic;
	static public var PNG_FILTER_UP : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		read_png(file)
		
		Read in a PNG file, converting values to floating-point doubles
		in the range (0, 1)
		
		Alias for read_png_float()
		
		Parameters
		----------
		file : str path or file-like object
	**/
	static public function read_png(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_png_float(file)
		
		Read in a PNG file, converting values to floating-point doubles
		in the range (0, 1)
		
		Parameters
		----------
		file : str path or file-like object
	**/
	static public function read_png_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_png_int(file)
		
		Read in a PNG file with original integer values.
		
		Parameters
		----------
		file : str path or file-like object
	**/
	static public function read_png_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		write_png(buffer, file, dpi=0, compression=6, filter=auto)
		
		Parameters
		----------
		buffer : numpy array of image data
		    Must be an MxNxD array of dtype uint8.
		    - if D is 1, the image is greyscale
		    - if D is 3, the image is RGB
		    - if D is 4, the image is RGBA
		
		file : str path, file-like object or None
		    - If a str, must be a file path
		    - If a file-like object, must write bytes
		    - If None, a byte string containing the PNG data will be returned
		
		dpi : float
		    The dpi to store in the file metadata.
		
		compression : int
		    The level of lossless zlib compression to apply.  0 indicates no
		    compression.  Values 1-9 indicate low/fast through high/slow
		    compression.  Default is 6.
		
		filter : int
		    Filter to apply.  Must be one of the constants: PNG_FILTER_NONE,
		    PNG_FILTER_SUB, PNG_FILTER_UP, PNG_FILTER_AVG, PNG_FILTER_PAETH.
		    See the PNG standard for more information.
		    If not provided, libpng will try to automatically determine the
		    best filter on a line-by-line basis.
		
		Returns
		-------
		buffer : bytes or None
		    Byte string containing the PNG content if None was passed in for
		    file, otherwise None is returned.
	**/
	static public function write_png(args:haxe.extern.Rest<Dynamic>):Dynamic;
}