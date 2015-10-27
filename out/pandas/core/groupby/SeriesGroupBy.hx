/* This file is generated, do not edit! */
package pandas.core.groupby;
@:native("pandas.core.groupby.SeriesGroupBy") extern class SeriesGroupBy {
	public function nlargest(?n:Dynamic, ?keep:Dynamic):Dynamic;
	public function nsmallest(?n:Dynamic, ?keep:Dynamic):Dynamic;
	public function nunique(?dropna:Dynamic = true):Void;
	public function value_counts(?normalize:Dynamic = false, ?sort:Dynamic = true, ?ascending:Dynamic = false, ?bins:Dynamic = null, ?dropna:Dynamic = true):Void;
}