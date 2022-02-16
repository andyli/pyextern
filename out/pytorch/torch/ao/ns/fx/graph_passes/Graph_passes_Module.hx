/* This file is generated, do not edit! */
package torch.ao.ns.fx.graph_passes;
@:pythonImport("torch.ao.ns.fx.graph_passes") extern class Graph_passes_Module {
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
		Simple copy of node_a to graph_c.
	**/
	static public function _copy_node_from_a_to_c(node_a:Dynamic, gm_a:Dynamic, gm_b:Dynamic, graph_c:Dynamic):Dynamic;
	/**
		Assume that node_a from graph_a has
		  args (input, (input2)?, arg1, ...), and
		  kwargs {kw0: kwarg0, ...}
		
		Note: input2 is optional. If it equals to None, we assume that the op
		has a single non-param input.  If it is specified, we assume that the op
		has two non-param inputs.
		
		Copies the underlying values of arg1..argn and kwarg0..kwargn into gm_b,
		and creates the corresponding nodes in graph_c. Note: observers are ignored,
		so if an arg is an observer we navigate up until we find a non-observer parent.
		
		If node_a is a call_module, points the module pointed to by node_a to gm_b.
		
		Creates the copy of node_a in graph_c, with input as the first arg,
		and all other args and kwargs pointing to the copies of the objects
		in gm_b created above.
		
		An example in pictures:
		
		graph A:
		========
		
		input -------------> node_a
		                     / / /
		(input_2)?----------/ / /
		                     / /
		weight -> weight_obs  /
		                     /
		bias ----------------
		
		graph C (derived from B):
		=========================
		
		input_node_c --> node_a_copy
		                 / / /
		(input_node_c_2)? / /
		                 / /
		weight_copy ----/ /
		                 /
		bias_copy ------/
	**/
	static public function _insert_copy_of_node_a_after_input_node_c(input_node_c:Dynamic, input_node_c_2:Dynamic, node_a:Dynamic, gm_a:Dynamic, gm_b:Dynamic, node_name_prefix:Dynamic):Dynamic;
	/**
		TODO(before land): real docblock
	**/
	static public function _insert_copy_of_subgraph_a_after_input_node_c(input_node_c:Dynamic, input_node_c_2:Dynamic, subgraph_a:Dynamic, gm_a:Dynamic, gm_b:Dynamic, node_name_prefix:Dynamic):Dynamic;
	/**
		Given a starting graph C (derived from graph B) of
		
		... -> prev_node_c -> node_c -> ...
		
		And a corresponding related node_a, inserts the correct dtype
		cast node after prev_node_c to cast into the dtype expected
		by node_a, resulting in:
		
		                      dtype_cast
		                    /
		... -> prev_node_c -> node_c -> ...
		
		For example, if node_c is an int8 op and node_a is an fp32 op, this function
		will insert a dequant.
	**/
	static public function _insert_dtype_cast_after_node(node_a:Dynamic, node_c:Dynamic, prev_node_c:Dynamic, gm_a:Dynamic, gm_b:Dynamic, graph_c:Dynamic, node_name_prefix:Dynamic, logger_cls:Dynamic, node_type_to_io_type_map:Dynamic):Dynamic;
	/**
		Given a starting graph of
		
		prev_node -> node -> next_node
		
		This function creates a new logger_cls obj and adds it
		after node, resulting in
		
		prev_node -> node -> logger_obj -> next_node
	**/
	static public function _insert_logger_after_node(node:Dynamic, gm:Dynamic, logger_cls:Dynamic, logger_node_name_suffix:Dynamic, ref_node_name:Dynamic, model_name:Dynamic, ref_name:Dynamic, ref_node_target_type:Dynamic, results_type:Dynamic, index_within_arg:Dynamic, index_of_arg:Dynamic, fqn:Dynamic):Dynamic;
	static public function _insert_quantize_per_tensor_node(prev_node_c:Dynamic, node_a:Dynamic, gm_b:Dynamic, graph_c:Dynamic, scale:Dynamic, zero_point:Dynamic, dtype_cast_name:Dynamic):Dynamic;
	static public function _maybe_get_fqn(node:Dynamic, gm:Dynamic):Dynamic;
	/**
		Takes the graph of gm, adds loggers to the output
		of each node in nodes_to_instrument. Returns a GraphModule with the new
		graph.
	**/
	static public function add_loggers_to_model(gm:Dynamic, node_to_instrument_inputs_to_ref_node_name:Dynamic, node_to_instrument_outputs_to_ref_node_name:Dynamic, logger_cls:Dynamic, model_name:Dynamic):Dynamic;
	/**
		Creates a new GraphModule consisting of the graph of C, with the meaningful
		nodes of A shadowing the corresponding nodes of B.  For example,
		
		Graph A:
		a0 -> op0_fp32 -> a1 -> op1_fp32 -> a2
		
		Graph B:
		b0 -> op0_int8 -> b1 -> op1_int8 -> b2
		
		matched_node_pairs: {'op0': (op0_fp32, op0_int8), 'op1': (op1_fp32, op1_int8)}
		
		Graph C (A shadows B):
		
		    / dequant0 -> op0_fp32 -> logger_a_0  / dequant_1 -> op1_fp32 -> logger_a_1
		   /                                     /
		b0 -------------> op0_int8 -> logger_b_0 --------------> op1_int8 -> logger_b_1
		
		In a nutshell, this function does the following for each node pair:
		* copies the necessary attributes and modules from gm_a to gm_b,
		  keeping names unique
		* adds a dtype cast op (dequant, quant, etc)
		* adds a copy of node_a in gm_b's graph
		* adds loggers to the outputs of node_a and node_b
	**/
	static public function create_a_shadows_b(name_a:Dynamic, gm_a:Dynamic, name_b:Dynamic, gm_b:Dynamic, matched_subgraph_pairs:Dynamic, logger_cls:Dynamic, should_log_inputs:Dynamic, ?node_type_to_io_type_map:Dynamic):Dynamic;
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
	static public function get_new_attr_name_with_prefix(prefix:Dynamic):Dynamic;
	static public function get_node_first_input_and_output_type(node:Dynamic, gm:Dynamic, logger_cls:Dynamic, node_type_to_io_type_map:Dynamic):Dynamic;
	/**
		Returns the qparams (scale, zero_point) of the first input to `node`,
		if they can be inferred from the graph.
	**/
	static public function get_node_input_qparams(node:Dynamic, gm:Dynamic, node_type_to_io_type_map:Dynamic):Dynamic;
	static public function get_node_type_to_io_type_map():Dynamic;
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
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
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