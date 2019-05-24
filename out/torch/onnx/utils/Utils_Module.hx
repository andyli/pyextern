/* This file is generated, do not edit! */
package torch.onnx.utils;
@:pythonImport("torch.onnx.utils") extern class Utils_Module {
	static public var ONNX_ARCHIVE_MODEL_PROTO_NAME : Dynamic;
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
	static public function _export(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?propagate:Dynamic):Dynamic;
	static public function _export_to_pretty_string(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?propagate:Dynamic, ?google_printer:Dynamic):Dynamic;
	static public function _graph_at(g:Dynamic, opname:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _graph_constant(g:Dynamic, value:Dynamic, dims:Dynamic, type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create an ONNX operator 'opname', taking 'args' as inputs and attributes
		'kwargs'; returning the node representing the single output of this operator
		(see the `outputs` keyword argument for multi-return nodes).
		
		The set of operators and the inputs/attributes they take
		is documented at https://github.com/onnx/onnx/blob/master/docs/Operators.md
		
		This function is monkey-patched onto Graph.
		
		Arguments:
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
	static public function _is_onnx_list(value:Dynamic):Dynamic;
	static public function _model_to_graph(model:Dynamic, args:Dynamic, f:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?operator_export_type:Dynamic, ?example_outputs:Dynamic, ?propagate:Dynamic):Dynamic;
	static public function _newNode(g:Dynamic, opname:Dynamic, outputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Accessor for attributes of a node which is polymorphic over
		return type.
		
		NB: This is monkey-patched onto Node.
	**/
	static public function _node_getitem(self:Dynamic, k:Dynamic):Dynamic;
	static public function _optimize_graph(graph:Dynamic, operator_export_type:Dynamic):Dynamic;
	static public function _run_symbolic_function(g:Dynamic, n:Dynamic, inputs:Dynamic, env:Dynamic, ?operator_export_type:Dynamic):Dynamic;
	/**
		This trampoline function gets invoked for every symbolic method
		call from C++.
	**/
	static public function _run_symbolic_method(op_name:Dynamic, symbolic_fn:Dynamic, args:Dynamic):Dynamic;
	/**
		Convert a scalar tensor into a Python value.
	**/
	static public function _scalar(x:Dynamic):Dynamic;
	static public function _set_input_and_output_names(graph:Dynamic, input_names:Dynamic, output_names:Dynamic):Dynamic;
	static public function _split_tensor_list_constants(g:Dynamic, block:Dynamic):Dynamic;
	static public function _trace(func:Dynamic, args:Dynamic, operator_export_type:Dynamic, ?return_outs:Dynamic):Dynamic;
	static public function _trace_and_get_graph_from_model(model:Dynamic, args:Dynamic, training:Dynamic):Dynamic;
	static public function _unique_state_dict(module:Dynamic, ?keep_vars:Dynamic):Dynamic;
	static public var attr_pattern : Dynamic;
	/**
		Export a model into ONNX format.  This exporter runs your model
		once in order to get a trace of its execution to be exported;
		at the moment, it supports a limited set of dynamic models (e.g., RNNs.)
		
		See also: :ref:`onnx-export`
		
		Arguments:
		    model (torch.nn.Module): the model to be exported.
		    args (tuple of arguments): the inputs to
		        the model, e.g., such that ``model(*args)`` is a valid
		        invocation of the model.  Any non-Tensor arguments will
		        be hard-coded into the exported model; any Tensor arguments
		        will become inputs of the exported model, in the order they
		        occur in args.  If args is a Tensor, this is equivalent
		        to having called it with a 1-ary tuple of that Tensor.
		        (Note: passing keyword arguments to the model is not currently
		        supported.  Give us a shout if you need it.)
		    f: a file-like object (has to implement fileno that returns a file descriptor)
		        or a string containing a file name.  A binary Protobuf will be written
		        to this file.
		    export_params (bool, default True): if specified, all parameters will
		        be exported.  Set this to False if you want to export an untrained model.
		        In this case, the exported model will first take all of its parameters
		        as arguments, the ordering as specified by ``model.state_dict().values()``
		    verbose (bool, default False): if specified, we will print out a debug
		        description of the trace being exported.
		    training (bool, default False): export the model in training mode.  At
		        the moment, ONNX is oriented towards exporting models for inference
		        only, so you will generally not need to set this to True.
		    input_names(list of strings, default empty list): names to assign to the
		        input nodes of the graph, in order
		    output_names(list of strings, default empty list): names to assign to the
		        output nodes of the graph, in order
		    aten (bool, default False): [DEPRECATED. use operator_export_type] export the
		        model in aten mode. If using aten mode, all the ops original exported
		        by the functions in symbolic.py are exported as ATen ops.
		    export_raw_ir (bool, default False): [DEPRECATED. use operator_export_type]
		        export the internal IR directly instead of converting it to ONNX ops.
		    operator_export_type (enum, default OperatorExportTypes.ONNX):
		        OperatorExportTypes.ONNX: all ops are exported as regular ONNX ops.
		        OperatorExportTypes.ONNX_ATEN: all ops are exported as ATen ops.
		        OperatorExportTypes.ONNX_ATEN_FALLBACK: if symbolic is missing,
		                                                fall back on ATen op.
		        OperatorExportTypes.RAW: export raw ir.
	**/
	static public function export(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?aten:Dynamic, ?export_raw_ir:Dynamic, ?operator_export_type:Dynamic):Dynamic;
	static public function export_to_pretty_string(model:Dynamic, args:Dynamic, f:Dynamic, ?export_params:Dynamic, ?verbose:Dynamic, ?training:Dynamic, ?input_names:Dynamic, ?output_names:Dynamic, ?aten:Dynamic, ?export_raw_ir:Dynamic, ?operator_export_type:Dynamic, ?export_type:Dynamic, ?example_outputs:Dynamic, ?propagate:Dynamic, ?google_printer:Dynamic):Dynamic;
	/**
		A context manager to temporarily set the training mode of 'model'
		to 'mode', resetting it when we exit the with-block.  A no-op if
		mode is None.
	**/
	static public function set_training(model:Dynamic, mode:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
}