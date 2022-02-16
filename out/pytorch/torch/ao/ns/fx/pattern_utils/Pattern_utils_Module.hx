/* This file is generated, do not edit! */
package torch.ao.ns.fx.pattern_utils;
@:pythonImport("torch.ao.ns.fx.pattern_utils") extern class Pattern_utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSFusionElType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSFusionType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSNodeTargetType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if a pattern ending with `end_node` matches
		the fusion pattern.
	**/
	static public function end_node_matches_reversed_fusion(end_node:Dynamic, reversed_fusion:Dynamic, gm:Dynamic):Dynamic;
	static public function get_default_quant_patterns():Dynamic;
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
	/**
		Given an obj and a fqn such as "foo.bar.baz", returns gm.foo.bar.baz.
	**/
	static public function getattr_from_fqn(obj:Dynamic, fqn:Dynamic):Dynamic;
}