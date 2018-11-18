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
		x : 1d array of dimension N
		
		y : 2d array (dimension MxN), or sequence of 1d arrays (each dimension 1xN)
		
		    The data is assumed to be unstacked. Each of the following
		    calls is legal::
		
		        stackplot(x, y)               # where y is MxN
		        stackplot(x, y1, y2, y3, y4)  # where y1, y2, y3, y4, are all 1xNm
		
		baseline : {'zero', 'sym', 'wiggle', 'weighted_wiggle'}
		    Method used to calculate the baseline:
		
		    - ``'zero'``: Constant zero baseline, i.e. a simple stacked plot.
		    - ``'sym'``:  Symmetric around zero and is sometimes called
		      'ThemeRiver'.
		    - ``'wiggle'``: Minimizes the sum of the squared slopes.
		    - ``'weighted_wiggle'``: Does the same but weights to account for
		      size of each layer. It is also called 'Streamgraph'-layout. More
		      details can be found at http://leebyron.com/streamgraph/.
		
		labels : Length N sequence of strings
		    Labels to assign to each data series.
		
		colors : Length N sequence of colors
		    A list or tuple of colors. These will be cycled through and used to
		    colour the stacked areas.
		
		**kwargs :
		    All other keyword arguments are passed to `Axes.fill_between()`.
		
		
		Returns
		-------
		list : list of `.PolyCollection`
		    A list of `.PolyCollection` instances, one for each element in the
		    stacked area plot.
	**/
	static public function stackplot(axes:Dynamic, x:Dynamic, ?args:python.VarArgs<Dynamic>, ?labels:Dynamic, ?colors:Dynamic, ?baseline:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}