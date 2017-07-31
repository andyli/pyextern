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
		Plots a Series on the given Matplotlib axes or the current axes
		
		Parameters
		----------
		axes : Axes
		series : Series
		
		Notes
		_____
		Supports same kwargs as Axes.plot
	**/
	static public function tsplot(series:Dynamic, plotf:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}