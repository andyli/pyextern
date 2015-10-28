/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial", "Delaunay") extern class Delaunay {
	public function add_points(points:Dynamic, ?restart:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function close(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var convex_hull : Dynamic;
	public function find_simplex(self:Dynamic, xi:Dynamic, ?bruteforce:Dynamic = false, ?tol:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function lift_points(self:Dynamic, x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function plane_distance(self:Dynamic, xi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var transform : Dynamic;
	public var vertex_neighbor_vertices : Dynamic;
	public var vertex_to_simplex : Dynamic;
}