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
	static public var absolute_import : Dynamic;
	/**
		Create a new `Cycler` object from a property name and
		iterable of values.
		
		Parameters
		----------
		label : str
		    The property key.
		
		itr : iterable
		    Finite length iterable of the property values.
		
		Returns
		-------
		cycler : Cycler
		    New `Cycler` for the given property
	**/
	static public function cycler(label:Dynamic, itr:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Draws a stacked area plot.
		
		*x* : 1d array of dimension N
		
		*y* : 2d array of dimension MxN, OR any number 1d arrays each of dimension
		      1xN. The data is assumed to be unstacked. Each of the following
		      calls is legal::
		
		        stackplot(x, y)               # where y is MxN
		        stackplot(x, y1, y2, y3, y4)  # where y1, y2, y3, y4, are all 1xNm
		
		Keyword arguments:
		
		*baseline* : ['zero', 'sym', 'wiggle', 'weighted_wiggle']
		            Method used to calculate the baseline. 'zero' is just a
		            simple stacked plot. 'sym' is symmetric around zero and
		            is sometimes called `ThemeRiver`.  'wiggle' minimizes the
		            sum of the squared slopes. 'weighted_wiggle' does the
		            same but weights to account for size of each layer.
		            It is also called `Streamgraph`-layout. More details
		            can be found at http://www.leebyron.com/else/streamgraph/.
		
		
		*labels* : A list or tuple of labels to assign to each data series.
		
		
		*colors* : A list or tuple of colors. These will be cycled through and
		           used to colour the stacked areas.
		           All other keyword arguments are passed to
		           :func:`~matplotlib.Axes.fill_between`
		
		Returns *r* : A list of
		:class:`~matplotlib.collections.PolyCollection`, one for each
		element in the stacked area plot.
	**/
	static public function stackplot(axes:Dynamic, x:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
}