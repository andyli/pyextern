/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.multi_head_attention;
@:pythonImport("tensorflow.python.keras.layers.multi_head_attention") extern class Multi_head_attention_Module {
	static public var _CHR_IDX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builds einsum equations for the attention computation.
		
		Query, key, value inputs after projection are expected to have the shape as:
		`(bs, <non-attention dims>, <attention dims>, num_heads, channels)`.
		`bs` and `<non-attention dims>` are treated as `<batch dims>`.
		
		The attention operations can be generalized:
		(1) Query-key dot product:
		`(<batch dims>, <query attention dims>, num_heads, channels), (<batch dims>,
		<key attention dims>, num_heads, channels) -> (<batch dims>,
		num_heads, <query attention dims>, <key attention dims>)`
		(2) Combination:
		`(<batch dims>, num_heads, <query attention dims>, <key attention dims>),
		(<batch dims>, <value attention dims>, num_heads, channels) -> (<batch dims>,
		<query attention dims>, num_heads, channels)`
		
		Args:
		  rank: Rank of query, key, value tensors.
		  attn_axes: List/tuple of axes, `[-1, rank)`,
		    that attention will be applied to.
		
		Returns:
		  Einsum equations.
	**/
	static public function _build_attention_equation(rank:Dynamic, attn_axes:Dynamic):Dynamic;
	/**
		Builds an einsum equation for projections inside multi-head attention.
	**/
	static public function _build_proj_equation(free_dims:Dynamic, bound_dims:Dynamic, output_dims:Dynamic):Dynamic;
	static public function _get_output_shape(output_rank:Dynamic, known_last_dims:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}