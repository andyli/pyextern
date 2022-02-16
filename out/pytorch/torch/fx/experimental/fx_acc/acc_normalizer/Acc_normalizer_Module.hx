/* This file is generated, do not edit! */
package torch.fx.experimental.fx_acc.acc_normalizer;
@:pythonImport("torch.fx.experimental.fx_acc.acc_normalizer") extern class Acc_normalizer_Module {
	static public var ALIAS_MAP : Dynamic;
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArgReplacementTuplesType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _acc_ops : Dynamic;
	/**
		Helper that inspects the arg signature of `fn` and returns a list of tuples, where
		each tuple is a pair of duplicated names which is used for arg_replacement_tuples.
	**/
	static public function _get_dup_signature_tuples(fn:Dynamic):Dynamic;
	static public function _get_qualified_name(func:Dynamic):Dynamic;
	static public function _insert_fun(op_and_target:Dynamic, arg_replacement_tuples:Dynamic, ?new_fn_target:Dynamic, ?custom_mapping_fn:Dynamic, ?kwargs_to_move_to_acc_out_ty:Dynamic, ?needs_shapes_for_normalization:Dynamic, ?allow_normalize_from_torch_package:Dynamic):Dynamic;
	static public var _normalization_dict : Dynamic;
	static public function get_normalized_kwargs(node:Dynamic, arg_replacement_tuples:Dynamic):Dynamic;
	/**
		Given `node_or_normalization_info` which is either NormalizationInfo for a node, or
		a node to fetch NormalizationInfo for, check if kwargs_to_move_to_acc_out_ty exists
		in the NormalizationInfo, and if so perform the move of kwargs to acc_out_ty.
	**/
	static public function move_kwargs_to_acc_out_ty(node_or_normalization_info:Dynamic, new_kwargs:Dynamic):Dynamic;
	static public function normalize(mod:Dynamic, ?expect_nodes_have_shapes:Dynamic):Dynamic;
	/**
		For a new acc op, add this as decorator to register it.
	**/
	static public function register_acc_op(acc_op:Dynamic):Dynamic;
	/**
		Use this decorator to map a non-acc operator to an acc operator.
		
		Args:
		    op_and_target: A tuple that contains op and target of the node that represents the non-acc operator.
		    arg_replacement_tuples: Please refer to the comment on above for `ArgReplacementTuplesType`.
		    kwargs_to_move_to_acc_out_ty: The kwargs we want to move out from the non-acc op kwargs to acc_out_ty.
	**/
	static public function register_acc_op_mapping(op_and_target:Dynamic, ?arg_replacement_tuples:Dynamic, ?kwargs_to_move_to_acc_out_ty:Dynamic):Dynamic;
	static public function register_custom_acc_mapper_fn(op_and_target:Dynamic, arg_replacement_tuples:Dynamic, ?needs_shapes_for_normalization:Dynamic, ?allow_normalize_from_torch_package:Dynamic):Dynamic;
}