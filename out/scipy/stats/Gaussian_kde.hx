/* This file is generated, do not edit! */
package scipy.stats;
@:native("scipy.stats.gaussian_kde") extern class Gaussian_kde {
	private function __call__(points:Dynamic):Dynamic;
	public function covariance_factor():Void;
	public function evaluate(points:Dynamic):Dynamic;
	public function integrate_box(low_bounds:Dynamic, high_bounds:Dynamic, ?maxpts:Dynamic = null):Dynamic;
	public function integrate_box_1d(low:Dynamic, high:Dynamic):Dynamic;
	public function integrate_gaussian(mean:Dynamic, cov:Dynamic):Dynamic;
	public function integrate_kde(other:Dynamic):Dynamic;
	public function logpdf(x:Dynamic):Void;
	public function pdf(x:Dynamic):Void;
	public function resample(?size:Dynamic = null):Dynamic;
	public function scotts_factor():Void;
	public function set_bandwidth(?bw_method:Dynamic = null):Void;
	public function silverman_factor():Void;
}