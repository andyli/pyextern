/* This file is generated, do not edit! */
package torch.nn.utils.clip_grad;
@:pythonImport("torch.nn.utils.clip_grad") extern class Clip_grad_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Clips gradient norm of an iterable of parameters.
		
		The norm is computed over all gradients together, as if they were
		concatenated into a single vector. Gradients are modified in-place.
		
		Arguments:
		    parameters (Iterable[Variable]): an iterable of Variables that will have
		        gradients normalized
		    max_norm (float or int): max norm of the gradients
		    norm_type (float or int): type of the used p-norm. Can be ``'inf'`` for infinity norm.
		
		Returns:
		    Total norm of the parameters (viewed as a single vector).
	**/
	static public function clip_grad_norm(parameters:Dynamic, max_norm:Dynamic, ?norm_type:Dynamic):Dynamic;
}