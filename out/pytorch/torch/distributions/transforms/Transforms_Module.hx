/* This file is generated, do not edit! */
package torch.distributions.transforms;
@:pythonImport("torch.distributions.transforms") extern class Transforms_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _clipped_sigmoid(x:Dynamic):Dynamic;
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
		  - `torch.*Tensor` instances are broadcasted as per :ref:`_broadcasting-semantics`.
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to scalar Tensors.
		
		Args:
		    values (list of `numbers.Number`, `torch.*Tensor` or objects implementing __torch_function__)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` instance,
		        a `torch.*Tensor` instance, or an instance implementing __torch_function__
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	static public function identity_transform(x:Dynamic):Dynamic;
	/**
		Pads tensor.
		
		Padding size:
		    The padding size by which to pad some dimensions of :attr:`input`
		    are described starting from the last dimension and moving forward.
		    :math:`\left\lfloor\frac{\text{len(pad)}}{2}\right\rfloor` dimensions
		    of ``input`` will be padded.
		    For example, to pad only the last dimension of the input tensor, then
		    :attr:`pad` has the form
		    :math:`(\text{padding\_left}, \text{padding\_right})`;
		    to pad the last 2 dimensions of the input tensor, then use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom})`;
		    to pad the last 3 dimensions, use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom}`
		    :math:`\text{padding\_front}, \text{padding\_back})`.
		
		Padding mode:
		    See :class:`torch.nn.ConstantPad2d`, :class:`torch.nn.ReflectionPad2d`, and
		    :class:`torch.nn.ReplicationPad2d` for concrete examples on how each of the
		    padding modes works. Constant padding is implemented for arbitrary dimensions.
		    Replicate and reflection padding is implemented for padding the last 3
		    dimensions of 5D input tensor, or the last 2 dimensions of 4D input
		    tensor, or the last dimension of 3D input tensor.
		
		Note:
		    When using the CUDA backend, this operation may induce nondeterministic
		    behaviour in its backward pass that is not easily switched off.
		    Please see the notes on :doc:`/notes/randomness` for background.
		
		Args:
		    input (Tensor): N-dimensional tensor
		    pad (tuple): m-elements tuple, where
		        :math:`\frac{m}{2} \leq` input dimensions and :math:`m` is even.
		    mode: ``'constant'``, ``'reflect'``, ``'replicate'`` or ``'circular'``.
		        Default: ``'constant'``
		    value: fill value for ``'constant'`` padding. Default: ``0``
		
		Examples::
		
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p1d = (1, 1) # pad last dim by 1 on each side
		    >>> out = F.pad(t4d, p1d, "constant", 0)  # effectively zero padding
		    >>> print(out.size())
		    torch.Size([3, 3, 4, 4])
		    >>> p2d = (1, 1, 2, 2) # pad last dim by (1, 1) and 2nd to last by (2, 2)
		    >>> out = F.pad(t4d, p2d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 3, 8, 4])
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p3d = (0, 1, 2, 1, 3, 3) # pad by (0, 1), (2, 1), and (3, 3)
		    >>> out = F.pad(t4d, p3d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 9, 7, 3])
	**/
	static public function pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
	/**
		softplus(input, beta=1, threshold=20) -> Tensor
		
		Applies element-wise, the function :math:`\text{Softplus}(x) = \frac{1}{\beta} * \log(1 + \exp(\beta * x))`.
		
		For numerical stability the implementation reverts to the linear function
		when :math:`input \times \beta > threshold`.
		
		See :class:`~torch.nn.Softplus` for more details.
	**/
	static public function softplus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a `D x D` matrix or a batch of matrices into a (batched) vector
		which comprises of lower triangular elements from the matrix in row order.
	**/
	static public function tril_matrix_to_vec(mat:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Convert a vector or a batch of vectors into a batched `D x D`
		lower triangular matrix containing elements from the vector in row order.
	**/
	static public function vec_to_tril_matrix(vec:Dynamic, ?diag:Dynamic):Dynamic;
}