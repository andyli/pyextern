/* This file is generated, do not edit! */
package scipy.ndimage;
@:native("scipy.ndimage.filters") extern class Filters {
	static public function convolve(input:Dynamic, weights:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function convolve1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function correlate(input:Dynamic, weights:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function correlate1d(input:Dynamic, weights:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function gaussian_filter(input:Dynamic, sigma:Dynamic, ?order:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	static public function gaussian_filter1d(input:Dynamic, sigma:Dynamic, ?axis:Dynamic, ?order:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?truncate:Dynamic):Dynamic;
	static public function gaussian_gradient_magnitude(args:haxe.extern.Rest<Dynamic>):Void;
	static public function gaussian_laplace(args:haxe.extern.Rest<Dynamic>):Void;
	static public function generic_filter(input:Dynamic, _function:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function generic_filter1d(input:Dynamic, _function:Dynamic, filter_size:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function generic_gradient_magnitude(input:Dynamic, derivative:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic):Void;
	static public function generic_laplace(input:Dynamic, derivative2:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic):Void;
	static public function laplace(input:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic):Void;
	static public function maximum_filter(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function maximum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function median_filter(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function minimum_filter(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function minimum_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function percentile_filter(input:Dynamic, percentile:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function prewitt(input:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic):Void;
	static public function rank_filter(input:Dynamic, rank:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function sobel(input:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic):Void;
	static public function uniform_filter(input:Dynamic, ?size:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
	static public function uniform_filter1d(input:Dynamic, size:Dynamic, ?axis:Dynamic, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Void;
}