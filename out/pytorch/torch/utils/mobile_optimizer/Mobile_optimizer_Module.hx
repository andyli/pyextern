/* This file is generated, do not edit! */
package torch.utils.mobile_optimizer;
@:pythonImport("torch.utils.mobile_optimizer") extern class Mobile_optimizer_Module {
	static public var AnyStr : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_bundled_inputs_preserved_attributes(script_module:Dynamic, preserved_methods:Dynamic):Dynamic;
	/**
		Args:
		    script_module: An instance of torch script module with type of ScriptModule
		
		Returns:
		    lint_map: A list of dictionary that contains modules lints
	**/
	static public function generate_mobile_module_lints(script_module:Dynamic):Dynamic;
	/**
		Args:
		    script_module: An instance of torch script module with type of ScriptModule.
		    optimization_blocklist: A set with type of MobileOptimizerType. When set is not passed,
		        optimization method will run all the optimizer pass; otherwise, optimizer
		        method will run the optimization pass that is not included inside optimization_blocklist.
		    preserved_methods: A list of methods that needed to be preserved when freeze_module pass is invoked
		    backend: Device type to use for running the result model ('CPU'(default), 'Vulkan' or 'Metal').
		Returns:
		    A new optimized torch script module
	**/
	static public function optimize_for_mobile(script_module:Dynamic, ?optimization_blocklist:Dynamic, ?preserved_methods:Dynamic, ?backend:Dynamic):Dynamic;
}