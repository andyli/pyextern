/* This file is generated, do not edit! */
package torch.ao.ns.fx.graph_matcher;
@:pythonImport("torch.ao.ns.fx.graph_matcher") extern class Graph_matcher_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSNodeTargetType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a unique name for a subgraph. This name is based on two things:
		1. the name of the set containing the underlying type of the base op in the
		   subgraph (i.e. 'torch.nn.functional.linear' if this is related to a linear op)
		2. the number of previous subgraphs with related underlying type of the base op
		
		For example, in the graph
		
		linear0 -> relu0 -> linear1 -> relu1
		
		The subgraphs are (linear0, relu0) and (linear1, relu1).  If we iterate
		from the output node backwards, the name given to (linear1, relu1) will be
		`base_op_torch.nn.functional.linear_0`, and the name given to (linear0, relu0)
		will be `base_op_torch.nn.functional.linear_1`.
		
		Why are we not just using the node name? Answer: because of two requirements:
		A. fusions must be supported
		B. some Numeric Suite APIs can be called without having all of the models in memory
		
		For example, let's say we need to match nodes of
		
		(1) ... -> linear0 -> relu0 -> ...
		
		And
		
		(2) ... -> linear_relu0 -> ...
		
		Without being able to inspect them together. With the current naming scheme, if
		we iterate through both of these graphs in the same order, and assuming the rest
		of the graphs match, both of these subgraphs will get the same name without
		(1) and (2) knowing anything about each other.
	**/
	static public function _get_name_for_subgraph(subgraph_a:Dynamic, gm_a:Dynamic, base_name_to_sets_of_related_ops:Dynamic, existing_names:Dynamic):Dynamic;
	static public function _get_node_target_type(node:Dynamic, gm:Dynamic):Dynamic;
	static public function _get_output_nodes(g:Dynamic):Dynamic;
	static public function _get_subgraph_relationship_type(subgraph_a:Dynamic, subgraph_b:Dynamic, gm_a:Dynamic, gm_b:Dynamic, type_a_related_to_b:Dynamic):Dynamic;
	/**
		Returns true if a pattern ending with `end_node` matches
		the fusion pattern.
	**/
	static public function end_node_matches_reversed_fusion(end_node:Dynamic, reversed_fusion:Dynamic, gm:Dynamic):Dynamic;
	static public function get_base_name_to_sets_of_related_ops():Dynamic;
	/**
		Matches matchable subgraphs of graph_a to graph_b.
		
		For a node, "matchable" is defined as a node which is not an observer,
		fake_quants, quant or dequant.
		
		A subgraph can contain one or more nodes.  A subgraph is matchable if
		at least one node inside of it is matchable.  Currently, all nodes in
		a subgraph must be matchable (because we assume no observers will be
		inserted in the middle of a fusion).
		
		A subgraph is defined by (start_node, end_node).  We assume that only
		start_node and end_node are linked with the surrounding graph, all other
		nodes in a subgraph are self-contained.
		
		A pair of nodes is "related" if both nodes represent the same mathematical
		operation across different quantization flavors. For example,
		`F.linear` and `torch.ops.quantized.linear` are related, and
		`F.linear` and `torch.nn.Conv` are not related.
		
		For each matchable pair of nodes node_a and node_b, they will match
		if node_a and node_b are related.
		
		For graphs A and B, they will match iff:
		1. the number of matchable subgraphs in A and B is equivalent
		2. when iterating through the matchable subgraphs of A and B in the same order, each
		   corresponding pair of base nodes is related.
		
		This enables us to find the corresponding subgraphs between
		graphs of related models.  For example, if we had two graphs such as:
		
		graph_a: x0 -> conv_0 (type: nn.Conv2d) -> obs_0 -> x1
		         w  -/
		         b  -/
		
		graph_b: x0 -> quant_0 -> qconv_0 (type: nnq.Conv2d) -> dequant_0 -> x1
		       packed_params_0 -/
		
		This function will return the following result:
		{
		    'conv_0': (  # the name of the node in graph_b
		      (conv_0, conv_0),  # (start_node_a, end_node_a)
		      (qconv_0, qconv_0),  # (start_node_b, end_node_b)
		    ),
		}
		
		Or, if we have a fusion pattern,
		
		graph_a: x0 -> linear_0 -> relu_0 -> obs_0 -> x1
		         w  -/
		         b  -/
		
		graph_b: x0 -> quant_0 -> linear_relu_0 -> dequant_0 -> x1
		       packed_params_0 -/
		
		This function will return the following result:
		{
		    'linear_relu_0': (  # the name of the node in graph_b
		      (linear_0, relu_0),  # (start_node_a, end_node_a)
		      (linear_relu_0, linear_relu_0),  # (start_node_b, end_node_b)
		    ),
		}
	**/
	static public function get_matching_subgraph_pairs(gm_a:Dynamic, gm_b:Dynamic, ?base_name_to_sets_of_related_ops:Dynamic, ?unmatchable_types_map:Dynamic):Dynamic;
	/**
		Set of potential fusions, in reverse order.  The order is reversed
		to match how fusion patterns are defined in quantization code.
		
		Fusion format:
		((fusion_op_0, fusion_op_1), base_op_idx)
		
		Where base_op_idx is the idx of the op we should use to match other related
		ops. Note: base_op_idx is specified in non-reverse order, i.e. a base_op_idx
		of 0 represents the first op in regular (non-reverse) order, 1 represents the
		second op, etc.
	**/
	static public function get_reversed_fusions():Dynamic;
	static public function get_type_a_related_to_b(base_name_to_sets_of_related_ops:Dynamic):Dynamic;
	static public function get_unmatchable_types_map():Dynamic;
	/**
		Given an obj and a fqn such as "foo.bar.baz", returns gm.foo.bar.baz.
	**/
	static public function getattr_from_fqn(obj:Dynamic, fqn:Dynamic):Dynamic;
}