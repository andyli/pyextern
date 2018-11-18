/* This file is generated, do not edit! */
package torch.nn.utils.spectral_norm;
@:pythonImport("torch.nn.utils.spectral_norm") extern class Spectral_norm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Performs :math:`L_p` normalization of inputs over specified dimension.
		
		Does:
		
		.. math::
		    v = \frac{v}{\max(\lVert v \rVert_p, \epsilon)}
		
		for each subtensor v over dimension dim of input. Each subtensor is
		flattened into a vector, i.e. :math:`\lVert v \rVert_p` is not a matrix
		norm.
		
		With default arguments normalizes over the second dimension with Euclidean
		norm.
		
		Args:
		    input: input tensor of any shape
		    p (float): the exponent value in the norm formulation. Default: 2
		    dim (int): the dimension to reduce. Default: 1
		    eps (float): small value to avoid division by zero. Default: 1e-12
	**/
	static public function normalize(input:Dynamic, ?p:Dynamic, ?dim:Dynamic, ?eps:Dynamic):Dynamic;
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
		Applies spectral normalization to a parameter in the given module.
		
		.. math::
		     \mathbf{W} &= \dfrac{\mathbf{W}}{\sigma(\mathbf{W})} \\
		     \sigma(\mathbf{W}) &= \max_{\mathbf{h}: \mathbf{h} \ne 0} \dfrac{\|\mathbf{W} \mathbf{h}\|_2}{\|\mathbf{h}\|_2}
		
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
}