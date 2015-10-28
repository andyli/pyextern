/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial", "KDTree") extern class KDTree {
	public function count_neighbors(other:Dynamic, r:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query(x:Dynamic, ?k:Dynamic, ?eps:Dynamic, ?p:Dynamic, ?distance_upper_bound:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_ball_point(x:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_ball_tree(other:Dynamic, r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function query_pairs(r:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function sparse_distance_matrix(other:Dynamic, max_distance:Dynamic, ?p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}