/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial", "cKDTree") extern class CKDTree {
	public function count_neighbors(self:Dynamic, other:Dynamic, r:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var data : Dynamic;
	public var indices : Dynamic;
	public var leafsize : Dynamic;
	public var m : Dynamic;
	public var maxes : Dynamic;
	public var mins : Dynamic;
	public var n : Dynamic;
	public function query(self:Dynamic, x:Dynamic, ?k:Dynamic, ?eps:Dynamic, ?p:Dynamic, ?distance_upper_bound:Dynamic, ?n_jobs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_ball_point(self:Dynamic, x:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_ball_tree(self:Dynamic, other:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_pairs(self:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sparse_distance_matrix(self:Dynamic, other:Dynamic, max_distance:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var tree : Dynamic;
}