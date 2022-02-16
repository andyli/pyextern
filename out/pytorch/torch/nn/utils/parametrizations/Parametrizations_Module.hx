/* This file is generated, do not edit! */
package torch.nn.utils.parametrizations;
@:pythonImport("torch.nn.utils.parametrizations") extern class Parametrizations_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_orthogonal(Q:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Assume that A is a tall matrix.
		Compute the Q factor s.t. A = QR (A may be complex) and diag(R) is real and non-negative
	**/
	static public function _make_orthogonal(A:Dynamic):Dynamic;
	/**
		Applies an orthogonal or unitary parametrization to a matrix or a batch of matrices.
		
		Letting :math:`\mathbb{K}` be :math:`\mathbb{R}` or :math:`\mathbb{C}`, the parametrized
		matrix :math:`Q \in \mathbb{K}^{m \times n}` is **orthogonal** as
		
		.. math::
		
		    \begin{align*}
		        Q^{\text{H}}Q &= \mathrm{I}_n \mathrlap{\qquad \text{if }m \geq n}\\
		        QQ^{\text{H}} &= \mathrm{I}_m \mathrlap{\qquad \text{if }m < n}
		    \end{align*}
		
		where :math:`Q^{\text{H}}` is the conjugate transpose when :math:`Q` is complex
		and the transpose when :math:`Q` is real-valued, and
		:math:`\mathrm{I}_n` is the `n`-dimensional identity matrix.
		In plain words, :math:`Q` will have orthonormal columns whenever :math:`m \geq n`
		and orthonormal rows otherwise.
		
		If the tensor has more than two dimensions, we consider it as a batch of matrices of shape `(..., m, n)`.
		
		The matrix :math:`Q` may be parametrized via three different ``orthogonal_map`` in terms of the original tensor:
		
		- ``"matrix_exp"``/``"cayley"``:
		  the :func:`~torch.matrix_exp` :math:`Q = \exp(A)` and the `Cayley map`_
		  :math:`Q = (\mathrm{I}_n + A/2)(\mathrm{I}_n - A/2)^{-1}` are applied to a skew-symmetric
		  :math:`A` to give an orthogonal matrix.
		- ``"householder"``: computes a product of Householder reflectors
		  (:func:`~torch.linalg.householder_product`).
		
		``"matrix_exp"``/``"cayley"`` often make the parametrized weight converge faster than
		``"householder"``, but they are slower to compute for very thin or very wide matrices.
		
		If ``use_trivialization=True`` (default), the parametrization implements the "Dynamic Trivialization Framework",
		where an extra matrix :math:`B \in \mathbb{K}^{n \times n}` is stored under
		``module.parametrizations.weight[0].base``. This helps the
		convergence of the parametrized layer at the expense of some extra memory use.
		See `Trivializations for Gradient-Based Optimization on Manifolds`_ .
		
		Initial value of :math:`Q`:
		If the original tensor is not parametrized and ``use_trivialization=True`` (default), the initial value
		of :math:`Q` is that of the original tensor if it is orthogonal (or unitary in the complex case)
		and it is orthogonalized via the QR decomposition otherwise (see :func:`torch.linalg.qr`).
		Same happens when it is not parametrized and ``orthogonal_map="householder"`` even when ``use_trivialization=False``.
		Otherwise, the initial value is the result of the composition of all the registered
		parametrizations applied to the original tensor.
		
		.. note::
		    This function is implemented using the parametrization functionality
		    in :func:`~torch.nn.utils.parametrize.register_parametrization`.
		
		
		.. _`Cayley map`: https://en.wikipedia.org/wiki/Cayley_transform#Matrix_map
		.. _`Trivializations for Gradient-Based Optimization on Manifolds`: https://arxiv.org/abs/1909.09501
		
		Args:
		    module (nn.Module): module on which to register the parametrization.
		    name (str, optional): name of the tensor to make orthogonal. Default: ``"weight"``.
		    orthogonal_map (str, optional): One of the following: ``"matrix_exp"``, ``"cayley"``, ``"householder"``.
		        Default: ``"matrix_exp"`` if the matrix is square or complex, ``"householder"`` otherwise.
		    use_trivialization (bool, optional): whether to use the dynamic trivialization framework.
		        Default: ``True``.
		
		Returns:
		    The original module with an orthogonal parametrization registered to the specified
		    weight
		
		Example::
		
		    >>> orth_linear = orthogonal(nn.Linear(20, 40))
		    >>> orth_linear
		    ParametrizedLinear(
		    in_features=20, out_features=40, bias=True
		    (parametrizations): ModuleDict(
		        (weight): ParametrizationList(
		        (0): _Orthogonal()
		        )
		    )
		    )
		    >>> Q = orth_linear.weight
		    >>> torch.dist(Q.T @ Q, torch.eye(20))
		    tensor(4.9332e-07)
	**/
	static public function orthogonal(module:Dynamic, ?name:Dynamic, ?orthogonal_map:Dynamic, ?use_trivialization:Dynamic):Dynamic;
	/**
		Applies spectral normalization to a parameter in the given module.
		
		.. math::
		    \mathbf{W}_{SN} = \dfrac{\mathbf{W}}{\sigma(\mathbf{W})},
		    \sigma(\mathbf{W}) = \max_{\mathbf{h}: \mathbf{h} \ne 0} \dfrac{\|\mathbf{W} \mathbf{h}\|_2}{\|\mathbf{h}\|_2}
		
		When applied on a vector, it simplifies to
		
		.. math::
		    \mathbf{x}_{SN} = \dfrac{\mathbf{x}}{\|\mathbf{x}\|_2}
		
		Spectral normalization stabilizes the training of discriminators (critics)
		in Generative Adversarial Networks (GANs) by reducing the Lipschitz constant
		of the model. :math:`\sigma` is approximated performing one iteration of the
		`power method`_ every time the weight is accessed. If the dimension of the
		weight tensor is greater than 2, it is reshaped to 2D in power iteration
		method to get spectral norm.
		
		
		See `Spectral Normalization for Generative Adversarial Networks`_ .
		
		.. _`power method`: https://en.wikipedia.org/wiki/Power_iteration
		.. _`Spectral Normalization for Generative Adversarial Networks`: https://arxiv.org/abs/1802.05957
		
		.. note::
		    This function is implemented using the parametrization functionality
		    in :func:`~torch.nn.utils.parametrize.register_parametrization`. It is a
		    reimplementation of :func:`torch.nn.utils.spectral_norm`.
		
		.. note::
		    When this constraint is registered, the singular vectors associated to the largest
		    singular value are estimated rather than sampled at random. These are then updated
		    performing :attr:`n_power_iterations` of the `power method`_ whenever the tensor
		    is accessed with the module on `training` mode.
		
		.. note::
		    If the `_SpectralNorm` module, i.e., `module.parametrization.weight[idx]`,
		    is in training mode on removal, it will perform another power iteration.
		    If you'd like to avoid this iteration, set the module to eval mode
		    before its removal.
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter. Default: ``"weight"``.
		    n_power_iterations (int, optional): number of power iterations to
		        calculate spectral norm. Default: ``1``.
		    eps (float, optional): epsilon for numerical stability in
		        calculating norms. Default: ``1e-12``.
		    dim (int, optional): dimension corresponding to number of outputs.
		        Default: ``0``, except for modules that are instances of
		        ConvTranspose{1,2,3}d, when it is ``1``
		
		Returns:
		    The original module with a new parametrization registered to the specified
		    weight
		
		Example::
		
		    >>> snm = spectral_norm(nn.Linear(20, 40))
		    >>> snm
		    ParametrizedLinear(
		    in_features=20, out_features=40, bias=True
		    (parametrizations): ModuleDict(
		        (weight): ParametrizationList(
		        (0): _SpectralNorm()
		        )
		    )
		    )
		    >>> torch.linalg.matrix_norm(snm.weight, 2)
		    tensor(1.0000, grad_fn=<CopyBackwards>)
	**/
	static public function spectral_norm(module:Dynamic, ?name:Dynamic, ?n_power_iterations:Dynamic, ?eps:Dynamic, ?dim:Dynamic):Dynamic;
}