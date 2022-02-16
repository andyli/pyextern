/* This file is generated, do not edit! */
package torch.nn.utils.clip_grad;
@:pythonImport("torch.nn.utils.clip_grad") extern class Clip_grad_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _tensor_or_tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Clips gradient norm of an iterable of parameters.
		
		.. warning::
		    This method is now deprecated in favor of
		    :func:`torch.nn.utils.clip_grad_norm_`.
	**/
	static public function clip_grad_norm(parameters:Dynamic, max_norm:Dynamic, ?norm_type:Dynamic, ?error_if_nonfinite:Dynamic):Dynamic;
	/**
		Clips gradient norm of an iterable of parameters.
		
		The norm is computed over all gradients together, as if they were
		concatenated into a single vector. Gradients are modified in-place.
		
		Args:
		    parameters (Iterable[Tensor] or Tensor): an iterable of Tensors or a
		        single Tensor that will have gradients normalized
		    max_norm (float or int): max norm of the gradients
		    norm_type (float or int): type of the used p-norm. Can be ``'inf'`` for
		        infinity norm.
		    error_if_nonfinite (bool): if True, an error is thrown if the total
		        norm of the gradients from :attr:``parameters`` is ``nan``,
		        ``inf``, or ``-inf``. Default: False (will switch to True in the future)
		
		Returns:
		    Total norm of the parameters (viewed as a single vector).
	**/
	static public function clip_grad_norm_(parameters:Dynamic, max_norm:Dynamic, ?norm_type:Dynamic, ?error_if_nonfinite:Dynamic):Dynamic;
	/**
		Clips gradient of an iterable of parameters at specified value.
		
		Gradients are modified in-place.
		
		Args:
		    parameters (Iterable[Tensor] or Tensor): an iterable of Tensors or a
		        single Tensor that will have gradients normalized
		    clip_value (float or int): maximum allowed value of the gradients.
		        The gradients are clipped in the range
		        :math:`\left[\text{-clip\_value}, \text{clip\_value}\right]`
	**/
	static public function clip_grad_value_(parameters:Dynamic, clip_value:Dynamic):Dynamic;
	static public var inf : Dynamic;
}