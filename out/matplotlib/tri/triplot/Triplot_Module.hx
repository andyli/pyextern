/* This file is generated, do not edit! */
package matplotlib.tri.triplot;
@:pythonImport("matplotlib.tri.triplot") extern class Triplot_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Draw a unstructured triangular grid as lines and/or markers.
		
		The triangulation to plot can be specified in one of two ways;
		either::
		
		  triplot(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  triplot(x, y, ...)
		  triplot(x, y, triangles, ...)
		  triplot(x, y, triangles=triangles, ...)
		  triplot(x, y, mask=mask, ...)
		  triplot(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The remaining args and kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.plot`.
		
		Return a list of 2 :class:`~matplotlib.lines.Line2D` containing
		respectively:
		
		    - the lines plotted for triangles edges
		    - the markers plotted for triangles nodes
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/triplot_demo.py
	**/
	static public function triplot(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
}