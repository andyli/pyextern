/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.multitask_optimizer_wrapper;
@:pythonImport("tensorflow.contrib.opt.python.training.multitask_optimizer_wrapper") extern class Multitask_optimizer_wrapper_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_wrapper(fn:Dynamic, opt:Dynamic):Dynamic;
	static public function _is_all_zeros(grad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clips gradients of a multitask loss by their global norm.
		
		Ignores all-zero tensors when computing the global norm.
		
		Args:
		  gradients_variables: a list of pairs (gradient, variable).
		  clip_norm: a float Tensor, the global norm to clip on. Default is 20.0.
		
		Returns:
		  list: A list of pairs of the same type as gradients_variables,.
		  fixed_global_norm: A 0-D (scalar) Tensor representing the global norm.
	**/
	static public function clip_gradients_by_global_norm(gradients_variables:Dynamic, ?clip_norm:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}