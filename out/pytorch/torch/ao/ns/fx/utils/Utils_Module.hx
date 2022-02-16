/* This file is generated, do not edit! */
package torch.ao.ns.fx.utils;
@:pythonImport("torch.ao.ns.fx.utils") extern class Utils_Module {
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
	static public function NSNodeTargetType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NSResultsType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function compute_cosine_similarity(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compute_normalized_l2_error(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function compute_sqnr(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the indices of args of the node which we should attach
		loggers to, if input logging is enabled.
		
		For example,
		* for (x + y), returns [0, 1]
		* for (1 + y), returns [1]
		* for (x + 1), returns [0]
		* for (linear(x, w, b)) returns [0]
		* by default, returns [0]
	**/
	static public function get_arg_indices_of_inputs_to_log(node:Dynamic):Dynamic;
	static public function get_node_first_input_and_output_type(node:Dynamic, gm:Dynamic, logger_cls:Dynamic, node_type_to_io_type_map:Dynamic):Dynamic;
	/**
		Returns the qparams (scale, zero_point) of the first input to `node`,
		if they can be inferred from the graph.
	**/
	static public function get_node_input_qparams(node:Dynamic, gm:Dynamic, node_type_to_io_type_map:Dynamic):Dynamic;
	/**
		Assumes that all non-param args occur first. Returns the number of
		non-param args expected for a node.  For example, for
		
		  F.linear(x, weight, bias)
		
		Returns 1, because x is a non-param arg and weight and bias are params.
		For
		
		  lstm_mod(x, hid)
		
		Returns 2, because both x and hid are non-param args.
	**/
	static public function get_number_of_non_param_args(node:Dynamic, gm:Dynamic):Dynamic;
	/**
		Returns a string representation of the type of the function or module
		pointed to by this node, or '' for other node types.
	**/
	static public function get_target_type_str(node:Dynamic, gm:Dynamic):Dynamic;
	/**
		Given an obj and a fqn such as "foo.bar.baz", returns gm.foo.bar.baz.
	**/
	static public function getattr_from_fqn(obj:Dynamic, fqn:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		If `fqn` entries are filled in for one of the models in `results`, copies
		them over to any models which do not have them filled out.
		
		A common use case benefitting from this is comparing a model prepared by
		quantization to a quantized model. In this case, the model prepared by
		quantization would have `fqn` entries, and the quantized model would not.
	**/
	static public function maybe_add_missing_fqns(results:Dynamic):Dynamic;
	static public function maybe_dequantize_first_two_tensor_args_and_handle_tuples(f:Dynamic):Dynamic;
	/**
		Rekeys the layer name of a results dictionary to use node names
		from `model_name`.
		
		For example, transforms
		
		    {'base_op_1_0': {'node_output': {'model_a':
		      [{'ref_node_name': 'linear1', ...}]}}}
		
		into
		
		    {'linear1': {'node_output': {'model_a':
		      [{'ref_node_name': 'linear1', ...}]}}}
		
		Note: we cannot use these node names directly because they are not
		guaranteed to be consistent across models. This is why we extract
		the results first and rekey afterwards.
	**/
	static public function rekey_logger_info_on_node_name_of_model(results:Dynamic, model_name:Dynamic):Dynamic;
	/**
		If node is not an observer, returns it.  If node is an observer,
		navigates up the graph and returns the first parent which is not an
		observer.  For example,
		
		graph: (node_non_obs), node = node_non_obs : returns node_non_obs
		graph: (node_non_obs -> obs0), node = obs0 : returns node_non_obs
		graph: (node_non_obs -> obs0 -> fq0), node = fq0 : returns node_non_obs
	**/
	static public function return_first_non_observer_node(node:Dynamic, gm:Dynamic):Dynamic;
}