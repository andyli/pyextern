/* This file is generated, do not edit! */
package torch.onnx.utils;
@:pythonImport("torch.onnx.utils") extern class Utils_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ONNX_ARCHIVE_MODEL_PROTO_NAME : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __IN_ONNX_EXPORT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		initializes the right attribute based on type of value 
	**/
	static public function _add_attribute(node:Dynamic, key:Dynamic, value:Dynamic, aten:Dynamic):Dynamic;
	static public function _add_block(node:Dynamic):Dynamic;
	static public function _add_input_to_block(block:Dynamic):Dynamic;
	static public function _add_output_to_block(block:Dynamic, value:Dynamic):Dynamic;
	static public function _block_op(b:Dynamic, opname:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		_check_onnx_proto(proto_string: str) -> None
	**/
	static public function _check_onnx_proto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _create_jit_graph(model:Dynamic, args:Dynamic):Dynamic;
	static public function _decide_add_node_names(add_node_names:Dynamic, operator_export_type:Dynamic):Dynamic;
	static public function _decide_constant_folding(do_constant_folding:Dynamic, operator_export_type:Dynamic, training:Dynamic):Dynamic;
	static public function _decide_external_data_format(use_external_data_format:Dynamic, operator_export_type:Dynamic, f:Dynamic):Dynamic;
	static public function _decide_input_format(model:Dynamic, args:Dynamic):Dynamic;
	static public function _decide_keep_init_as_input(keep_initializers_as_inputs:Dynamic, operator_export_type:Dynamic, opset_version:Dynamic):Dynamic;
	static public function _export(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?opset_version:Dynamic, ?do_constant_folding:Dynamic, ?dynamic_axes:Dynamic, ?keep_initializers_as_inputs:Dynamic, ?fixed_batch_size:Dynamic, ?custom_opsets:Dynamic, ?add_node_names:Dynamic, ?use_external_data_format:Dynamic, ?onnx_shape_inference:Dynamic):Dynamic;
	static public function _export_to_pretty_string(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?google_printer:Dynamic, ?opset_version:Dynamic, ?do_constant_folding:Dynamic, ?keep_initializers_as_inputs:Dynamic, ?fixed_batch_size:Dynamic, ?custom_opsets:Dynamic, ?add_node_names:Dynamic, ?onnx_shape_inference:Dynamic, ?dynamic_axes:Dynamic):Dynamic;
	/**
		This diagnostic tool runs your model with operator_export_type set to
		OperatorExportTypes.ONNX_FALLTHROUGH once in order to get a list of
		all the ops that are not supported/implemented by the current exporter
		
		operator_export_type is set to OperatorExportTypes.ONNX_FALLTHROUGH by default
		    OperatorExportTypes.ONNX_FALLTHROUGH: If an op is not supported
		    in ONNX, fall through and export the operator as is, as a custom
		    ONNX op. Using this mode, the op can be exported and implemented by
		    the user for their runtime backend.
		    Example graph::
		
		        graph(%0 : Float(2, 3, 4, strides=[12, 4, 1], requires_grad=0, device=cpu)):
		            %6 : Long(requires_grad=0, device=cpu) = prim::Constant[value={0}]()
		            %4 : None = prim::Constant()
		            %5 : Float(2, 3, 4, strides=[12, 4, 1], requires_grad=0, device=cpu) = aten::cumsum(%0, %6, %4) # main.py:6:0
		            return (%5)
		
		    is exported as::
		
		        graph(%0 : Float(2, 3, 4, strides=[12, 4, 1], requires_grad=0, device=cpu)):
		            %6 : Long(requires_grad=0, device=cpu) = prim::Constant[value={0}]()
		            %4 : None = prim::Constant()
		            %5 : Float(2, 3, 4, strides=[12, 4, 1], requires_grad=0, device=cpu) = aten::cumsum(%0, %6, %4) # main.py:6:0
		            return (%5)
		
		    In the above example, aten::cumsum in not implemented in opset 9, hence exporter falls
		    through and provides a list of unsupported ops, the result being:
		        Unsupported ops : [aten:cumsum]
	**/
	static public function _find_missing_ops_onnx_export(model:Dynamic, args:Dynamic, f:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?opset_version:Dynamic, ?dynamic_axes:Dynamic):Dynamic;
	static public function _find_symbolic_in_registry(domain:Dynamic, op_name:Dynamic, opset_version:Dynamic, operator_export_type:Dynamic):Dynamic;
	static public function _get_example_outputs(model:Dynamic, args:Dynamic):Dynamic;
	static public function _get_named_param_dict(graph:Dynamic, params:Dynamic):Dynamic;
	static public function _get_param_count_list(method_graph:Dynamic, args_params:Dynamic):Dynamic;
	static public function _graph_at(g:Dynamic, opname:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _graph_constant(g:Dynamic, value:Dynamic, dims:Dynamic, type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create an ONNX operator "opname", taking "args" as inputs and attributes
		"kwargs"; returning the node representing the single output of this operator
		(see the `outputs` keyword argument for multi-return nodes).
		
		The set of operators and the inputs/attributes they take
		is documented at https://github.com/onnx/onnx/blob/master/docs/Operators.md
		
		This function is monkey-patched onto Graph.
		
		Args:
		    opname (string): The ONNX operator name, e.g., `Abs` or `Add`.
		    args (Node...): The inputs to the operator; usually provided
		        as arguments to the `symbolic` definition.
		    kwargs: The attributes of the ONNX operator, with keys named
		        according to the following convention: `alpha_f` indicates
		        the `alpha` attribute with type `f`.  The valid type specifiers are
		        `f` (float), `i` (int), `s` (string) or `t` (Tensor).  An attribute
		        specified with type float accepts either a single float, or a
		        list of floats (e.g., you would say `dims_i` for a `dims` attribute
		        that takes a list of integers).
		    outputs (int, optional):  The number of outputs this operator returns;
		        by default an operator is assumed to return a single output.
		        If `outputs` is greater than one, this functions returns a tuple
		        of output `Node`, representing each output of the ONNX operator
		        in positional.
	**/
	static public function _graph_op(g:Dynamic, opname:Dynamic, ?raw_args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _is_constant_tensor_list(node:Dynamic):Dynamic;
	static public function _is_onnx_list(value:Dynamic):Dynamic;
	/**
		Converts model into an ONNX graph.
		
		Returns:
		  graph (torch._C.Graph): A TorchScript IR Graph with ONNX nodes.
		  params_dict (Dict[str, torch.Tensor]): Dict from input param name to param value.
		  torch_out (Union[NoneType, torch.Tensor, Tuple[torch.Tensor], List[torch.Tensor]]):
		    The output tensors resulting from the trace of ``model``.
		    If ``model`` is a :class:`torch.jit.ScriptModule` or :class:`torch.jit.ScriptFunction`,
		    this will be None, since we are not doing any tracing.
	**/
	static public function _model_to_graph(model:Dynamic, args:Dynamic, ?verbose:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?example_outputs:Dynamic, ?do_constant_folding:Dynamic, ?_disable_torch_constant_prop:Dynamic, ?fixed_batch_size:Dynamic, ?training:Dynamic, ?dynamic_axes:Dynamic):Dynamic;
	static public function _newNode(g:Dynamic, opname:Dynamic, outputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Accessor for attributes of a node which is polymorphic over
		return type.
		
		NB: This is monkey-patched onto Node.
	**/
	static public function _node_getitem(self:Dynamic, k:Dynamic):Dynamic;
	static public function _optimize_graph(graph:Dynamic, operator_export_type:Dynamic, ?_disable_torch_constant_prop:Dynamic, ?fixed_batch_size:Dynamic, ?params_dict:Dynamic, ?dynamic_axes:Dynamic, ?input_names:Dynamic, ?module:Dynamic):Dynamic;
	static public var _params_dict : Dynamic;
	/**
		_propagate_and_assign_input_shapes(arg0: torch._C.Graph, arg1: List[at::Tensor], arg2: List[int], arg3: bool, arg4: bool) -> torch._C.Graph
	**/
	static public function _propagate_and_assign_input_shapes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _resolve_args_by_export_type(arg_name:Dynamic, arg_value:Dynamic, operator_export_type:Dynamic):Dynamic;
	static public function _run_symbolic_function(g:Dynamic, block:Dynamic, n:Dynamic, inputs:Dynamic, env:Dynamic, ?operator_export_type:Dynamic):Dynamic;
	/**
		This trampoline function gets invoked for every symbolic method
		call from C++.
	**/
	static public function _run_symbolic_method(g:Dynamic, op_name:Dynamic, symbolic_fn:Dynamic, args:Dynamic):Dynamic;
	/**
		Convert a scalar tensor into a Python value.
	**/
	static public function _scalar(x:Dynamic):Dynamic;
	static public function _set_input_and_output_names(graph:Dynamic, input_names:Dynamic, output_names:Dynamic):Dynamic;
	static public function _split_tensor_list_constants(g:Dynamic, block:Dynamic):Dynamic;
	static public function _trace(func:Dynamic, args:Dynamic, operator_export_type:Dynamic, ?return_outs:Dynamic):Dynamic;
	static public function _trace_and_get_graph_from_model(model:Dynamic, args:Dynamic):Dynamic;
	static public function _unique_state_dict(module:Dynamic, ?keep_vars:Dynamic):Dynamic;
	static public function _validate_dynamic_axes(dynamic_axes:Dynamic, model:Dynamic, input_names:Dynamic, output_names:Dynamic):Dynamic;
	static public var attr_pattern : Dynamic;
	static public function export(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?opset_version:Dynamic, ?_retain_param_name:Dynamic, ?do_constant_folding:Dynamic, ?example_outputs:Dynamic, ?strip_doc_string:Dynamic, ?dynamic_axes:Dynamic, ?keep_initializers_as_inputs:Dynamic, ?custom_opsets:Dynamic, ?enable_onnx_checker:Dynamic, ?use_external_data_format:Dynamic):Dynamic;
	static public function export_to_pretty_string(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?google_printer:Dynamic, ?opset_version:Dynamic, ?_retain_param_name:Dynamic, ?keep_initializers_as_inputs:Dynamic, ?custom_opsets:Dynamic, ?add_node_names:Dynamic, ?do_constant_folding:Dynamic, ?dynamic_axes:Dynamic):Dynamic;
	static public function get_ns_op_name_from_custom_op(symbolic_name:Dynamic):Dynamic;
	static public function is_in_onnx_export():Dynamic;
	static public function register_custom_op_symbolic(symbolic_name:Dynamic, symbolic_fn:Dynamic, opset_version:Dynamic):Dynamic;
	static public function select_model_mode_for_export(model:Dynamic, mode:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
	static public function unregister_custom_op_symbolic(symbolic_name:Dynamic, opset_version:Dynamic):Dynamic;
	static public function warn_on_static_input_change(input_states:Dynamic):Dynamic;
}