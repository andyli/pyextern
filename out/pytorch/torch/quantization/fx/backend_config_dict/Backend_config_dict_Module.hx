/* This file is generated, do not edit! */
package torch.quantization.fx.backend_config_dict;
@:pythonImport("torch.quantization.fx.backend_config_dict") extern class Backend_config_dict_Module {
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
	static public function validate_backend_config_dict(backend_config_dict:Dynamic):Dynamic;
}