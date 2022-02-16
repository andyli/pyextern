/* This file is generated, do not edit! */
package torch.autograd.gradcheck;
@:pythonImport("torch.autograd.gradcheck") extern class Gradcheck_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var FAILED_BATCHED_GRAD_MSG : Dynamic;
	static public var FAILED_NONDET_MSG : Dynamic;
	static public var FAST_FAIL_SLOW_OK_MSG : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function _TensorOrTensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjusted_atol(atol:Dynamic, u:Dynamic, v:Dynamic):Dynamic;
	static public function _allclose_with_type_promotion(a:Dynamic, b:Dynamic, rtol:Dynamic, atol:Dynamic):Dynamic;
	static public function _allocate_jacobians_with_inputs(input_tensors:Dynamic, numel_output:Dynamic):Dynamic;
	static public function _allocate_jacobians_with_outputs(output_tensors:Dynamic, numel_input:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	static public function _as_tuple(x:Dynamic):Dynamic;
	static public function _check_analytical_jacobian_attributes(inputs:Dynamic, output:Dynamic, nondet_tol:Dynamic, check_grad_dtypes:Dynamic, ?fast_mode:Dynamic, ?v:Dynamic):Dynamic;
	static public function _check_analytical_numerical_equal(all_analytical:Dynamic, all_numerical:Dynamic, complex_indices:Dynamic, tupled_inputs:Dynamic, outputs:Dynamic, func:Dynamic, all_v:Dynamic, all_u:Dynamic, rtol:Dynamic, atol:Dynamic, test_imag:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	static public function _check_inputs(tupled_inputs:Dynamic, check_sparse_nnz:Dynamic):Dynamic;
	static public function _check_jacobians_equal(j1:Dynamic, j2:Dynamic, atol:Dynamic):Dynamic;
	static public function _check_no_differentiable_outputs(func:Dynamic, inputs:Dynamic, func_out:Dynamic, eps:Dynamic):Dynamic;
	static public function _check_no_differentiable_outputs_fast(func:Dynamic, func_out:Dynamic, all_inputs:Dynamic, inputs_indices:Dynamic, all_u:Dynamic, eps:Dynamic, nondet_tol:Dynamic):Dynamic;
	static public function _check_outputs(outputs:Dynamic):Dynamic;
	static public function _combine_jacobian_cols(jacobians_cols:Dynamic, outputs:Dynamic, input:Dynamic, numel:Dynamic):Dynamic;
	static public function _compute_analytical_jacobian_rows(vjp_fn:Dynamic, sample_output:Dynamic):Dynamic;
	static public function _compute_numerical_gradient(fn:Dynamic, entry:Dynamic, v:Dynamic, norm_v:Dynamic, nbhd_checks_fn:Dynamic):Dynamic;
	static public function _compute_numerical_jvps_wrt_specific_input(jvp_fn:Dynamic, delta:Dynamic, input_is_complex:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	static public function _differentiable_outputs(x:Dynamic):Dynamic;
	static public function _dot_with_type_promotion(u:Dynamic, v:Dynamic):Dynamic;
	static public function _fast_gradcheck(func:Dynamic, func_out:Dynamic, inputs:Dynamic, outputs:Dynamic, eps:Dynamic, rtol:Dynamic, atol:Dynamic, check_grad_dtypes:Dynamic, nondet_tol:Dynamic, ?use_forward_ad:Dynamic, ?complex_indices:Dynamic, ?test_imag:Dynamic):Dynamic;
	static public function _get_analytical_jacobian(inputs:Dynamic, outputs:Dynamic, input_idx:Dynamic, output_idx:Dynamic):Dynamic;
	/**
		Computes the analytical Jacobian using forward mode AD of `fn(inputs)` using forward mode AD with respect
		to `target`. Returns N * M Jacobians where N is the number of tensors in target that require grad and
		M is the number of non-integral outputs.
		Contrary to other functions here, this function requires "inputs" to actually be used by the function.
		The computed value is expected to be wrong if the function captures the inputs by side effect instead of
		using the passed ones (many torch.nn tests do this).
		
		Args:
		    fn: the function to compute the jacobian for
		    inputs: inputs to `fn`
		    outputs: provide precomputed outputs to avoid one extra invocation of fn
		    check_grad_dtypes: if True, will check that the gradient dtype are valid
		    all_u (optional): if provided, the Jacobian will be right multiplied with this vector
		
		Returns:
		    A tuple of M N-tuples of tensors
	**/
	static public function _get_analytical_jacobian_forward_ad(fn:Dynamic, inputs:Dynamic, outputs:Dynamic, ?check_grad_dtypes:Dynamic, ?all_u:Dynamic):Dynamic;
	static public function _get_analytical_vJu_backward_mode(inputs:Dynamic, outputs:Dynamic, nondet_tol:Dynamic, check_grad_dtypes:Dynamic, all_v:Dynamic, all_u:Dynamic):Dynamic;
	static public function _get_analytical_vjps_wrt_specific_output(vjp_fn:Dynamic, sample_output:Dynamic, v:Dynamic):Dynamic;
	static public function _get_failed_batched_grad_test_msg(output_idx:Dynamic, input_idx:Dynamic, res:Dynamic, exp:Dynamic):Dynamic;
	static public function _get_inp_tensors(tupled_inputs:Dynamic):Dynamic;
	static public function _get_input_to_perturb(input:Dynamic):Dynamic;
	static public function _get_notallclose_msg(analytical:Dynamic, numerical:Dynamic, output_idx:Dynamic, input_idx:Dynamic, complex_indices:Dynamic, ?test_imag:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	/**
		Computes the numerical Jacobian of `fn(inputs)` with respect to `target`. If
		not specified, targets are the input. Returns M * N Jacobians where N is the
		number of tensors in target that require grad and M is the number of non-integral
		outputs.
		
		Args:
		    fn: the function to compute the jacobian for
		    inputs: inputs to `fn`
		    outputs: provide precomputed outputs to avoid one extra invocation of fn
		    target: the Tensors wrt whom Jacobians are calculated (default=`inputs`)
		    eps: the magnitude of the perturbation during finite differencing
		         (default=`1e-3`)
		    is_forward_ad: if this numerical jacobian is computed to be checked wrt
		                   forward AD gradients (this is used for error checking only)
		
		Returns:
		    A list of M N-tuples of tensors
		
		Note that `target` may not even be part of `input` to `fn`, so please be
		**very careful** in this to not clone `target`.
	**/
	static public function _get_numerical_jacobian(fn:Dynamic, inputs:Dynamic, ?outputs:Dynamic, ?target:Dynamic, ?eps:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	static public function _get_numerical_jvp_fn(wrapped_fn:Dynamic, input_to_perturb:Dynamic, eps:Dynamic, nbhd_checks_fn:Dynamic):Dynamic;
	static public function _get_numerical_jvp_wrt_specific_input(fn:Dynamic, input_idx:Dynamic, inputs:Dynamic, u:Dynamic, eps:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	static public function _get_numerical_vJu(fn:Dynamic, inputs:Dynamic, inp_indices:Dynamic, func_out:Dynamic, all_u:Dynamic, all_v:Dynamic, eps:Dynamic, is_forward_ad:Dynamic):Dynamic;
	static public function _gradcheck_helper(func:Dynamic, inputs:Dynamic, eps:Dynamic, atol:Dynamic, rtol:Dynamic, check_sparse_nnz:Dynamic, nondet_tol:Dynamic, check_undefined_grad:Dynamic, check_grad_dtypes:Dynamic, check_batched_grad:Dynamic, check_forward_ad:Dynamic, fast_mode:Dynamic):Dynamic;
	static public function _gradcheck_real_imag(gradcheck_fn:Dynamic, func:Dynamic, func_out:Dynamic, tupled_inputs:Dynamic, outputs:Dynamic, eps:Dynamic, rtol:Dynamic, atol:Dynamic, check_grad_dtypes:Dynamic, check_forward_ad:Dynamic, nondet_tol:Dynamic):Dynamic;
	static public function _is_float_or_complex_tensor(obj:Dynamic):Dynamic;
	static public function _iter_tensor(x_tensor:Dynamic):Dynamic;
	static public function _iter_tensors(x:Dynamic, ?only_requiring_grad:Dynamic):Dynamic;
	static public function _make_vectors(inp_tensors:Dynamic, outputs:Dynamic, use_forward_ad:Dynamic):Dynamic;
	static public function _mul_tensor_or_tuple(u:Dynamic, k:Dynamic):Dynamic;
	static public function _prepare_input(input:Dynamic, maybe_perturbed_input:Dynamic, ?fast_mode:Dynamic):Dynamic;
	static public function _real_and_imag_input(fn:Dynamic, complex_inp_indices:Dynamic):Dynamic;
	static public function _real_and_imag_output(fn:Dynamic):Dynamic;
	static public function _reshape_tensor_or_tuple(u:Dynamic, shape:Dynamic):Dynamic;
	static public function _run_slow_mode_and_get_error(func:Dynamic, tupled_inputs:Dynamic, outputs:Dynamic, input_idx:Dynamic, output_idx:Dynamic, rtol:Dynamic, atol:Dynamic, is_forward_ad:Dynamic):Dynamic;
	static public function _slow_gradcheck(func:Dynamic, func_out:Dynamic, tupled_inputs:Dynamic, outputs:Dynamic, eps:Dynamic, rtol:Dynamic, atol:Dynamic, check_grad_dtypes:Dynamic, nondet_tol:Dynamic, ?use_forward_ad:Dynamic, ?complex_indices:Dynamic, ?test_imag:Dynamic):Dynamic;
	static public function _stack_and_check_tensors(list_of_list_of_tensors:Dynamic, inputs:Dynamic, numel_outputs:Dynamic):Dynamic;
	static public function _test_backward_mul_by_grad_output(outputs:Dynamic, inputs:Dynamic, check_sparse_nnz:Dynamic):Dynamic;
	static public function _test_batched_grad(input:Dynamic, output:Dynamic, output_idx:Dynamic):Dynamic;
	static public function _test_undefined_grad(func:Dynamic, outputs:Dynamic, inputs:Dynamic):Dynamic;
	static public function _to_flat_dense_if_sparse(tensor:Dynamic):Dynamic;
	static public function _to_real_dtype(dtype:Dynamic):Dynamic;
	static public function _transpose(matrix_of_tensors:Dynamic):Dynamic;
	static public function _vec_from_tensor(x:Dynamic, generator:Dynamic, ?downcast_complex:Dynamic):Dynamic;
	static public function _with_prepare_inputs(fn:Dynamic, inputs:Dynamic, input_idx:Dynamic, input_to_perturb:Dynamic, ?fast_mode:Dynamic):Dynamic;
	static public function check_outputs_same_dtype_and_shape(output1:Dynamic, output2:Dynamic, eps:Dynamic, ?idx:Dynamic):Dynamic;
	static public function get_analytical_jacobian(inputs:Dynamic, output:Dynamic, ?nondet_tol:Dynamic, ?grad_out:Dynamic):Dynamic;
	/**
		Deprecated API to compute the numerical Jacobian for a given fn and its inputs.
		
		Args:
		    fn: the function to compute the Jacobian for (must take inputs as a tuple)
		    input: input to `fn`
		    target: the Tensors wrt whom Jacobians are calculated (default=`input`)
		    eps: the magnitude of the perturbation during finite differencing
		         (default=`1e-3`)
		
		Returns:
		    A list of Jacobians of `fn` (restricted to its first output) with respect to
		    each input or target, if provided.
		
		Note that `target` may not even be part of `input` to `fn`, so please be
		**very careful** in this to not clone `target`.
	**/
	static public function get_numerical_jacobian(fn:Dynamic, inputs:Dynamic, ?target:Dynamic, ?eps:Dynamic, ?grad_out:Dynamic):Dynamic;
	static public function get_numerical_jacobian_wrt_specific_input(fn:Dynamic, input_idx:Dynamic, inputs:Dynamic, outputs:Dynamic, eps:Dynamic, ?input:Dynamic, ?is_forward_ad:Dynamic):Dynamic;
	/**
		Check gradients computed via small finite differences against analytical
		gradients w.r.t. tensors in :attr:`inputs` that are of floating point or complex type
		and with ``requires_grad=True``.
		
		The check between numerical and analytical gradients uses :func:`~torch.allclose`.
		
		For most of the complex functions we consider for optimization purposes, no notion of
		Jacobian exists. Instead, gradcheck verifies if the numerical and analytical values of
		the Wirtinger and Conjugate Wirtinger derivatives are consistent. Because the gradient
		computation is done under the assumption that the overall function has a real-valued
		output, we treat functions with complex output in a special way. For these functions,
		gradcheck is applied to two real-valued functions corresponding to taking the real
		components of the complex outputs for the first, and taking the imaginary components
		of the complex outputs for the second. For more details, check out
		:ref:`complex_autograd-doc`.
		
		.. note::
		    The default values are designed for :attr:`input` of double precision.
		    This check will likely fail if :attr:`input` is of less precision, e.g.,
		    ``FloatTensor``.
		
		.. warning::
		   If any checked tensor in :attr:`input` has overlapping memory, i.e.,
		   different indices pointing to the same memory address (e.g., from
		   :func:`torch.expand`), this check will likely fail because the numerical
		   gradients computed by point perturbation at such indices will change
		   values at all other indices that share the same memory address.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a Tensor or a tuple of Tensors
		    inputs (tuple of Tensor or Tensor): inputs to the function
		    eps (float, optional): perturbation for finite differences
		    atol (float, optional): absolute tolerance
		    rtol (float, optional): relative tolerance
		    raise_exception (bool, optional): indicating whether to raise an exception if
		        the check fails. The exception gives more information about the
		        exact nature of the failure. This is helpful when debugging gradchecks.
		    check_sparse_nnz (bool, optional): if True, gradcheck allows for SparseTensor input,
		        and for any SparseTensor at input, gradcheck will perform check at nnz positions only.
		    nondet_tol (float, optional): tolerance for non-determinism. When running
		        identical inputs through the differentiation, the results must either match
		        exactly (default, 0.0) or be within this tolerance.
		    check_undefined_grad (bool, optional): if True, check if undefined output grads
		        are supported and treated as zeros, for ``Tensor`` outputs.
		    check_batched_grad (bool, optional): if True, check if we can compute
		        batched gradients using prototype vmap support. Defaults to False.
		    check_forward_ad (bool, optional): if True, check that the gradients computed with forward
		        mode AD match the numerical ones. Defaults to False.
		    fast_mode (bool, optional): Fast mode for gradcheck and gradgradcheck is currently only
		        implemented for R to R functions. If none of the inputs and outputs are complex
		        a faster implementation of gradcheck that no longer computes the entire jacobian
		        is run; otherwise, we fall back to the slow implementation.
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradcheck(func:Dynamic, inputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?raise_exception:Dynamic, ?check_sparse_nnz:Dynamic, ?nondet_tol:Dynamic, ?check_undefined_grad:Dynamic, ?check_grad_dtypes:Dynamic, ?check_batched_grad:Dynamic, ?check_forward_ad:Dynamic, ?fast_mode:Dynamic):Dynamic;
	/**
		Check gradients of gradients computed via small finite differences
		against analytical gradients w.r.t. tensors in :attr:`inputs` and
		:attr:`grad_outputs` that are of floating point or complex type and with
		``requires_grad=True``.
		
		This function checks that backpropagating through the gradients computed
		to the given :attr:`grad_outputs` are correct.
		
		The check between numerical and analytical gradients uses :func:`~torch.allclose`.
		
		.. note::
		    The default values are designed for :attr:`input` and
		    :attr:`grad_outputs` of double precision. This check will likely fail if
		    they are of less precision, e.g., ``FloatTensor``.
		
		.. warning::
		   If any checked tensor in :attr:`input` and :attr:`grad_outputs` has
		   overlapping memory, i.e., different indices pointing to the same memory
		   address (e.g., from :func:`torch.expand`), this check will likely fail
		   because the numerical gradients computed by point perturbation at such
		   indices will change values at all other indices that share the same
		   memory address.
		
		Args:
		    func (function): a Python function that takes Tensor inputs and returns
		        a Tensor or a tuple of Tensors
		    inputs (tuple of Tensor or Tensor): inputs to the function
		    grad_outputs (tuple of Tensor or Tensor, optional): The gradients with
		        respect to the function's outputs.
		    eps (float, optional): perturbation for finite differences
		    atol (float, optional): absolute tolerance
		    rtol (float, optional): relative tolerance
		    gen_non_contig_grad_outputs (bool, optional): if :attr:`grad_outputs` is
		        ``None`` and :attr:`gen_non_contig_grad_outputs` is ``True``, the
		        randomly generated gradient outputs are made to be noncontiguous
		    raise_exception (bool, optional): indicating whether to raise an exception if
		        the check fails. The exception gives more information about the
		        exact nature of the failure. This is helpful when debugging gradchecks.
		    nondet_tol (float, optional): tolerance for non-determinism. When running
		        identical inputs through the differentiation, the results must either match
		        exactly (default, 0.0) or be within this tolerance. Note that a small amount
		        of nondeterminism in the gradient will lead to larger inaccuracies in
		        the second derivative.
		    check_undefined_grad (bool, optional): if True, check if undefined output grads
		        are supported and treated as zeros
		    check_batched_grad (bool, optional): if True, check if we can compute
		        batched gradients using prototype vmap support. Defaults to False.
		    fast_mode (bool, optional): if True, run a faster implementation of gradgradcheck that
		        no longer computes the entire jacobian.
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradgradcheck(func:Dynamic, inputs:Dynamic, ?grad_outputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?gen_non_contig_grad_outputs:Dynamic, ?raise_exception:Dynamic, ?nondet_tol:Dynamic, ?check_undefined_grad:Dynamic, ?check_grad_dtypes:Dynamic, ?check_batched_grad:Dynamic, ?fast_mode:Dynamic):Dynamic;
	/**
		Returns ``True`` if the passed-in input is a Tensor-like.
		
		Currently, this occurs whenever there's a ``__torch_function__``
		attribute on the type of the input.
		
		Examples
		--------
		A subclass of tensor is generally a Tensor-like.
		
		>>> class SubTensor(torch.Tensor): ...
		>>> is_tensor_like(SubTensor([0]))
		True
		
		Built-in or user types aren't usually Tensor-like.
		
		>>> is_tensor_like(6)
		False
		>>> is_tensor_like(None)
		False
		>>> class NotATensor: ...
		>>> is_tensor_like(NotATensor())
		False
		
		But, they can be made Tensor-like by implementing __torch_function__.
		
		>>> class TensorLike:
		...     @classmethod
		...     def __torch_function__(cls, func, types, args, kwargs):
		...         return -1
		>>> is_tensor_like(TensorLike())
		True
	**/
	static public function is_tensor_like(inp:Dynamic):Dynamic;
	/**
		vmap is the vectorizing map. Returns a new function that maps `func` over some
		dimension of the inputs. Semantically, vmap pushes the map into PyTorch
		operations called by `func`, effectively vectorizing those operations.
		
		vmap is useful for handling batch dimensions: one can write a function `func`
		that runs on examples and then lift it to a function that can take batches of
		examples with `vmap(func)`. vmap can also be used to compute batched
		gradients when composed with autograd.
		
		.. note::
		    We are actively developing a different and improved vmap prototype
		    `here. <https://github.com/zou3519/functorch>`_ The improved
		    prototype is able to arbitrarily compose with gradient computation.
		    Please give that a try if that is what you're looking for.
		
		    Furthermore, if you're interested in using vmap for your use case,
		    please `contact us! <https://github.com/pytorch/pytorch/issues/42368>`_
		    We're interested in gathering feedback from early adopters to inform
		    the design.
		
		.. warning::
		    torch.vmap is an experimental prototype that is subject to
		    change and/or deletion. Please use at your own risk.
		
		Args:
		    func (function): A Python function that takes one or more arguments.
		        Must return one or more Tensors.
		    in_dims (int or nested structure): Specifies which dimension of the
		        inputs should be mapped over. `in_dims` should have a structure
		        like the inputs. If the `in_dim` for a particular input is None,
		        then that indicates there is no map dimension. Default: 0.
		    out_dims (int or Tuple[int]): Specifies where the mapped dimension
		        should appear in the outputs. If `out_dims` is a Tuple, then it should
		        have one element per output. Default: 0.
		
		Returns:
		    Returns a new "batched" function. It takes the same inputs as `func`,
		    except each input has an extra dimension at the index specified by `in_dims`.
		    It takes returns the same outputs as `func`, except each output has
		    an extra dimension at the index specified by `out_dims`.
		
		.. warning:
		    vmap works best with functional-style code. Please do not perform any
		    side-effects in `func`, with the exception of in-place PyTorch operations.
		    Examples of side-effects include mutating Python data structures and
		    assigning values to variables not captured in `func`.
		
		One example of using `vmap` is to compute batched dot products. PyTorch
		doesn't provide a batched `torch.dot` API; instead of unsuccessfully
		rummaging through docs, use `vmap` to construct a new function.
		
		    >>> torch.dot                            # [D], [D] -> []
		    >>> batched_dot = torch.vmap(torch.dot)  # [N, D], [N, D] -> [N]
		    >>> x, y = torch.randn(2, 5), torch.randn(2, 5)
		    >>> batched_dot(x, y)
		
		`vmap` can be helpful in hiding batch dimensions, leading to a simpler
		model authoring experience.
		
		    >>> batch_size, feature_size = 3, 5
		    >>> weights = torch.randn(feature_size, requires_grad=True)
		    >>>
		    >>> def model(feature_vec):
		    >>>     # Very simple linear model with activation
		    >>>     return feature_vec.dot(weights).relu()
		    >>>
		    >>> examples = torch.randn(batch_size, feature_size)
		    >>> result = torch.vmap(model)(examples)
		
		`vmap` can also help vectorize computations that were previously difficult
		or impossible to batch. One example is higher-order gradient computation.
		The PyTorch autograd engine computes vjps (vector-Jacobian products).
		Computing a full Jacobian matrix for some function f: R^N -> R^N usually
		requires N calls to `autograd.grad`, one per Jacobian row. Using `vmap`,
		we can vectorize the whole computation, computing the Jacobian in a single
		call to `autograd.grad`.
		
		    >>> # Setup
		    >>> N = 5
		    >>> f = lambda x: x ** 2
		    >>> x = torch.randn(N, requires_grad=True)
		    >>> y = f(x)
		    >>> I_N = torch.eye(N)
		    >>>
		    >>> # Sequential approach
		    >>> jacobian_rows = [torch.autograd.grad(y, x, v, retain_graph=True)[0]
		    >>>                  for v in I_N.unbind()]
		    >>> jacobian = torch.stack(jacobian_rows)
		    >>>
		    >>> # vectorized gradient computation
		    >>> def get_vjp(v):
		    >>>     return torch.autograd.grad(y, x, v)
		    >>> jacobian = torch.vmap(get_vjp)(I_N)
		
		.. note::
		    vmap does not provide general autobatching or handle variable-length
		    sequences out of the box.
	**/
	static public function vmap(func:Dynamic, ?in_dims:Dynamic, ?out_dims:Dynamic):Dynamic;
}