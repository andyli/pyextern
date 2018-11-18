/* This file is generated, do not edit! */
package torch.distributions.transforms;
@:pythonImport("torch.distributions.transforms") extern class Transforms_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Sum out ``dim`` many rightmost dimensions of a given tensor.
		
		Args:
		    value (Tensor): A tensor of ``.dim()`` at least ``dim``.
		    dim (int): The number of rightmost dims to sum out.
	**/
	static public function _sum_rightmost(value:Dynamic, dim:Dynamic):Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per the `broadcasting rules
		    <http://pytorch.org/docs/master/notes/broadcasting.html>`_
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to Tensors having size
		    `(1,)`.
		
		Args:
		    values (list of `numbers.Number` or `torch.*Tensor`)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` or
		        `torch.*Tensor` instance
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	static public function identity_transform(x:Dynamic):Dynamic;
	/**
		Pads tensor.
		
		`Nd` constant padding:  The number of dimensions to pad is
		    :math:`\left\lfloor\frac{len(padding)}{2}\right\rfloor` and the dimensions that get padded begins with the
		    last dimension and moves forward. See below for examples.
		
		`1D`, `2D` and `3D` "reflect" / "replicate" padding:
		    for 1D:
		            3D input tensor with padding of the form `(padLeft, padRight)`
		    for 2D:
		            4D input tensor with padding of the form `(padLeft, padRight, padTop, padBottom)`.
		    for 3D:
		            5D input tensor with padding of the form
		            `(padLeft, padRight, padTop, padBottom, padFront, padBack)`. No "reflect" implementation.
		
		See :class:`torch.nn.ConstantPad2d`, :class:`torch.nn.ReflectionPad2d`, and
		:class:`torch.nn.ReplicationPad2d` for concrete examples on how each of the
		padding modes works.
		
		Args:
		    input (Tensor): `Nd` tensor
		    pad (tuple): m-elem tuple, where :math:`\frac{m}{2} \leq` input dimensions and :math:`m` is even.
		    mode: 'constant', 'reflect' or 'replicate'. Default: 'constant'
		    value: fill value for 'constant' padding. Default: 0
		
		Examples::
		
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p1d = (1, 1) # pad last dim by 1 on each side
		    >>> out = F.pad(t4d, p1d, "constant", 0)  # effectively zero padding
		    >>> print(out.data.size())
		    torch.Size([3, 3, 4, 4])
		    >>> p2d = (1, 1, 2, 2) # pad last dim by (1, 1) and 2nd to last by (2, 2)
		    >>> out = F.pad(t4d, p2d, "constant", 0)
		    >>> print(out.data.size())
		    torch.Size([3, 3, 8, 4])
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p3d = (0, 1, 2, 1, 3, 3) # pad by (0, 1), (2, 1), and (3, 3)
		    >>> out = F.pad(t4d, p3d, "constant", 0)
		    >>> print(out.data.size())
		    torch.Size([3, 9, 7, 3])
	**/
	static public function pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
}