/* This file is generated, do not edit! */
package torch.nn.modules.transformer;
@:pythonImport("torch.nn.modules.transformer") extern class Transformer_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_activation_fn(activation:Dynamic):Dynamic;
	static public function _get_clones(module:Dynamic, N:Dynamic):Dynamic;
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