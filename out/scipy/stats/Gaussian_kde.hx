/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats", "gaussian_kde") extern class Gaussian_kde {
	private function __call__(points:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function covariance_factor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function evaluate(points:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate_box(low_bounds:Dynamic, high_bounds:Dynamic, ?maxpts:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate_box_1d(low:Dynamic, high:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate_gaussian(mean:Dynamic, cov:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function integrate_kde(other:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function logpdf(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pdf(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function resample(?size:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function scotts_factor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_bandwidth(?bw_method:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function silverman_factor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}