/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.finance") extern class Finance {
	static public function candlestick(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function candlestick2(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function candlestick2_ochl(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function candlestick2_ohlc(ax:Dynamic, opens:Dynamic, highs:Dynamic, lows:Dynamic, closes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function candlestick_ochl(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function candlestick_ohlc(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fetch_historical_yahoo(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?cachename:Dynamic = null, ?dividends:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function index_bar(ax:Dynamic, vals:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?width:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function md5(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function parse_yahoo_historical(fh:Dynamic, ?adjusted:Dynamic = true, ?asobject:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function parse_yahoo_historical_ochl(fh:Dynamic, ?adjusted:Dynamic = true, ?asobject:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function parse_yahoo_historical_ohlc(fh:Dynamic, ?adjusted:Dynamic = true, ?asobject:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary2(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary2_ochl(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary2_ohlc(ax:Dynamic, opens:Dynamic, highs:Dynamic, lows:Dynamic, closes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary_oclh(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function plot_day_summary_ohlc(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function quotes_historical_yahoo(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic = false, ?adjusted:Dynamic = true, ?cachename:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function quotes_historical_yahoo_ochl(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic = false, ?adjusted:Dynamic = true, ?cachename:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function quotes_historical_yahoo_ohlc(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic = false, ?adjusted:Dynamic = true, ?cachename:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function volume_overlay(ax:Dynamic, opens:Dynamic, closes:Dynamic, volumes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function volume_overlay2(ax:Dynamic, closes:Dynamic, volumes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function volume_overlay3(ax:Dynamic, quotes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}