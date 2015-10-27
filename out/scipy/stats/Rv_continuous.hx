/* This file is generated, do not edit! */
package scipy.stats;
@:native("scipy.stats.rv_continuous") extern class Rv_continuous {
	private function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cdf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function entropy(args:haxe.extern.Rest<Dynamic>):Void;
	public function est_loc_scale(args:haxe.extern.Rest<Dynamic>):Void;
	public function expect(?func:Dynamic = null):Dynamic;
	public function fit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fit_loc_scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function freeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logcdf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logpdf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function logsf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function moment(args:haxe.extern.Rest<Dynamic>):Void;
	public function nnlf(theta:Dynamic, x:Dynamic):Void;
	public function pdf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ppf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var random_state : Dynamic;
	public function rvs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stats(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
}