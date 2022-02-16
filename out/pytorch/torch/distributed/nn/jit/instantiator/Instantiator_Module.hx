/* This file is generated, do not edit! */
package torch.distributed.nn.jit.instantiator;
@:pythonImport("torch.distributed.nn.jit.instantiator") extern class Instantiator_Module {
	static public var INSTANTIATED_TEMPLATE_DIR_PATH : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _FILE_PREFIX : Dynamic;
	static public var _TEMP_DIR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _do_instantiate_remote_module_template(generated_module_name:Dynamic, str_dict:Dynamic, enable_moving_cpu_tensors_to_cuda:Dynamic):Dynamic;
	static public function _write(out_path:Dynamic, text:Dynamic):Dynamic;
	static public function get_arg_return_types_from_interface(module_interface:Dynamic):Dynamic;
	static public function get_remote_module_template(enable_moving_cpu_tensors_to_cuda:Dynamic):Dynamic;
	static public function instantiate_non_scriptable_remote_module_template():Dynamic;
	static public function instantiate_scriptable_remote_module_template(module_interface_cls:Dynamic, ?enable_moving_cpu_tensors_to_cuda:Dynamic):Dynamic;
	static public var logger : Dynamic;
}