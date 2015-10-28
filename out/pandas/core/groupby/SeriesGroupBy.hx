/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "SeriesGroupBy") extern class SeriesGroupBy {
	public function nlargest(?n:Dynamic, ?keep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nsmallest(?n:Dynamic, ?keep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function nunique(?dropna:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function value_counts(?normalize:Dynamic = false, ?sort:Dynamic = true, ?ascending:Dynamic = false, ?bins:Dynamic = null, ?dropna:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}