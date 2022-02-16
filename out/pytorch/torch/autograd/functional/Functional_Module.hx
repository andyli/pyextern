/* This file is generated, do not edit! */
package torch.autograd.functional;
@:pythonImport("torch.autograd.functional") extern class Functional_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _as_tuple(inp:Dynamic, arg_name:Dynamic, fn_name:Dynamic):Dynamic;
	static public function _autograd_grad(outputs:Dynamic, inputs:Dynamic, ?grad_outputs:Dynamic, ?create_graph:Dynamic, ?retain_graph:Dynamic):Dynamic;
	static public function _check_requires_grad(inputs:Dynamic, input_type:Dynamic, strict:Dynamic):Dynamic;
	static public function _construct_standard_basis_for(tensors:Dynamic, tensor_numels:Dynamic):Dynamic;
	static public function _fill_in_zeros(grads:Dynamic, refs:Dynamic, strict:Dynamic, create_graph:Dynamic, stage:Dynamic):Dynamic;
	static public function _grad_postprocess(inputs:Dynamic, create_graph:Dynamic):Dynamic;
	static public function _grad_preprocess(inputs:Dynamic, create_graph:Dynamic, need_graph:Dynamic):Dynamic;
	static public function _tuple_postprocess(res:Dynamic, to_unpack:Dynamic):Dynamic;
	static public function _validate_v(v:Dynamic, other:Dynamic, is_other_tuple:Dynamic):Dynamic;
	static public function _vmap(func:Dynamic, ?in_dims:Dynamic, ?out_dims:Dynamic):Dynamic;
	/**
		Function that computes the Hessian of a given scalar function.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a Tensor with a single element.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    create_graph (bool, optional): If ``True``, the Hessian will be computed in
		        a differentiable manner. Note that when ``strict`` is ``False``, the result can not
		        require gradients or be disconnected from the inputs.
		        Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we detect that there exists an input
		        such that all the outputs are independent of it. If ``False``, we return a Tensor of zeros as the
		        hessian for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		    vectorize (bool, optional): This feature is experimental, please use at
		        your own risk. When computing the hessian, usually we invoke
		        ``autograd.grad`` once per row of the hessian. If this flag is
		        ``True``, we use the vmap prototype feature as the backend to
		        vectorize calls to ``autograd.grad`` so we only invoke it once
		        instead of once per row. This should lead to performance
		        improvements in many use cases, however, due to this feature
		        being incomplete, there may be performance cliffs. Please
		        use `torch._C._debug_only_display_vmap_fallback_warnings(True)`
		        to show any performance warnings and file us issues if
		        warnings exist for your use case. Defaults to ``False``.
		
		Returns:
		    Hessian (Tensor or a tuple of tuple of Tensors): if there is a single input,
		    this will be a single Tensor containing the Hessian for the input.
		    If it is a tuple, then the Hessian will be a tuple of tuples where
		    ``Hessian[i][j]`` will contain the Hessian of the ``i``\th input
		    and ``j``\th input with size the sum of the size of the ``i``\th input plus
		    the size of the ``j``\th input. ``Hessian[i][j]`` will have the same
		    dtype and device as the corresponding ``i``\th input.
		
		Example:
		
		    >>> def pow_reducer(x):
		    ...   return x.pow(3).sum()
		    >>> inputs = torch.rand(2, 2)
		    >>> hessian(pow_reducer, inputs)
		    tensor([[[[5.2265, 0.0000],
		              [0.0000, 0.0000]],
		             [[0.0000, 4.8221],
		              [0.0000, 0.0000]]],
		            [[[0.0000, 0.0000],
		              [1.9456, 0.0000]],
		             [[0.0000, 0.0000],
		              [0.0000, 3.2550]]]])
		
		    >>> hessian(pow_reducer, inputs, create_graph=True)
		    tensor([[[[5.2265, 0.0000],
		              [0.0000, 0.0000]],
		             [[0.0000, 4.8221],
		              [0.0000, 0.0000]]],
		            [[[0.0000, 0.0000],
		              [1.9456, 0.0000]],
		             [[0.0000, 0.0000],
		              [0.0000, 3.2550]]]], grad_fn=<ViewBackward>)
		
		
		    >>> def pow_adder_reducer(x, y):
		    ...   return (2 * x.pow(2) + 3 * y.pow(2)).sum()
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> hessian(pow_adder_reducer, inputs)
		    ((tensor([[4., 0.],
		              [0., 4.]]),
		      tensor([[0., 0.],
		              [0., 0.]])),
		     (tensor([[0., 0.],
		              [0., 0.]]),
		      tensor([[6., 0.],
		              [0., 6.]])))
	**/
	static public function hessian(func:Dynamic, inputs:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic, ?vectorize:Dynamic):Dynamic;
	/**
		Function that computes the dot product between the Hessian of a given scalar
		function and a vector ``v`` at the point given by the inputs.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a Tensor with a single element.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    v (tuple of Tensors or Tensor): The vector for which the Hessian vector
		        product is computed. Must be the same size as the input of
		        ``func``. This argument is optional when ``func``'s input contains
		        a single element and (if it is not provided) will be set as a
		        Tensor containing a single ``1``.
		    create_graph (bool, optional): If ``True``, both the output and result will be
		        computed in a differentiable way. Note that when ``strict`` is
		        ``False``, the result can not require gradients or be disconnected
		        from the inputs.  Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we
		        detect that there exists an input such that all the outputs are
		        independent of it. If ``False``, we return a Tensor of zeros as the
		        hvp for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		Returns:
		    output (tuple): tuple with:
		        func_output (tuple of Tensors or Tensor): output of ``func(inputs)``
		
		        hvp (tuple of Tensors or Tensor): result of the dot product with
		        the same shape as the inputs.
		
		Example:
		
		    >>> def pow_reducer(x):
		    ...   return x.pow(3).sum()
		    >>> inputs = torch.rand(2, 2)
		    >>> v = torch.ones(2, 2)
		    >>> hvp(pow_reducer, inputs, v)
		    (tensor(0.1448),
		     tensor([[2.0239, 1.6456],
		             [2.4988, 1.4310]]))
		
		    >>> hvp(pow_reducer, inputs, v, create_graph=True)
		    (tensor(0.1448, grad_fn=<SumBackward0>),
		     tensor([[2.0239, 1.6456],
		             [2.4988, 1.4310]], grad_fn=<MulBackward0>))
		
		
		    >>> def pow_adder_reducer(x, y):
		    ...   return (2 * x.pow(2) + 3 * y.pow(2)).sum()
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> v = (torch.zeros(2), torch.ones(2))
		    >>> hvp(pow_adder_reducer, inputs, v)
		    (tensor(2.3030),
		     (tensor([0., 0.]),
		      tensor([6., 6.])))
		
		Note:
		
		    This function is significantly slower than `vhp` due to backward mode AD constraints.
		    If your functions is twice continuously differentiable, then hvp = vhp.t(). So if you
		    know that your function satisfies this condition, you should use vhp instead that is
		    much faster with the current implementation.
	**/
	static public function hvp(func:Dynamic, inputs:Dynamic, ?v:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Function that computes the Jacobian of a given function.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a tuple of Tensors or a Tensor.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    create_graph (bool, optional): If ``True``, the Jacobian will be
		        computed in a differentiable manner. Note that when ``strict`` is
		        ``False``, the result can not require gradients or be disconnected
		        from the inputs.  Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we
		        detect that there exists an input such that all the outputs are
		        independent of it. If ``False``, we return a Tensor of zeros as the
		        jacobian for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		    vectorize (bool, optional): This feature is experimental, please use at
		        your own risk. When computing the jacobian, usually we invoke
		        ``autograd.grad`` once per row of the jacobian. If this flag is
		        ``True``, we use the vmap prototype feature as the backend to
		        vectorize calls to ``autograd.grad`` so we only invoke it once
		        instead of once per row. This should lead to performance
		        improvements in many use cases, however, due to this feature
		        being incomplete, there may be performance cliffs. Please
		        use `torch._C._debug_only_display_vmap_fallback_warnings(True)`
		        to show any performance warnings and file us issues if
		        warnings exist for your use case. Defaults to ``False``.
		
		Returns:
		    Jacobian (Tensor or nested tuple of Tensors): if there is a single
		    input and output, this will be a single Tensor containing the
		    Jacobian for the linearized inputs and output. If one of the two is
		    a tuple, then the Jacobian will be a tuple of Tensors. If both of
		    them are tuples, then the Jacobian will be a tuple of tuple of
		    Tensors where ``Jacobian[i][j]`` will contain the Jacobian of the
		    ``i``\th output and ``j``\th input and will have as size the
		    concatenation of the sizes of the corresponding output and the
		    corresponding input and will have same dtype and device as the
		    corresponding input.
		
		Example:
		
		    >>> def exp_reducer(x):
		    ...   return x.exp().sum(dim=1)
		    >>> inputs = torch.rand(2, 2)
		    >>> jacobian(exp_reducer, inputs)
		    tensor([[[1.4917, 2.4352],
		             [0.0000, 0.0000]],
		            [[0.0000, 0.0000],
		             [2.4369, 2.3799]]])
		
		    >>> jacobian(exp_reducer, inputs, create_graph=True)
		    tensor([[[1.4917, 2.4352],
		             [0.0000, 0.0000]],
		            [[0.0000, 0.0000],
		             [2.4369, 2.3799]]], grad_fn=<ViewBackward>)
		
		    >>> def exp_adder(x, y):
		    ...   return 2 * x.exp() + 3 * y
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> jacobian(exp_adder, inputs)
		    (tensor([[2.8052, 0.0000],
		            [0.0000, 3.3963]]),
		     tensor([[3., 0.],
		             [0., 3.]]))
	**/
	static public function jacobian(func:Dynamic, inputs:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic, ?vectorize:Dynamic):Dynamic;
	/**
		Function that computes the dot product between  the Jacobian of
		the given function at the point given by the inputs and a vector ``v``.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a tuple of Tensors or a Tensor.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    v (tuple of Tensors or Tensor): The vector for which the Jacobian
		        vector product is computed. Must be the same size as the input of
		        ``func``. This argument is optional when the input to ``func``
		        contains a single element and (if it is not provided) will be set
		        as a Tensor containing a single ``1``.
		    create_graph (bool, optional): If ``True``, both the output and result
		        will be computed in a differentiable way. Note that when ``strict``
		        is ``False``, the result can not require gradients or be
		        disconnected from the inputs.  Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we
		        detect that there exists an input such that all the outputs are
		        independent of it. If ``False``, we return a Tensor of zeros as the
		        jvp for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		
		Returns:
		    output (tuple): tuple with:
		        func_output (tuple of Tensors or Tensor): output of ``func(inputs)``
		
		        jvp (tuple of Tensors or Tensor): result of the dot product with
		        the same shape as the output.
		
		Example:
		
		    >>> def exp_reducer(x):
		    ...   return x.exp().sum(dim=1)
		    >>> inputs = torch.rand(4, 4)
		    >>> v = torch.ones(4, 4)
		    >>> jvp(exp_reducer, inputs, v)
		    (tensor([6.3090, 4.6742, 7.9114, 8.2106]),
		     tensor([6.3090, 4.6742, 7.9114, 8.2106]))
		
		    >>> jvp(exp_reducer, inputs, v, create_graph=True)
		    (tensor([6.3090, 4.6742, 7.9114, 8.2106], grad_fn=<SumBackward1>),
		     tensor([6.3090, 4.6742, 7.9114, 8.2106], grad_fn=<SqueezeBackward1>))
		
		    >>> def adder(x, y):
		    ...   return 2 * x + 3 * y
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> v = (torch.ones(2), torch.ones(2))
		    >>> jvp(adder, inputs, v)
		    (tensor([2.2399, 2.5005]),
		     tensor([5., 5.]))
		
		Note:
		    The jvp is currently computed by using the backward of the backward
		    (sometimes called the double backwards trick) as we don't have support
		    for forward mode AD in PyTorch at the moment.
	**/
	static public function jvp(func:Dynamic, inputs:Dynamic, ?v:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Function that computes the dot product between a vector ``v`` and the
		Hessian of a given scalar function at the point given by the inputs.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a Tensor with a single element.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    v (tuple of Tensors or Tensor): The vector for which the vector Hessian
		        product is computed. Must be the same size as the input of
		        ``func``. This argument is optional when ``func``'s input contains
		        a single element and (if it is not provided) will be set as a
		        Tensor containing a single ``1``.
		    create_graph (bool, optional): If ``True``, both the output and result
		        will be computed in a differentiable way. Note that when ``strict``
		        is ``False``, the result can not require gradients or be
		        disconnected from the inputs.
		        Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we
		        detect that there exists an input such that all the outputs are
		        independent of it. If ``False``, we return a Tensor of zeros as the
		        vhp for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		
		Returns:
		    output (tuple): tuple with:
		        func_output (tuple of Tensors or Tensor): output of ``func(inputs)``
		
		        vhp (tuple of Tensors or Tensor): result of the dot product with the
		        same shape as the inputs.
		
		Example:
		
		    >>> def pow_reducer(x):
		    ...   return x.pow(3).sum()
		    >>> inputs = torch.rand(2, 2)
		    >>> v = torch.ones(2, 2)
		    >>> vhp(pow_reducer, inputs, v)
		    (tensor(0.5591),
		     tensor([[1.0689, 1.2431],
		             [3.0989, 4.4456]]))
		    >>> vhp(pow_reducer, inputs, v, create_graph=True)
		    (tensor(0.5591, grad_fn=<SumBackward0>),
		     tensor([[1.0689, 1.2431],
		             [3.0989, 4.4456]], grad_fn=<MulBackward0>))
		    >>> def pow_adder_reducer(x, y):
		    ...   return (2 * x.pow(2) + 3 * y.pow(2)).sum()
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> v = (torch.zeros(2), torch.ones(2))
		    >>> vhp(pow_adder_reducer, inputs, v)
		    (tensor(4.8053),
		     (tensor([0., 0.]),
		      tensor([6., 6.])))
	**/
	static public function vhp(func:Dynamic, inputs:Dynamic, ?v:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Function that computes the dot product between a vector ``v`` and the
		Jacobian of the given function at the point given by the inputs.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a tuple of Tensors or a Tensor.
		    inputs (tuple of Tensors or Tensor): inputs to the function ``func``.
		    v (tuple of Tensors or Tensor): The vector for which the vector
		        Jacobian product is computed.  Must be the same size as the output
		        of ``func``. This argument is optional when the output of ``func``
		        contains a single element and (if it is not provided) will be set
		        as a Tensor containing a single ``1``.
		    create_graph (bool, optional): If ``True``, both the output and result
		        will be computed in a differentiable way. Note that when ``strict``
		        is ``False``, the result can not require gradients or be
		        disconnected from the inputs.  Defaults to ``False``.
		    strict (bool, optional): If ``True``, an error will be raised when we
		        detect that there exists an input such that all the outputs are
		        independent of it. If ``False``, we return a Tensor of zeros as the
		        vjp for said inputs, which is the expected mathematical value.
		        Defaults to ``False``.
		
		Returns:
		    output (tuple): tuple with:
		        func_output (tuple of Tensors or Tensor): output of ``func(inputs)``
		
		        vjp (tuple of Tensors or Tensor): result of the dot product with
		        the same shape as the inputs.
		
		Example:
		
		    >>> def exp_reducer(x):
		    ...   return x.exp().sum(dim=1)
		    >>> inputs = torch.rand(4, 4)
		    >>> v = torch.ones(4)
		    >>> vjp(exp_reducer, inputs, v)
		    (tensor([5.7817, 7.2458, 5.7830, 6.7782]),
		     tensor([[1.4458, 1.3962, 1.3042, 1.6354],
		            [2.1288, 1.0652, 1.5483, 2.5035],
		            [2.2046, 1.1292, 1.1432, 1.3059],
		            [1.3225, 1.6652, 1.7753, 2.0152]]))
		
		    >>> vjp(exp_reducer, inputs, v, create_graph=True)
		    (tensor([5.7817, 7.2458, 5.7830, 6.7782], grad_fn=<SumBackward1>),
		     tensor([[1.4458, 1.3962, 1.3042, 1.6354],
		            [2.1288, 1.0652, 1.5483, 2.5035],
		            [2.2046, 1.1292, 1.1432, 1.3059],
		            [1.3225, 1.6652, 1.7753, 2.0152]], grad_fn=<MulBackward0>))
		
		    >>> def adder(x, y):
		    ...   return 2 * x + 3 * y
		    >>> inputs = (torch.rand(2), torch.rand(2))
		    >>> v = torch.ones(2)
		    >>> vjp(adder, inputs, v)
		    (tensor([2.4225, 2.3340]),
		     (tensor([2., 2.]), tensor([3., 3.])))
	**/
	static public function vjp(func:Dynamic, inputs:Dynamic, ?v:Dynamic, ?create_graph:Dynamic, ?strict:Dynamic):Dynamic;
}