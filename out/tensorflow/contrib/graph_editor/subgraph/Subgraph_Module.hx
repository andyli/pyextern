/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.subgraph;
@:pythonImport("tensorflow.contrib.graph_editor.subgraph") extern class Subgraph_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if sgv belongs to the given graph.
		
		Args:
		  sgv: a SubGraphView.
		  graph: a graph or None.
		Returns:
		  The SubGraphView sgv.
		Raises:
		  TypeError: if sgv is not a SubGraphView or if graph is not None and not
		    a tf.Graph.
		  ValueError: if the graph of sgv and the given graph are not None and
		    different.
	**/
	static public function _check_graph(sgv:Dynamic, graph:Dynamic):Dynamic;
	/**
		Check is the mapping is valid.
		
		Args:
		  mapping: an iterable of integer.
		  n: define the input domain as [0, n-1]. Note that the mapping can be
		    under-complete, that is, it can only contain a subset of the integers on
		    [0, n-1].
		  repetition: if True repetition are allowed (the function is surjective)
		    otherwise repetition are not allowed (the function is injective).
		Raises:
		  ValueError: if the mapping is out of range ot if repetition is False and
		    the mapping has some repetition.
	**/
	static public function _check_within_range(mapping:Dynamic, n:Dynamic, repetition:Dynamic):Dynamic;
	/**
		Returns index as is or return index of tensor in `ts`.
	**/
	static public function _finalize_index(index_or_t:Dynamic, ts:Dynamic):Dynamic;
	/**
		Returns index in `indices` as is or replace with tensor's index.
	**/
	static public function _finalize_indices(list_of_index_or_t:Dynamic, ts:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a SubGraphView from selected operations and passthrough tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or  2) (array of)
		    `tf.Operation` 3) (array of) `tf.Tensor`. Those objects will be converted
		    into a list of operations and a list of candidate for passthrough tensors.
		  **kwargs: keyword graph is used 1) to check that the ops and ts are from
		    the correct graph 2) for regular expression query
		Returns:
		  A subgraph view.
		Raises:
		  TypeError: if the optional keyword argument graph is not a `tf.Graph`
		    or if an argument in args is not an (array of) `tf.Tensor`
		    or an (array of) `tf.Operation` or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected.
	**/
	static public function make_view(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a subgraph from a name scope.
		
		Args:
		  scope: the name of the scope.
		  graph: the `tf.Graph`.
		Returns:
		  A subgraph view representing the given scope.
	**/
	static public function make_view_from_scope(scope:Dynamic, graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}