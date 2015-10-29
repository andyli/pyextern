/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_compare_images") extern class Test_compare_images {
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
	/**
		Fail if the two objects are unequal as determined by their
		difference rounded to the given number of decimal places
		(default 7) and comparing to zero, or by comparing that the
		between the two objects is more than the given delta.
		
		Note that decimal places (from zero) are usually not the same
		as significant digits (measured from the most signficant digit).
		
		If the two objects compare equal then they will automatically
		compare almost equal.
	**/
	static public function assert_almost_equal(first:Dynamic, second:Dynamic, ?places:Dynamic, ?msg:Dynamic, ?delta:Dynamic):Dynamic;
	/**
		Fail if the two objects are unequal as determined by the '=='
		operator.
	**/
	static public function assert_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Fail if the two objects are equal as determined by the '!='
		operator.
	**/
	static public function assert_not_equal(first:Dynamic, second:Dynamic, ?msg:Dynamic):Dynamic;
	static public var baseline_dir : Dynamic;
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
	static public var division : Dynamic;
	/**
		Compare two images, expecting a particular RMS error.
		
		im1 and im2 are filenames relative to the baseline_dir directory.
		
		tol is the tolerance to pass to compare_images.
		
		expect_rms is the expected RMS value, or None. If None, the test will
		succeed if compare_images succeeds. Otherwise, the test will succeed if
		compare_images fails and returns an RMS error almost equal to this value.
	**/
	static public function image_comparison_expect_rms(im1:Dynamic, im2:Dynamic, tol:Dynamic, expect_rms:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var result_dir : Dynamic;
	static public function test_image_compare_1px_offset():Dynamic;
	static public function test_image_compare_basic():Dynamic;
	static public function test_image_compare_half_1px_offset():Dynamic;
	static public function test_image_compare_scrambled():Dynamic;
	static public function test_image_compare_shade_difference():Dynamic;
	static public var unicode_literals : Dynamic;
}