/* This file is generated, do not edit! */
package torch.contrib._tensorboard_vis;
@:pythonImport("torch.contrib._tensorboard_vis") extern class _Tensorboard_vis_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function dump_tensorboard_summary(graph_executor:Dynamic, logdir:Dynamic):Dynamic;
	/**
		Visualizes an independent graph, or a graph executor.
	**/
	static public function visualize(graph:Dynamic, ?name_prefix:Dynamic, ?pb_graph:Dynamic, ?executors_it:Dynamic):Dynamic;
	/**
		Appends the state of a given GraphExecutor to the graph protobuf.
		
		Arguments:
		    state (GraphExecutor or GraphExecutorState): GraphExecutor to display.
		    name_prefix (str): Name prefix of the containing subgraph.
		    pb_graph (GraphDef): graph to append to.
		    inline_graph (callable): a function that handles setting up a value_map,
		        so that some graphs in here can be inlined. This is necessary, because
		        this will simply be `visualize` for the top-level GraphExecutor,
		        or `inline_graph` for all nested ones.
		
		        The signature should look like (Graph, name_prefix) -> ().
		        It will be called exactly once.
		
		The strategy is to embed all different configurations as independent subgraphs,
		while inlining the original graph as the one that actually produces the values.
	**/
	static public function visualize_graph_executor(state:Dynamic, name_prefix:Dynamic, pb_graph:Dynamic, inline_graph:Dynamic):Dynamic;
	/**
		Recursive part of visualize (basically skips setting up the input and output nodes).
	**/
	static public function visualize_rec(graph:Dynamic, value_map:Dynamic, name_prefix:Dynamic, pb_graph:Dynamic, ?executors_it:Dynamic):Dynamic;
}