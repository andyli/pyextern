/* This file is generated, do not edit! */
package scipy.spatial._plotutils;
@:pythonImport("scipy.spatial._plotutils") extern class _Plotutils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjust_bounds(ax:Dynamic, points:Dynamic):Dynamic;
	/**
		decorator(caller) converts a caller function into a decorator
	**/
	static public function _decorator(caller:Dynamic, ?_func:Dynamic):Dynamic;
	static public function _held_figure(func:Dynamic, obj:Dynamic, ?ax:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Plot the given convex hull diagram in 2-D
		
		Parameters
		----------
		hull : scipy.spatial.ConvexHull instance
		    Convex hull to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		ConvexHull
		
		Notes
		-----
		Requires Matplotlib.
	**/
	static public function convex_hull_plot_2d(hull:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Plot the given Delaunay triangulation in 2-D
		
		Parameters
		----------
		tri : scipy.spatial.Delaunay instance
		    Triangulation to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		Delaunay
		matplotlib.pyplot.triplot
		
		Notes
		-----
		Requires Matplotlib.
	**/
	static public function delaunay_plot_2d(tri:Dynamic, ?ax:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Plot the given Voronoi diagram in 2-D
		
		Parameters
		----------
		vor : scipy.spatial.Voronoi instance
		    Diagram to plot
		ax : matplotlib.axes.Axes instance, optional
		    Axes to plot on
		show_vertices : bool, optional
		    Add the Voronoi vertices to the plot.
		
		Returns
		-------
		fig : matplotlib.figure.Figure instance
		    Figure for the plot
		
		See Also
		--------
		Voronoi
		
		Notes
		-----
		Requires Matplotlib.
	**/
	static public function voronoi_plot_2d(vor:Dynamic, ?ax:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
}