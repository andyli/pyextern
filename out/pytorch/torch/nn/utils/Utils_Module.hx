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
	/**
		Convert ``memory_format`` of ``nn.Conv2d.weight`` to ``memory_format``
		The conversion recursively applies to nested ``nn.Module``, including ``module``.
		Note that it only changes the memory_format, but not the semantics of each dimensions.
		This function is used to facilitate the computation to adopt NHWC kernels, which
		provides considerable speed up for fp16 data on CUDA devices with compute capability >= 7.0
		
		.. note::
		    Calling ``model.to(memory_format=torch.channels_last)`` is more aggressive
		    than the utility function ``convert_conv2d_weight_memory_format``. Any
		    layer with 4d weight will be affected by ``model.to``, which does not
		    necessarily benefit from conversion to specified ``memory_format``.
		    One place we are confident in is that NHWC(channels_last) conversion for
		    convolution in cuDNN, As it is beneficial to run convolution in NHWC,
		    even in cases where we have to apply permutation to input tensors.
		
		    Hence our strategy here is to convert only the weight of convolution to
		    channels_last. This ensures that;
		    1. Fast convolution kernels will be used, the benefit of which could
		       outweigh overhead of permutation (if input is not in the same format)
		    2. No unnecessary permutations are applied on layers that do not benefit
		       from memory_format conversion.
		
		    The optimal case is that, layers between convolution layers are channels
		    last compatible. Input tensor would be permuted to channels last when it
		    encounters the first convolution layer and stay in that memory format.
		    Hence following convolutions will not need to permute its input tensor.
		
		    In case where a channels last incompatible layer is between convolution
		    layers, we need to permute the input tensor back to contiguous format
		    for that layer. The input tensor will go through the remaining layers in
		    contiguous format and be permuted to channels last when it encounters
		    another convolution layer. There's no point in propagating that
		    permutation to an earlier layer, as most layers are quite agnostic to
		    ``memory_format``.
		
		    This claim might change when PyTorch supports fusion of permutation, as
		    there might have been a better spot to fuse the permutation other than
		    immediately before a convolution.
		
		Args:
		    module (nn.Module): ``nn.Conv2d`` & ``nn.ConvTranspose2d``  or container
		                        ``nn.Module``
		    format: user specified ``memory_format``,
		        e.g. ``torch.channels_last`` or ``torch.contiguous_format``
		
		Returns:
		    The original module with updated ``nn.Conv2d``
		
		Example:
		    >>>  input = torch.randint(1, 10, (2, 8, 4, 4), dtype=torch.float16, device="cuda")
		    >>>  model = nn.Sequential(
		    >>>      nn.Conv2d(8, 4, 3)).cuda().half()
		    >>>  # This is identical to:
		    >>>  # nn.utils.convert_conv2d_weight_memory_format(model, torch.channels_last)
		    >>>  model = nn.utils.convert_conv2d_weight_memory_format(model, torch.channels_last)
		    >>>  out = model(input)
	**/
	static public function convert_conv2d_weight_memory_format(module:Dynamic, memory_format:Dynamic):Dynamic;
	static public function fuse_conv_bn_eval(conv:Dynamic, bn:Dynamic):Dynamic;
	static public function fuse_conv_bn_weights(conv_w:Dynamic, conv_b:Dynamic, bn_rm:Dynamic, bn_rv:Dynamic, bn_eps:Dynamic, bn_w:Dynamic, bn_b:Dynamic):Dynamic;
	/**
		Convert parameters to one vector
		
		Args:
		    parameters (Iterable[Tensor]): an iterator of Tensors that are the
		        parameters of a model.
		
		Returns:
		    The parameters represented by a single vector
	**/
	static public function parameters_to_vector(parameters:Dynamic):Dynamic;
	/**
		Removes the spectral normalization reparameterization from a module.
		
		Args:
		    module (Module): containing module
		    name (str, optional): name of weight parameter
		
		Example:
		    >>> m = spectral_norm(nn.Linear(40, 10))
		    >>> remove_spectral_norm(m)
	**/
	static public function remove_spectral_norm(module:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Removes the weight normalization reparameterization from a module.
		
		Args:
		    module (Module): containing module
		    name (str, optional): name of weight parameter
		
		Example:
		    >>> m = weight_norm(nn.Linear(20, 40))
		    >>> remove_weight_norm(m)
	**/
	static public function remove_weight_norm(module:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Given a module class object and args / kwargs, instantiates the module without initializing
		parameters / buffers.  This can be useful if initialization is slow or if custom initialization will
		be performed, making the default initialization unnecessary. There are some caveats to this, due to
		the way this function is implemented:
		
		1. The module must accept a `device` arg in its constructor that is passed to any parameters
		or buffers created during construction.
		
		2. The module must not perform any computation on parameters in its constructor except
		initialization (i.e. functions from :mod:`torch.nn.init`).
		
		If these conditions are satisfied, the module can be instantiated with parameter / buffer values
		uninitialized, as if having been created using :func:`torch.empty`.
		
		Args:
		    module_cls: Class object; should be a subclass of :class:`torch.nn.Module`
		    args: args to pass to the module's constructor
		    kwargs: kwargs to pass to the module's constructor
		
		Returns:
		    Instantiated module with uninitialized parameters / buffers
		
		Example::
		
		    >>> import torch
		    >>> m = torch.nn.utils.skip_init(torch.nn.Linear, 5, 1)
		    >>> m.weight
		    Parameter containing:
		    tensor([[0.0000e+00, 1.5846e+29, 7.8307e+00, 2.5250e-29, 1.1210e-44]],
		           requires_grad=True)
		    >>> m2 = torch.nn.utils.skip_init(torch.nn.Linear, in_features=6, out_features=1)
		    >>> m2.weight
		    Parameter containing:
		    tensor([[-1.4677e+24,  4.5915e-41,  1.4013e-45,  0.0000e+00, -1.4677e+24,
		              4.5915e-41]], requires_grad=True)
	**/
	static public function skip_init(module_cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies spectral normalization to a parameter in the given module.
		
		.. math::
		    \mathbf{W}_{SN} = \dfrac{\mathbf{W}}{\sigma(\mathbf{W})},
		    \sigma(\mathbf{W}) = \max_{\mathbf{h}: \mathbf{h} \ne 0} \dfrac{\|\mathbf{W} \mathbf{h}\|_2}{\|\mathbf{h}\|_2}
		
		Spectral normalization stabilizes the training of discriminators (critics)
		in Generative Adversarial Networks (GANs) by rescaling the weight tensor
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
		        calculate spectral norm
		    eps (float, optional): epsilon for numerical stability in
		        calculating norms
		    dim (int, optional): dimension corresponding to number of outputs,
		        the default is ``0``, except for modules that are instances of
		        ConvTranspose{1,2,3}d, when it is ``1``
		
		Returns:
		    The original module with the spectral norm hook
		
		.. note::
		    This function has been reimplemented as
		    :func:`torch.nn.utils.parametrizations.spectral_norm` using the new
		    parametrization functionality in
		    :func:`torch.nn.utils.parametrize.register_parametrization`. Please use
		    the newer version. This function will be deprecated in a future version
		    of PyTorch.
		
		Example::
		
		    >>> m = spectral_norm(nn.Linear(20, 40))
		    >>> m
		    Linear(in_features=20, out_features=40, bias=True)
		    >>> m.weight_u.size()
		    torch.Size([40])
	**/
	static public function spectral_norm(module:Dynamic, ?name:Dynamic, ?n_power_iterations:Dynamic, ?eps:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Convert one vector to the parameters
		
		Args:
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
		by :attr:`name` (e.g. ``'weight'``) with two parameters: one specifying the magnitude
		(e.g. ``'weight_g'``) and one specifying the direction (e.g. ``'weight_v'``).
		Weight normalization is implemented via a hook that recomputes the weight
		tensor from the magnitude and direction before every :meth:`~Module.forward`
		call.
		
		By default, with ``dim=0``, the norm is computed independently per output
		channel/plane. To compute a norm over the entire weight tensor, use
		``dim=None``.
		
		See https://arxiv.org/abs/1602.07868
		
		Args:
		    module (Module): containing module
		    name (str, optional): name of weight parameter
		    dim (int, optional): dimension over which to compute the norm
		
		Returns:
		    The original module with the weight norm hook
		
		Example::
		
		    >>> m = weight_norm(nn.Linear(20, 40), name='weight')
		    >>> m
		    Linear(in_features=20, out_features=40, bias=True)
		    >>> m.weight_g.size()
		    torch.Size([40, 1])
		    >>> m.weight_v.size()
		    torch.Size([40, 20])
	**/
	static public function weight_norm(module:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
}