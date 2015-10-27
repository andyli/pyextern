/* This file is generated, do not edit! */
package pandas.core.groupby;
@:native("pandas.core.groupby.GroupBy") extern class GroupBy {
	private function __iter__():Dynamic;
	public function aggregate(args:haxe.extern.Rest<Dynamic>):Void;
	public function apply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count():Void;
	public function cumcount(?ascending:Dynamic = true):Void;
	public function first():Void;
	public function get_group(name:Dynamic, ?obj:Dynamic = null):Dynamic;
	public function head(?n:Dynamic):Void;
	public function last():Void;
	public function max():Void;
	public function mean():Void;
	public function median():Void;
	public function min():Void;
	public function nth(n:Dynamic, ?dropna:Dynamic = null):Void;
	public function ohlc():Void;
	public function prod():Void;
	public function sem(?ddof:Dynamic):Void;
	public function size():Void;
	public function std(?ddof:Dynamic):Void;
	public function sum():Void;
	public function tail(?n:Dynamic):Void;
	public function transform(args:haxe.extern.Rest<Dynamic>):Void;
	@:native("var")
	public function _var(?ddof:Dynamic):Void;
}