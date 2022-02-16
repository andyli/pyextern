/* This file is generated, do not edit! */
package torch.nn.init;
@:pythonImport("torch.nn.init") extern class Init_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _calculate_correct_fan(tensor:Dynamic, mode:Dynamic):Dynamic;
	static public function _calculate_fan_in_and_fan_out(tensor:Dynamic):Dynamic;
	static public function _make_deprecate(meth:Dynamic):Dynamic;
	static public function _no_grad_fill_(tensor:Dynamic, val:Dynamic):Dynamic;
	static public function _no_grad_normal_(tensor:Dynamic, mean:Dynamic, std:Dynamic):Dynamic;
	static public function _no_grad_trunc_normal_(tensor:Dynamic, mean:Dynamic, std:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function _no_grad_uniform_(tensor:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function _no_grad_zero_(tensor:Dynamic):Dynamic;
	/**
		Return the recommended gain value for the given nonlinearity function.
		The values are as follows:
		
		================= ====================================================
		nonlinearity      gain
		================= ====================================================
		Linear / Identity :math:`1`
		Conv{1,2,3}D      :math:`1`
		Sigmoid           :math:`1`
		Tanh              :math:`\frac{5}{3}`
		ReLU              :math:`\sqrt{2}`
		Leaky Relu        :math:`\sqrt{\frac{2}{1 + \text{negative\_slope}^2}}`
		SELU              :math:`\frac{3}{4}`
		================= ====================================================
		
		.. warning::
		    In order to implement `Self-Normalizing Neural Networks`_ ,
		    you should use ``nonlinearity='linear'`` instead of ``nonlinearity='selu'``.
		    This gives the initial weights a variance of ``1 / N``,
		    which is necessary to induce a stable fixed point in the forward pass.
		    In contrast, the default gain for ``SELU`` sacrifices the normalisation
		    effect for more stable gradient flow in rectangular layers.
		
		Args:
		    nonlinearity: the non-linear function (`nn.functional` name)
		    param: optional parameter for the non-linear function
		
		Examples:
		    >>> gain = nn.init.calculate_gain('leaky_relu', 0.2)  # leaky_relu with negative_slope=0.2
		
		.. _Self-Normalizing Neural Networks: https://papers.nips.cc/paper/2017/hash/5d44ee6f2c3f71b73125876103c8f6c4-Abstract.html
	**/
	static public function calculate_gain(nonlinearity:Dynamic, ?param:Dynamic):Dynamic;
	/**
		constant(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.constant_`.
		
		See :func:`~torch.nn.init.constant_` for details.
	**/
	static public function constant(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input Tensor with the value :math:`\text{val}`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    val: the value to fill the tensor with
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.constant_(w, 0.3)
	**/
	static public function constant_(tensor:Dynamic, val:Dynamic):Dynamic;
	/**
		dirac(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.dirac_`.
		
		See :func:`~torch.nn.init.dirac_` for details.
	**/
	static public function dirac(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the {3, 4, 5}-dimensional input `Tensor` with the Dirac
		delta function. Preserves the identity of the inputs in `Convolutional`
		layers, where as many input channels are preserved as possible. In case
		of groups>1, each group of channels preserves identity
		
		Args:
		    tensor: a {3, 4, 5}-dimensional `torch.Tensor`
		    groups (optional): number of groups in the conv layer (default: 1)
		Examples:
		    >>> w = torch.empty(3, 16, 5, 5)
		    >>> nn.init.dirac_(w)
		    >>> w = torch.empty(3, 24, 5, 5)
		    >>> nn.init.dirac_(w, 3)
	**/
	static public function dirac_(tensor:Dynamic, ?groups:Dynamic):Dynamic;
	/**
		eye(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.eye_`.
		
		See :func:`~torch.nn.init.eye_` for details.
	**/
	static public function eye(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the 2-dimensional input `Tensor` with the identity
		matrix. Preserves the identity of the inputs in `Linear` layers, where as
		many inputs are preserved as possible.
		
		Args:
		    tensor: a 2-dimensional `torch.Tensor`
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.eye_(w)
	**/
	static public function eye_(tensor:Dynamic):Dynamic;
	/**
		kaiming_normal(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.kaiming_normal_`.
		
		See :func:`~torch.nn.init.kaiming_normal_` for details.
	**/
	static public function kaiming_normal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input `Tensor` with values according to the method
		described in `Delving deep into rectifiers: Surpassing human-level
		performance on ImageNet classification` - He, K. et al. (2015), using a
		normal distribution. The resulting tensor will have values sampled from
		:math:`\mathcal{N}(0, \text{std}^2)` where
		
		.. math::
		    \text{std} = \frac{\text{gain}}{\sqrt{\text{fan\_mode}}}
		
		Also known as He initialization.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    a: the negative slope of the rectifier used after this layer (only
		        used with ``'leaky_relu'``)
		    mode: either ``'fan_in'`` (default) or ``'fan_out'``. Choosing ``'fan_in'``
		        preserves the magnitude of the variance of the weights in the
		        forward pass. Choosing ``'fan_out'`` preserves the magnitudes in the
		        backwards pass.
		    nonlinearity: the non-linear function (`nn.functional` name),
		        recommended to use only with ``'relu'`` or ``'leaky_relu'`` (default).
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.kaiming_normal_(w, mode='fan_out', nonlinearity='relu')
	**/
	static public function kaiming_normal_(tensor:Dynamic, ?a:Dynamic, ?mode:Dynamic, ?nonlinearity:Dynamic):Dynamic;
	/**
		kaiming_uniform(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.kaiming_uniform_`.
		
		See :func:`~torch.nn.init.kaiming_uniform_` for details.
	**/
	static public function kaiming_uniform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input `Tensor` with values according to the method
		described in `Delving deep into rectifiers: Surpassing human-level
		performance on ImageNet classification` - He, K. et al. (2015), using a
		uniform distribution. The resulting tensor will have values sampled from
		:math:`\mathcal{U}(-\text{bound}, \text{bound})` where
		
		.. math::
		    \text{bound} = \text{gain} \times \sqrt{\frac{3}{\text{fan\_mode}}}
		
		Also known as He initialization.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    a: the negative slope of the rectifier used after this layer (only
		        used with ``'leaky_relu'``)
		    mode: either ``'fan_in'`` (default) or ``'fan_out'``. Choosing ``'fan_in'``
		        preserves the magnitude of the variance of the weights in the
		        forward pass. Choosing ``'fan_out'`` preserves the magnitudes in the
		        backwards pass.
		    nonlinearity: the non-linear function (`nn.functional` name),
		        recommended to use only with ``'relu'`` or ``'leaky_relu'`` (default).
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.kaiming_uniform_(w, mode='fan_in', nonlinearity='relu')
	**/
	static public function kaiming_uniform_(tensor:Dynamic, ?a:Dynamic, ?mode:Dynamic, ?nonlinearity:Dynamic):Dynamic;
	/**
		normal(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.normal_`.
		
		See :func:`~torch.nn.init.normal_` for details.
	**/
	static public function normal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input Tensor with values drawn from the normal
		distribution :math:`\mathcal{N}(\text{mean}, \text{std}^2)`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    mean: the mean of the normal distribution
		    std: the standard deviation of the normal distribution
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.normal_(w)
	**/
	static public function normal_(tensor:Dynamic, ?mean:Dynamic, ?std:Dynamic):Dynamic;
	/**
		Fills the input Tensor with the scalar value `1`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.ones_(w)
	**/
	static public function ones_(tensor:Dynamic):Dynamic;
	/**
		orthogonal(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.orthogonal_`.
		
		See :func:`~torch.nn.init.orthogonal_` for details.
	**/
	static public function orthogonal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input `Tensor` with a (semi) orthogonal matrix, as
		described in `Exact solutions to the nonlinear dynamics of learning in deep
		linear neural networks` - Saxe, A. et al. (2013). The input tensor must have
		at least 2 dimensions, and for tensors with more than 2 dimensions the
		trailing dimensions are flattened.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`, where :math:`n \geq 2`
		    gain: optional scaling factor
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.orthogonal_(w)
	**/
	static public function orthogonal_(tensor:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		sparse(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.sparse_`.
		
		See :func:`~torch.nn.init.sparse_` for details.
	**/
	static public function sparse(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the 2D input `Tensor` as a sparse matrix, where the
		non-zero elements will be drawn from the normal distribution
		:math:`\mathcal{N}(0, 0.01)`, as described in `Deep learning via
		Hessian-free optimization` - Martens, J. (2010).
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    sparsity: The fraction of elements in each column to be set to zero
		    std: the standard deviation of the normal distribution used to generate
		        the non-zero values
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.sparse_(w, sparsity=0.1)
	**/
	static public function sparse_(tensor:Dynamic, sparsity:Dynamic, ?std:Dynamic):Dynamic;
	/**
		Fills the input Tensor with values drawn from a truncated
		normal distribution. The values are effectively drawn from the
		normal distribution :math:`\mathcal{N}(\text{mean}, \text{std}^2)`
		with values outside :math:`[a, b]` redrawn until they are within
		the bounds. The method used for generating the random values works
		best when :math:`a \leq \text{mean} \leq b`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    mean: the mean of the normal distribution
		    std: the standard deviation of the normal distribution
		    a: the minimum cutoff value
		    b: the maximum cutoff value
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.trunc_normal_(w)
	**/
	static public function trunc_normal_(tensor:Dynamic, ?mean:Dynamic, ?std:Dynamic, ?a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		uniform(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.uniform_`.
		
		See :func:`~torch.nn.init.uniform_` for details.
	**/
	static public function uniform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input Tensor with values drawn from the uniform
		distribution :math:`\mathcal{U}(a, b)`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    a: the lower bound of the uniform distribution
		    b: the upper bound of the uniform distribution
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.uniform_(w)
	**/
	static public function uniform_(tensor:Dynamic, ?a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		xavier_normal(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.xavier_normal_`.
		
		See :func:`~torch.nn.init.xavier_normal_` for details.
	**/
	static public function xavier_normal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input `Tensor` with values according to the method
		described in `Understanding the difficulty of training deep feedforward
		neural networks` - Glorot, X. & Bengio, Y. (2010), using a normal
		distribution. The resulting tensor will have values sampled from
		:math:`\mathcal{N}(0, \text{std}^2)` where
		
		.. math::
		    \text{std} = \text{gain} \times \sqrt{\frac{2}{\text{fan\_in} + \text{fan\_out}}}
		
		Also known as Glorot initialization.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    gain: an optional scaling factor
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.xavier_normal_(w)
	**/
	static public function xavier_normal_(tensor:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		xavier_uniform(...)
		
		.. warning::
		    This method is now deprecated in favor of :func:`torch.nn.init.xavier_uniform_`.
		
		See :func:`~torch.nn.init.xavier_uniform_` for details.
	**/
	static public function xavier_uniform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fills the input `Tensor` with values according to the method
		described in `Understanding the difficulty of training deep feedforward
		neural networks` - Glorot, X. & Bengio, Y. (2010), using a uniform
		distribution. The resulting tensor will have values sampled from
		:math:`\mathcal{U}(-a, a)` where
		
		.. math::
		    a = \text{gain} \times \sqrt{\frac{6}{\text{fan\_in} + \text{fan\_out}}}
		
		Also known as Glorot initialization.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		    gain: an optional scaling factor
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.xavier_uniform_(w, gain=nn.init.calculate_gain('relu'))
	**/
	static public function xavier_uniform_(tensor:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		Fills the input Tensor with the scalar value `0`.
		
		Args:
		    tensor: an n-dimensional `torch.Tensor`
		
		Examples:
		    >>> w = torch.empty(3, 5)
		    >>> nn.init.zeros_(w)
	**/
	static public function zeros_(tensor:Dynamic):Dynamic;
}