/* This file is generated, do not edit! */
package pandas.tseries.plotting;
@:pythonImport("pandas.tseries.plotting") extern class Plotting_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Initialize axes for time-series plotting
	**/
	static public function _decorate_axes(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _get_freq(ax:Dynamic, series:Dynamic):Dynamic;
	static public function _get_index_freq(data:Dynamic):Dynamic;
	static public function _is_sub(f1:Dynamic, f2:Dynamic):Dynamic;
	static public function _is_sup(f1:Dynamic, f2:Dynamic):Dynamic;
	static public function _maybe_convert_index(ax:Dynamic, data:Dynamic):Dynamic;
	static public function _maybe_resample(series:Dynamic, ax:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _replot_ax(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _upsample_others(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _use_dynamic_x(ax:Dynamic, data:Dynamic):Dynamic;
	/**
		Pretty-formats the date axis (x-axis).
		
		Major and minor ticks are automatically set for the frequency of the
		current underlying series.  As the dynamic mode is activated by
		default, changing the limits of the x axis will intelligently change
		the positions of the ticks.
	**/
	static public function format_dateaxis(subplot:Dynamic, freq:Dynamic):Dynamic;
	/**
		Plots a Series on the given Matplotlib axes or the current axes
		
		Parameters
		----------
		axes : Axes
		series : Series
		
		Notes
		_____
		Supports same kwargs as Axes.plot
	**/
	static public function tsplot(series:Dynamic, plotf:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
}