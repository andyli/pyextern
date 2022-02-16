/* This file is generated, do not edit! */
package torch.nn.modules.activation;
@:pythonImport("torch.nn.modules.activation") extern class Activation_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}