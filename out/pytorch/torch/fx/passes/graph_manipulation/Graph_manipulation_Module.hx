/* This file is generated, do not edit! */
package torch.fx.passes.graph_manipulation;
@:pythonImport("torch.fx.passes.graph_manipulation") extern class Graph_manipulation_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Target(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _get_qualified_name(func:Dynamic):Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		Given a fx graph module, update each node with its total size (weights + bias + output)
		    and its output_size(output). For a non-module node, the total size is the output size.
		    return total size
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_size_of_all_nodes(fx_module:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Given a node with node.dtype and node.shape, return its total size and its output size.
		    total_size = weights + bias + output_size
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_size_of_node(fx_module:Dynamic, node:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_tensor_meta(node:Dynamic):Dynamic;
	/**
		Recursively traverse all `fx_module` nodes and fetch the module's attributes if the node is a leaf module.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function lift_lowering_attrs_to_nodes(fx_module:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_aggregate(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Modifies all nodes in fx_module.graph.nodes which match the specified op code and target,
		    and updates them to match the new op code and target
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function replace_target_nodes_with(fx_module:Dynamic, old_op:Dynamic, old_target:Dynamic, new_op:Dynamic, new_target:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_leaf_module(node:Dynamic, weights_metadata:Dynamic, weights:Dynamic, name_prefix:Dynamic):Dynamic;
	/**
		Recursively Serializes a graph module (fx_module) to a dictionary which is later exported to JSON.
		    It also adds all weights the provided weights dictionary by qualified_name.
		    Dictionary Schema:
		    MODULE
		    {
		        modules: {module_name: MODULE],
		        nodes: [NODE],
		        weights {qualified_name: WEIGHT},
		    }
		    NODE
		    {
		        shape: [],
		        stride: [],
		        dtype: dtype,
		        is_quantized: bool,
		        target: target,
		        op_code: op_code,
		        name: name,
		        args: [],
		        kwargs: {}
		    }
		    WEIGHT
		    {
		        dtype: dtype,
		        is_quantized: bool,
		        shape: [],
		        QUANTIZATION,
		    }
		    QUANTIZATION
		    {
		        qscheme: qscheme,
		        q_scale: float,
		        q_zero_point: float,
		        q_per_channel_scales, [],
		        q_per_channel_zero_points: [],
		        q_per_channel_axis, int
		    }
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_module(fx_module:Dynamic, weights:Dynamic, ?name_prefix:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_shape(shape:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_stride(stride:Dynamic):Dynamic;
	/**
		Args:
		    tensor: The tensor from which we try to extract quantization information.
		    weights: A dict that contains mapping from name to a tensor value.
		    pcq_prefix: A string that we would use later on as prefix for per channel quantization information. This
		        usually would be the key that we use to store info of `tensor`.
		
		Returns:
		    scheme: Dict that stores the quantization information of `tensor`.
		    per_channel_dict: Dict that stores the information of per_channel_scales and
		        per_channel_zero_points of `tensor`. This Will be empty if `tensor` is not
		        per channel quantized.
		
		`tensor` is per tensor quantized:
		    scheme: {
		        "qscheme": str(tensor.qscheme()),
		        "q_scale": tensor.q_scale(),
		        "q_zero_point": tensor.q_zero_point(),
		    }
		
		`tensor` is per channel quantized:
		    scheme: {
		        "qscheme": str(tensor.qscheme()),
		        "q_per_channel_scales": {pcq_prefix}_per_channel_scales,
		        "q_per_channel_zero_points": {pcq_prefix}_per_channel_zero_points,
		        "q_per_channel_axis": tensor.q_per_channel_axis()
		    }
		    per_channel_dict: {
		        {pcq_prefix}_per_channel_scales: {
		            "dtype": dtype,
		            "shape": shape,
		            "is_quantized": is_quantized,
		            "stride": stride,
		        }
		        {pcq_prefix}_per_channel_zero_points: {
		            "dtype": dtype,
		            "shape": shape,
		            "is_quantized": is_quantized,
		            "stride": stride,
		        }
		    }
		    weights would be updated with {
		        {pcq_prefix}_per_channel_scales: tensor.q_per_channel_scales().float()
		        {pcq_prefix}_per_channel_zero_points: tensor.q_per_channel_zero_points().int()
		    }
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_tensor_quantization(tensor:Dynamic, weights:Dynamic, pcq_prefix:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function serialize_weight(tensor:Dynamic, weights:Dynamic, name:Dynamic):Dynamic;
}