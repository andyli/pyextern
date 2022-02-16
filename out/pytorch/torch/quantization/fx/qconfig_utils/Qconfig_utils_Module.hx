/* This file is generated, do not edit! */
package torch.quantization.fx.qconfig_utils;
@:pythonImport("torch.quantization.fx.qconfig_utils") extern class Qconfig_utils_Module {
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
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _parent_name(target:Dynamic):Dynamic;
	/**
		This is a helper function for use in quantization prepare that updates a qconfig so that
		the constructors stored in the qconfig will create observers on the same device that
		'module' is on. This is intended to be used when the qconfigs are propagated to each
		module in order to avoid potential device alignment issues.
		
		Args:
		    qconfig: QConfig or QConfigDynamic with obs constructors stored in activation and weight
		    module: module which the qconfig is related to
		
		Return:
		    qconfig: configured so that obs constructors set to construct on the same device as module
	**/
	static public function add_module_to_qconfig_obs_ctr(qconfig:Dynamic, module:Dynamic):Dynamic;
	/**
		Checks if the given config_dict has the correct keys
		
		Args:
		  `config_dict`: dictionary whose keys we want to check
	**/
	static public function check_is_valid_config_dict(config_dict:Dynamic, allowed_keys:Dynamic, dict_name:Dynamic):Dynamic;
	/**
		Checks if the given convert_custom_config_dict has the correct keys
		
		Args:
		  `convert_custom_config_dict`: dictionary for custom configurations for
		  convert function
	**/
	static public function check_is_valid_convert_custom_config_dict(?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given fuse_custom_config_dict has the correct keys
		
		Args:
		  `fuse_custom_config_dict`: dictionary for custom configurations for fuse_fx
	**/
	static public function check_is_valid_fuse_custom_config_dict(?fuse_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given prepare_custom_config_dict has the correct keys
		
		Args:
		  `prepare_custom_config_dict`: customization configuration dictionary for
		  quantization tool
	**/
	static public function check_is_valid_prepare_custom_config_dict(?prepare_custom_config_dict:Dynamic):Dynamic;
	/**
		Checks if the given qconfig_dict has the correct keys
		
		Args:
		  `qconfig_dict`: dictionary whose keys we want to check
	**/
	static public function check_is_valid_qconfig_dict(qconfig_dict:Dynamic):Dynamic;
	/**
		Convert dict in qconfig_dict to ordered dict
		    
	**/
	static public function convert_dict_to_ordered_dict(qconfig_dict:Dynamic):Dynamic;
	static public function generate_qconfig_map(root:Dynamic, modules:Dynamic, input_graph:Dynamic, qconfig_dict:Dynamic, node_name_to_scope:Dynamic):Dynamic;
	/**
		flatten the global, object_type and module_name qconfig
		to the same qconfig_dict so that it can be used by
		propagate_qconfig_ function.
		"module_name_regex" is ignored for now since it's not supported
		in propagate_qconfig_, but it can be fixed later.
		
		For example:
		Input: {
		  "": qconfig,
		  "object_type": [
		    (torch.add, qconfig)
		  ],
		  "module_name": [
		    ("conv", qconfig)
		  ]
		}
		
		Output: {
		  "": qconfig,
		  torch.add: qconfig,
		  "conv": qconfig
		}
	**/
	static public function get_flattened_qconfig_dict(qconfig_dict:Dynamic):Dynamic;
	static public function get_module_name_qconfig(qconfig_dict:Dynamic, module_name:Dynamic, fallback_qconfig:Dynamic):Dynamic;
	static public function get_module_name_regex_qconfig(qconfig_dict:Dynamic, module_name:Dynamic, fallback_qconfig:Dynamic):Dynamic;
	static public function get_object_type_qconfig(qconfig_dict:Dynamic, object_type:Dynamic, fallback_qconfig:Dynamic):Dynamic;
	static public function maybe_adjust_qconfig_for_module_name_object_type_order(qconfig_dict:Dynamic, cur_module_path:Dynamic, cur_object_type:Dynamic, cur_object_type_idx:Dynamic, fallback_qconfig:Dynamic):Dynamic;
	static public function maybe_adjust_qconfig_for_module_type_or_name(qconfig_dict:Dynamic, module_type:Dynamic, module_name:Dynamic, global_qconfig:Dynamic):Dynamic;
}