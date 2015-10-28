/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse.csgraph") extern class Csgraph {
	static public function bellman_ford(csgraph:Dynamic, ?directed:Dynamic = true, ?indices:Dynamic = null, ?return_predecessors:Dynamic = false, ?unweighted:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function breadth_first_order(csgraph:Dynamic, i_start:Dynamic, ?directed:Dynamic = true, ?return_predecessors:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function breadth_first_tree(csgraph:Dynamic, i_start:Dynamic, ?directed:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function connected_components(csgraph:Dynamic, ?directed:Dynamic = true, ?connection:Dynamic, ?return_labels:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function depth_first_order(csgraph:Dynamic, i_start:Dynamic, ?directed:Dynamic = true, ?return_predecessors:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function depth_first_tree(csgraph:Dynamic, i_start:Dynamic, ?directed:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dijkstra(csgraph:Dynamic, ?directed:Dynamic = true, ?indices:Dynamic = null, ?return_predecessors:Dynamic = false, ?unweighted:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function floyd_warshall(csgraph:Dynamic, ?directed:Dynamic = true, ?return_predecessors:Dynamic = false, ?unweighted:Dynamic = false, ?overwrite:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function johnson(csgraph:Dynamic, ?directed:Dynamic = true, ?indices:Dynamic = null, ?return_predecessors:Dynamic = false, ?unweighted:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function laplacian(csgraph:Dynamic, ?normed:Dynamic = false, ?return_diag:Dynamic = false, ?use_out_degree:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maximum_bipartite_matching(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimum_spanning_tree(csgraph:Dynamic, ?overwrite:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function reverse_cuthill_mckee(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function shortest_path(csgraph:Dynamic, ?method:Dynamic, ?directed:Dynamic = true, ?return_predecessors:Dynamic = false, ?unweighted:Dynamic = false, ?overwrite:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}