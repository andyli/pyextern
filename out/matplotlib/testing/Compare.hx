/* This file is generated, do not edit! */
package matplotlib.testing;
@:pythonImport("matplotlib.testing.compare") extern class Compare {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function _get_cachedir():Dynamic;
	static public function _update_converter():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calculate the per-pixel errors, then compute the root mean square error.
	**/
	static public function calculate_rms(expectedImage:Dynamic, actualImage:Dynamic):Dynamic;
	/**
		Returns the list of file formats that compare_images can compare
		on this system.
	**/
	static public function comparable_formats():Dynamic;
	/**
		Fail if the floating point values are not close enough, with
		the given message.
		
		You can specify a relative tolerance, absolute tolerance, or both.
	**/
	static public function compare_float(expected:Dynamic, actual:Dynamic, ?relTol:Dynamic, ?absTol:Dynamic):Dynamic;
	/**
		Compare two "image" files checking differences within a tolerance.
		
		The two given filenames may point to files which are convertible to
		PNG via the `.converter` dictionary. The underlying RMS is calculated
		with the `.calculate_rms` function.
		
		Parameters
		----------
		expected : str
		    The filename of the expected image.
		actual :str
		    The filename of the actual image.
		tol : float
		    The tolerance (a color value difference, where 255 is the
		    maximal difference).  The test fails if the average pixel
		    difference is greater than this value.
		in_decorator : bool
		    If called from image_comparison decorator, this should be
		    True. (default=False)
		
		Example
		-------
		img1 = "./baseline/plot.png"
		img2 = "./output/plot.png"
		compare_images( img1, img2, 0.001 ):
	**/
	static public function compare_images(expected:Dynamic, actual:Dynamic, tol:Dynamic, ?in_decorator:Dynamic):Dynamic;
	/**
		Convert the named file into a png file.  Returns the name of the
		created file.
		
		If *cache* is True, the result of the conversion is cached in
		`matplotlib._get_cachedir() + '/test_cache/'`.  The caching is based
		on a hash of the exact contents of the input file.  The is no limit
		on the size of the cache, so it may need to be manually cleared
		periodically.
	**/
	static public function convert(filename:Dynamic, cache:Dynamic):Dynamic;
	static public var converter : Dynamic;
	static public function crop_to_same(actual_path:Dynamic, actual_image:Dynamic, expected_path:Dynamic, expected_image:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_cache_dir():Dynamic;
	static public function get_file_hash(path:Dynamic, ?block_size:Dynamic):Dynamic;
	static public function make_external_conversion_command(cmd:Dynamic):Dynamic;
	/**
		Make a new filename by inserting `purpose` before the file's
		extension.
	**/
	static public function make_test_filename(fname:Dynamic, purpose:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function save_diff_image(expected:Dynamic, actual:Dynamic, output:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verifiers : Dynamic;
	/**
		Verify the file through some sort of verification tool.
	**/
	static public function verify(filename:Dynamic):Dynamic;
}