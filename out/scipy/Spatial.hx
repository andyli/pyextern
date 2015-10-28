/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.spatial") extern class Spatial {
	static public function convex_hull_plot_2d(hull:Dynamic, ?ax:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function delaunay_plot_2d(tri:Dynamic, ?ax:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function distance_matrix(x:Dynamic, y:Dynamic, ?p:Dynamic, ?threshold:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minkowski_distance(x:Dynamic, y:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minkowski_distance_p(x:Dynamic, y:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function procrustes(data1:Dynamic, data2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tsearch(tri:Dynamic, xi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function voronoi_plot_2d(vor:Dynamic, ?ax:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}