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
	/**
		Draw a unstructured triangular grid as lines and/or markers.
		
		The triangulation to plot can be specified in one of two ways; either::
		
		  triplot(triangulation, ...)
		
		where triangulation is a `.Triangulation` object, or
		
		::
		
		  triplot(x, y, ...)
		  triplot(x, y, triangles, ...)
		  triplot(x, y, triangles=triangles, ...)
		  triplot(x, y, mask=mask, ...)
		  triplot(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See `.Triangulation`
		for a explanation of these possibilities.
		
		The remaining args and kwargs are the same as for `~.Axes.plot`.
		
		Returns
		-------
		lines : `~matplotlib.lines.Line2D`
		    The drawn triangles edges.
		markers : `~matplotlib.lines.Line2D`
		    The drawn marker nodes.
	**/
	static public function triplot(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}