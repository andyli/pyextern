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
	/**
		Return the recommended gain value for the given nonlinearity function. The values are as follows:
		============ ==========================================
		nonlinearity gain
		============ ==========================================
		linear       :math:`1`
		conv{1,2,3}d :math:`1`
		sigmoid      :math:`1`
		tanh         :math:`5 / 3`
		relu         :math:`\sqrt{2}`
		leaky_relu   :math:`\sqrt{2 / (1 + negative\_slope^2)}`
		============ ==========================================
		
		Args:
		    nonlinearity: the nonlinear function (`nn.functional` name)
		    param: optional parameter for the nonlinear function
		
		Examples:
		    >>> gain = nn.init.gain('leaky_relu')
	**/
	static public function calculate_gain(nonlinearity:Dynamic, ?param:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with the value `val`.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    val: the value to fill the tensor with
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.constant(w)
	**/
	static public function constant(tensor:Dynamic, val:Dynamic):Dynamic;
	/**
		Fills the {3, 4, 5}-dimensional input Tensor or Variable with the Dirac delta function. Preserves the identity of
		the inputs in Convolutional layers, where as many input channels are preserved as possible.
		
		Args:
		    tensor: a {3, 4, 5}-dimensional torch.Tensor or autograd.Variable
		
		Examples:
		    >>> w = torch.Tensor(3, 16, 5, 5)
		    >>> nn.init.dirac(w)
	**/
	static public function dirac(tensor:Dynamic):Dynamic;
	/**
		Fills the 2-dimensional input Tensor or Variable with the identity matrix. Preserves the identity of the inputs in
		Linear layers, where as many inputs are preserved as possible.
		
		Args:
		    tensor: a 2-dimensional torch.Tensor or autograd.Variable
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.eye(w)
	**/
	static public function eye(tensor:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values according to the method described in "Delving deep into
		rectifiers: Surpassing human-level performance on ImageNet classification" - He, K. et al. (2015), using a normal
		distribution. The resulting tensor will have values sampled from :math:`N(0, std)` where
		:math:`std = \sqrt{2 / ((1 + a^2)   imes fan\_in)}`. Also known as He initialisation.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    a: the negative slope of the rectifier used after this layer (0 for ReLU by default)
		    mode: either 'fan_in' (default) or 'fan_out'. Choosing `fan_in` preserves the magnitude of the variance of the
		          weights in the forward pass. Choosing `fan_out` preserves the magnitudes in the backwards pass.
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.kaiming_normal(w, mode='fan_out')
	**/
	static public function kaiming_normal(tensor:Dynamic, ?a:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values according to the method described in "Delving deep into
		rectifiers: Surpassing human-level performance on ImageNet classification" - He, K. et al. (2015), using a uniform
		distribution. The resulting tensor will have values sampled from :math:`U(-bound, bound)` where
		:math:`bound = \sqrt{2 / ((1 + a^2)         imes fan\_in)}  imes \sqrt{3}`. Also known as He initialisation.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    a: the negative slope of the rectifier used after this layer (0 for ReLU by default)
		    mode: either 'fan_in' (default) or 'fan_out'. Choosing `fan_in` preserves the magnitude of the variance of the
		          weights in the forward pass. Choosing `fan_out` preserves the magnitudes in the backwards pass.
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.kaiming_uniform(w, mode='fan_in')
	**/
	static public function kaiming_uniform(tensor:Dynamic, ?a:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values drawn from the normal distribution :math:`N(mean, std)`.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    mean: the mean of the normal distribution
		    std: the standard deviation of the normal distribution
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.normal(w)
	**/
	static public function normal(tensor:Dynamic, ?mean:Dynamic, ?std:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with a (semi) orthogonal matrix, as described in "Exact solutions to the
		nonlinear dynamics of learning in deep linear neural networks" - Saxe, A. et al. (2013). The input tensor must have
		at least 2 dimensions, and for tensors with more than 2 dimensions the trailing dimensions are flattened.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable, where n >= 2
		    gain: optional scaling factor
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.orthogonal(w)
	**/
	static public function orthogonal(tensor:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		Fills the 2D input Tensor or Variable as a sparse matrix, where the non-zero elements will be drawn from
		the normal distribution :math:`N(0, 0.01)`, as described in "Deep learning via
		Hessian-free optimization" - Martens, J. (2010).
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    sparsity: The fraction of elements in each column to be set to zero
		    std: the standard deviation of the normal distribution used to generate the non-zero values
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.sparse(w, sparsity=0.1)
	**/
	static public function sparse(tensor:Dynamic, sparsity:Dynamic, ?std:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values drawn from the uniform distribution :math:`U(a, b)`.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    a: the lower bound of the uniform distribution
		    b: the upper bound of the uniform distribution
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.uniform(w)
	**/
	static public function uniform(tensor:Dynamic, ?a:Dynamic, ?b:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values according to the method described in "Understanding the
		difficulty of training deep feedforward neural networks" - Glorot, X. & Bengio, Y. (2010), using a normal
		distribution. The resulting tensor will have values sampled from :math:`N(0, std)` where
		:math:`std = gain   imes \sqrt{2 / (fan\_in + fan\_out)}`. Also known as Glorot initialisation.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    gain: an optional scaling factor
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.xavier_normal(w)
	**/
	static public function xavier_normal(tensor:Dynamic, ?gain:Dynamic):Dynamic;
	/**
		Fills the input Tensor or Variable with values according to the method described in "Understanding the
		difficulty of training deep feedforward neural networks" - Glorot, X. & Bengio, Y. (2010), using a uniform
		distribution. The resulting tensor will have values sampled from :math:`U(-a, a)` where
		:math:`a = gain     imes \sqrt{2 / (fan\_in + fan\_out)}    imes \sqrt{3}`. Also known as Glorot initialisation.
		
		Args:
		    tensor: an n-dimensional torch.Tensor or autograd.Variable
		    gain: an optional scaling factor
		
		Examples:
		    >>> w = torch.Tensor(3, 5)
		    >>> nn.init.xavier_uniform(w, gain=nn.init.calculate_gain('relu'))
	**/
	static public function xavier_uniform(tensor:Dynamic, ?gain:Dynamic):Dynamic;
}