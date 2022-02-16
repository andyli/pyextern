/* This file is generated, do not edit! */
package matplotlib.stackplot;
@:pythonImport("matplotlib.stackplot") extern class Stackplot_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Draw a stacked area plot.
		
		Parameters
		----------
		x : (N,) array-like
		
		y : (M, N) array-like
		    The data is assumed to be unstacked. Each of the following
		    calls is legal::
		
		        stackplot(x, y)           # where y has shape (M, N)
		        stackplot(x, y1, y2, y3)  # where y1, y2, y3, y4 have length N
		
		baseline : {'zero', 'sym', 'wiggle', 'weighted_wiggle'}
		    Method used to calculate the baseline:
		
		    - ``'zero'``: Constant zero baseline, i.e. a simple stacked plot.
		    - ``'sym'``:  Symmetric around zero and is sometimes called
		      'ThemeRiver'.
		    - ``'wiggle'``: Minimizes the sum of the squared slopes.
		    - ``'weighted_wiggle'``: Does the same but weights to account for
		      size of each layer. It is also called 'Streamgraph'-layout. More
		      details can be found at http://leebyron.com/streamgraph/.
		
		labels : list of str, optional
		    A sequence of labels to assign to each data series. If unspecified,
		    then no labels will be applied to artists.
		
		colors : list of color, optional
		    A sequence of colors to be cycled through and used to color the stacked
		    areas. The sequence need not be exactly the same length as the number
		    of provided *y*, in which case the colors will repeat from the
		    beginning.
		
		    If not specified, the colors from the Axes property cycle will be used.
		
		data : indexable object, optional
		    DATA_PARAMETER_PLACEHOLDER
		
		**kwargs
		    All other keyword arguments are passed to `.Axes.fill_between`.
		
		Returns
		-------
		list of `.PolyCollection`
		    A list of `.PolyCollection` instances, one for each element in the
		    stacked area plot.
	**/
	static public function stackplot(axes:Dynamic, x:Dynamic, ?args:python.VarArgs<Dynamic>, ?labels:Dynamic, ?colors:Dynamic, ?baseline:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}