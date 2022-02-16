/* This file is generated, do not edit! */
package torch.fx.experimental.fx_acc.acc_utils;
@:pythonImport("torch.fx.experimental.fx_acc.acc_utils") extern class Acc_utils_Module {
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
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _get_qualified_name(func:Dynamic):Dynamic;
	static public function build_raw_tensor_meta(?shape:Dynamic, ?dtype:Dynamic, ?requires_grad:Dynamic, ?stride:Dynamic, ?memory_format:Dynamic, ?is_quantized:Dynamic, ?qscheme:Dynamic, ?q_scale:Dynamic, ?q_zero_point:Dynamic):Dynamic;
	static public function draw_graph(traced:Dynamic, fname:Dynamic, ?figname:Dynamic):Dynamic;
	/**
		After tracing NamedTuple inputs are converted to standard tuples, so we cannot
		access them by name directly. Use this helper instead.
	**/
	static public function get_field_from_acc_out_ty(acc_out_ty_or_dict:Dynamic, field:Dynamic):Dynamic;
	/**
		Make sure the name is unique (in a module) and can represents an attr.
	**/
	static public function get_unique_attr_name_in_module(mod_traced:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns whether `node_or_target` is an acc_op. If it's a node, then checks whether
		it's a call_function target is from the acc_ops module. Otherwise it's already
		the target, which is similarly checked to see if it's from the acc_ops module.
	**/
	static public function is_acc_op(node_or_target:Dynamic):Dynamic;
	/**
		Helper that inspects `node_or_target` and returns whether it is an acc_op node
		(or a target for an acc_op) that has an arg signature that includes `kwarg`.
	**/
	static public function is_acc_op_with_kwarg(node_or_target:Dynamic, kwarg:Dynamic):Dynamic;
	/**
		Print out info of the provided `gm`.
		If `header` is provided then it's included in the printed string.
	**/
	static public function print_model_info(gm:Dynamic, ?header:Dynamic):Dynamic;
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
	static public function serialize_module_json_to_file(fx_module:Dynamic, fname:Dynamic):Dynamic;
}