/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_backend_pgf") extern class Test_backend_pgf {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute the baseline and result image directories for testing *func*.
		Create the result directory if it doesn't exist.
	**/
	static public function _image_directories(func:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var baseline_dir : Dynamic;
	static public function check_for(texsystem:Dynamic):Dynamic;
	static public function compare_figure(fname:Dynamic, ?savefig_kwargs:Dynamic):Dynamic;
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
	static public function create_figure():Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var result_dir : Dynamic;
	static public function switch_backend(backend:Dynamic):Dynamic;
	static public function test_bbox_inches(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_mixedmode(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_pathclip(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_pdflatex(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_rcupdate(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function test_xelatex(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}