/* This file is generated, do not edit! */
package torch.nn.utils;
@:pythonImport("torch.nn.utils") extern class Utils_Module {
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
		Clips gradient norm of an iterable of parameters.
		
		.. warning::
		    This method is now deprecated in favor of
		    :func:`torch.nn.utils.clip_grad_norm_`.
	**/
	static public function clip_grad_norm(parameters:Dynamic, max_norm:Dynamic, ?norm_type:Dynamic):Dynamic;
	/**
		Clips gradient norm of an iterable of parameters.
		
		The norm is computed over all gradients together, as if they were
		concatenated into a single vector. Gradients are modified in-place.
		
		Arguments:
		    parameters (Iterable[Tensor] or Tensor): an iterable of Tensors or a
		        single Tensor that will have gradients normalized
		    max_norm (float or int): max norm of the gradients
		    norm_type (float or int): type of the used p-norm. Can be ``'inf'`` for
		        infinity norm.
		
		Returns:
		    Total norm of the parameters (viewed as a single vector).
	**/
	static public function clip_grad_norm_(parameters:Dynamic, max_norm:Dynamic, ?norm_type:Dynamic):Dynamic;
	/**
		Clips gradient of an iterable of parameters at specified value.
		
		Gradients are modified in-place.
		
		Arguments:
		    parameters (Iterable[Tensor] or Tensor): an iterable of Tensors or a
		        single Tensor that will have gradients normalized
		    clip_value (float or int): maximum allowed value of the gradients
		        The gradients are clipped in the range [-clip_value, clip_value]
	**/
	static public function clip_grad_value_(parameters:Dynamic, clip_value:Dynamic):Dynamic;
	/**
		Convert parameters to one vector
		
		Arguments:
		    parameters (Iterable[Tensor]): an iterator of Tensors that are the
		        parameters of a model.
		
		Returns:
		    The parameters represented by a single vector
	**/
	static public function parameters_to_vector(parameters:Dynamic):Dynamic;
	/**
		Removes the spectral normalization reparameterization from a module.
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		
		Example:
		    >>> m = spectral_norm(nn.Linear(40, 10))
		    >>> remove_spectral_norm(m)
	**/
	static public function remove_spectral_norm(module:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes the weight normalization reparameterization from a module.
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		
		Example:
		    >>> m = weight_norm(nn.Linear(20, 40))
		    >>> remove_weight_norm(m)
	**/
	static public function remove_weight_norm(module:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies spectral normalization to a parameter in the given module.
		
		.. math::
		     \mathbf{W} = \dfrac{\mathbf{W}}{\sigma(\mathbf{W})} \\
		     \sigma(\mathbf{W}) = \max_{\mathbf{h}: \mathbf{h} \ne 0} \dfrac{\|\mathbf{W} \mathbf{h}\|_2}{\|\mathbf{h}\|_2}
		
		Spectral normalization stabilizes the training of discriminators (critics)
		in Generaive Adversarial Networks (GANs) by rescaling the weight tensor
		with spectral norm :math:`\sigma` of the weight matrix calculated using
		power iteration method. If the dimension of the weight tensor is greater
		than 2, it is reshaped to 2D in power iteration method to get spectral
		norm. This is implemented via a hook that calculates spectral norm and
		rescales weight before every :meth:`~Module.forward` call.
		
		See `Spectral Normalization for Generative Adversarial Networks`_ .
		
		.. _`Spectral Normalization for Generative Adversarial Networks`: https://arxiv.org/abs/1802.05957
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		    n_power_iterations (int, optional): number of power iterations to
		        calculate spectal norm
		    eps (float, optional): epsilon for numerical stability in
		        calculating norms
		    dim (int, optional): dimension corresponding to number of outputs,
		        the default is 0, except for modules that are instances of
		        ConvTranspose1/2/3d, when it is 1
		
		Returns:
		    The original module with the spectal norm hook
		
		Example::
		
		    >>> m = spectral_norm(nn.Linear(20, 40))
		    Linear (20 -> 40)
		    >>> m.weight_u.size()
		    torch.Size([20])
	**/
	static public function spectral_norm(module:Dynamic, ?name:Dynamic, ?n_power_iterations:Dynamic, ?eps:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Convert one vector to the parameters
		
		Arguments:
		    vec (Tensor): a single vector represents the parameters of a model.
		    parameters (Iterable[Tensor]): an iterator of Tensors that are the
		        parameters of a model.
	**/
	static public function vector_to_parameters(vec:Dynamic, parameters:Dynamic):Dynamic;
	/**
		Applies weight normalization to a parameter in the given module.
		
		.. math::
		     \mathbf{w} = g \dfrac{\mathbf{v}}{\|\mathbf{v}\|}
		
		Weight normalization is a reparameterization that decouples the magnitude
		of a weight tensor from its direction. This replaces the parameter specified
		by `name` (e.g. "weight") with two parameters: one specifying the magnitude
		(e.g. "weight_g") and one specifying the direction (e.g. "weight_v").
		Weight normalization is implemented via a hook that recomputes the weight
		tensor from the magnitude and direction before every :meth:`~Module.forward`
		call.
		
		By default, with `dim=0`, the norm is computed independently per output
		channel/plane. To compute a norm over the entire weight tensor, use
		`dim=None`.
		
		See https://arxiv.org/abs/1602.07868
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		    dim (int, optional): dimension over which to compute the norm
		
		Returns:
		    The original module with the weight norm hook
		
		Example::
		
		    >>> m = weight_norm(nn.Linear(20, 40), name='weight')
		    Linear (20 -> 40)
		    >>> m.weight_g.size()
		    torch.Size([40, 1])
		    >>> m.weight_v.size()
		    torch.Size([40, 20])
	**/
	static public function weight_norm(module:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
}