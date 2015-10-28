/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "GroupBy") extern class GroupBy {
	private function __iter__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function aggregate(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function apply(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function count(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function cumcount(?ascending:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function first(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_group(name:Dynamic, ?obj:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function head(?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function last(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function max(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function mean(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function median(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function min(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nth(n:Dynamic, ?dropna:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ohlc(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function prod(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sem(?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function size(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function std(?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sum(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tail(?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function transform(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("var")
	public function _var(?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}