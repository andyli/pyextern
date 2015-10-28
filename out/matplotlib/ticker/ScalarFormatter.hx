/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "ScalarFormatter") extern class ScalarFormatter {
	public function fix_minus(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function format_data(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function format_data_short(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_offset(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_useLocale(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_useOffset(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pprint_val(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_locs(locs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_powerlimits(lims:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_scientific(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_useLocale(val:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_useOffset(val:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var useLocale : Dynamic;
	public var useOffset : Dynamic;
}