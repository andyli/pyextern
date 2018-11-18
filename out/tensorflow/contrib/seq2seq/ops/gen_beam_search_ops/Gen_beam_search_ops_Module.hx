/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.ops.gen_beam_search_ops;
@:pythonImport("tensorflow.contrib.seq2seq.ops.gen_beam_search_ops") extern class Gen_beam_search_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Calculates the full beams from the per-step ids and parent beam ids.
		
		On CPU, if an out of bound parent id is found, an error is returned.
		On GPU, if an out of bound parent id is found, a -1 is stored in the
		corresponding output value and the execution for that beam returns early.
		
		For a given beam, past the time step containing the first decoded `end_token`
		all values are filled in with `end_token`.
		
		TODO(ebrevdo): fill in the remainder of this docstring.
		
		Args:
		  step_ids: A `Tensor`. Must be one of the following types: `int32`.
		    `[max_time, batch_size, beam_width]`.
		  parent_ids: A `Tensor`. Must have the same type as `step_ids`.
		    `[max_time, batch_size, beam_width]`.
		  max_sequence_lengths: A `Tensor` of type `int32`. `[batch_size]`.
		  end_token: A `Tensor`. Must have the same type as `step_ids`. `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `step_ids`.
		  `[max_time, batch_size, beam_width]`.
	**/
	static public function gather_tree(step_ids:Dynamic, parent_ids:Dynamic, max_sequence_lengths:Dynamic, end_token:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function gather_tree
	**/
	static public function gather_tree_eager_fallback(step_ids:Dynamic, parent_ids:Dynamic, max_sequence_lengths:Dynamic, end_token:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}