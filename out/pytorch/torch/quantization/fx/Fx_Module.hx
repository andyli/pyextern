/* This file is generated, do not edit! */
package torch.quantization.fx;
@:pythonImport("torch.quantization.fx") extern class Fx_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		Returns a quantized standalone module, whether input/output is quantized is
		specified by prepare_custom_config_dict, with
		input_quantized_idxs, output_quantized_idxs, please
		see docs for prepare_fx for details
	**/
	static public function convert(model:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic, ?is_standalone_module:Dynamic, ?_remove_qconfig_flag:Dynamic):Dynamic;
	/**
		Get the backend config dictionary for fbgemm backend
		NOTE: Current api will change in the future, it's just to unblock experimentation for
		new backends, please don't use it right now.
	**/
	static public function get_fbgemm_backend_config_dict():Dynamic;
	/**
		Get the backend config dictionary for tensorrt backend
		NOTE: Current api will change in the future, it's just to unblock experimentation for
		new backends, please don't use it right now.
	**/
	static public function get_tensorrt_backend_config_dict():Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		How the standalone module is observed is specified by `input_quantized_idxs` and
		`output_quantized_idxs` in the prepare_custom_config for the standalone module
		Args:
		    node_name_to_scope: mapping from node name to the scope of the module which contains the node.
		    The scope is a tuple of fully qualified path of the module and the type of the module
		Returns:
		    model(GraphModule): prepared standalone module
		    attributes:
		        _standalone_module_input_quantized_idxs(List[Int]): a list of
		            indexes for the graph input that is expected to be quantized,
		            same as input_quantized_idxs configuration provided
		            for the standalone module
		        _standalone_module_output_quantized_idxs(List[Int]): a list of
		            indexs for the graph output that is quantized
		            same as input_quantized_idxs configuration provided
		            for the standalone module
	**/
	static public function prepare(model:Dynamic, qconfig_dict:Dynamic, node_name_to_scope:Dynamic, ?prepare_custom_config_dict:Dynamic, ?equalization_qconfig_dict:Dynamic, ?backend_config_dict:Dynamic, ?is_standalone_module:Dynamic):Dynamic;
}