/* This file is generated, do not edit! */
package scipy.spatial;
@:native("scipy.spatial.Delaunay") extern class Delaunay {
	public function add_points(points:Dynamic, ?restart:Dynamic = false):Void;
	public function close():Void;
	public var convex_hull : Dynamic;
	public function find_simplex(self:Dynamic, xi:Dynamic, ?bruteforce:Dynamic = false, ?tol:Dynamic = null):Dynamic;
	public function lift_points(self:Dynamic, x:Dynamic):Void;
	public function plane_distance(self:Dynamic, xi:Dynamic):Void;
	public var transform : Dynamic;
	public var vertex_neighbor_vertices : Dynamic;
	public var vertex_to_simplex : Dynamic;
}