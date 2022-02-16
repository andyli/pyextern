/* This file is generated, do not edit! */
package torch.autograd;
@:pythonImport("torch.autograd") extern class Autograd_Module {
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
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function _OptionalTensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _TensorOrTensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
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
		_add_metadata_json(arg0: str, arg1: str) -> None
	**/
	static public function _add_metadata_json(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_disable_profiler() -> torch._C._autograd._ProfilerResult
	**/
	static public function _disable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_disable_profiler_legacy(profiler_disable_options: Optional[torch._C._autograd._ProfilerDisableOptions] = <torch._C._autograd._ProfilerDisableOptions object at 0x7ff7d9d693f0>) -> List[List[torch._C._autograd.ProfilerEvent]]
	**/
	static public function _disable_profiler_legacy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_profiler(config: torch._C._autograd.ProfilerConfig, activities: Set[torch._C._autograd.ProfilerActivity], scopes: Set[at::RecordScope] = set()) -> None
	**/
	static public function _enable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_profiler_legacy(arg0: torch._C._autograd.ProfilerConfig) -> None
	**/
	static public function _enable_profiler_legacy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_record_function(arg0: bool) -> None
	**/
	static public function _enable_record_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_checkpoint_valid():Dynamic;
	static public function _make_grads(outputs:Dynamic, grads:Dynamic):Dynamic;
	/**
		_prepare_profiler(arg0: torch._C._autograd.ProfilerConfig, arg1: Set[torch._C._autograd.ProfilerActivity]) -> None
	**/
	static public function _prepare_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_profiler_enabled() -> bool
	**/
	static public function _profiler_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_register_saved_tensors_default_hooks(arg0: function, arg1: function) -> None
	**/
	static public function _register_saved_tensors_default_hooks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_reset_saved_tensors_default_hooks() -> None
	**/
	static public function _reset_saved_tensors_default_hooks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_empty_test_observer(arg0: bool, arg1: float) -> None
	**/
	static public function _set_empty_test_observer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_supported_activities() -> Set[torch._C._autograd.ProfilerActivity]
	**/
	static public function _supported_activities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _tensor_or_tensors_to_tuple(tensors:Dynamic, length:Dynamic):Dynamic;
	/**
		Computes the sum of gradients of given tensors with respect to graph
		leaves.
		
		The graph is differentiated using the chain rule. If any of ``tensors``
		are non-scalar (i.e. their data has more than one element) and require
		gradient, then the Jacobian-vector product would be computed, in this
		case the function additionally requires specifying ``grad_tensors``.
		It should be a sequence of matching length, that contains the "vector"
		in the Jacobian-vector product, usually the gradient of the differentiated
		function w.r.t. corresponding tensors (``None`` is an acceptable value for
		all tensors that don't need gradient tensors).
		
		This function accumulates gradients in the leaves - you might need to zero
		``.grad`` attributes or set them to ``None`` before calling it.
		See :ref:`Default gradient layouts<default-grad-layouts>`
		for details on the memory layout of accumulated gradients.
		
		.. note::
		    Using this method with ``create_graph=True`` will create a reference cycle
		    between the parameter and its gradient which can cause a memory leak.
		    We recommend using ``autograd.grad`` when creating the graph to avoid this.
		    If you have to use this function, make sure to reset the ``.grad`` fields of your
		    parameters to ``None`` after use to break the cycle and avoid the leak.
		
		.. note::
		
		    If you run any forward ops, create ``grad_tensors``, and/or call ``backward``
		    in a user-specified CUDA stream context, see
		    :ref:`Stream semantics of backward passes<bwd-cuda-stream-semantics>`.
		
		.. note::
		
		    When ``inputs`` are provided and a given input is not a leaf,
		    the current implementation will call its grad_fn (even though it is not strictly needed to get this gradients).
		    It is an implementation detail on which the user should not rely.
		    See https://github.com/pytorch/pytorch/pull/60521#issuecomment-867061780 for more details.
		
		Args:
		    tensors (Sequence[Tensor] or Tensor): Tensors of which the derivative will be
		        computed.
		    grad_tensors (Sequence[Tensor or None] or Tensor, optional): The "vector" in
		        the Jacobian-vector product, usually gradients w.r.t. each element of
		        corresponding tensors. None values can be specified for scalar Tensors or
		        ones that don't require grad. If a None value would be acceptable for all
		        grad_tensors, then this argument is optional.
		    retain_graph (bool, optional): If ``False``, the graph used to compute the grad
		        will be freed. Note that in nearly all cases setting this option to ``True``
		        is not needed and often can be worked around in a much more efficient
		        way. Defaults to the value of ``create_graph``.
		    create_graph (bool, optional): If ``True``, graph of the derivative will
		        be constructed, allowing to compute higher order derivative products.
		        Defaults to ``False``.
		    inputs (Sequence[Tensor] or Tensor, optional): Inputs w.r.t. which the gradient
		        be will accumulated into ``.grad``. All other Tensors will be ignored. If
		        not provided, the gradient is accumulated into all the leaf Tensors that
		        were used to compute the attr::tensors.
	**/
	static public function backward(tensors:Dynamic, ?grad_tensors:Dynamic, ?retain_graph:Dynamic, ?create_graph:Dynamic, ?grad_variables:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Computes and returns the sum of gradients of outputs with respect to
		the inputs.
		
		``grad_outputs`` should be a sequence of length matching ``output``
		containing the "vector" in Jacobian-vector product, usually the pre-computed
		gradients w.r.t. each of the outputs. If an output doesn't require_grad,
		then the gradient can be ``None``).
		
		.. note::
		
		    If you run any forward ops, create ``grad_outputs``, and/or call ``grad``
		    in a user-specified CUDA stream context, see
		    :ref:`Stream semantics of backward passes<bwd-cuda-stream-semantics>`.
		
		.. note::
		
		    ``only_inputs`` argument is deprecated and is ignored now (defaults to ``True``).
		    To accumulate gradient for other parts of the graph, please use
		    ``torch.autograd.backward``.
		
		Args:
		    outputs (sequence of Tensor): outputs of the differentiated function.
		    inputs (sequence of Tensor): Inputs w.r.t. which the gradient will be
		        returned (and not accumulated into ``.grad``).
		    grad_outputs (sequence of Tensor): The "vector" in the Jacobian-vector product.
		        Usually gradients w.r.t. each output. None values can be specified for scalar
		        Tensors or ones that don't require grad. If a None value would be acceptable
		        for all grad_tensors, then this argument is optional. Default: None.
		    retain_graph (bool, optional): If ``False``, the graph used to compute the grad
		        will be freed. Note that in nearly all cases setting this option to ``True``
		        is not needed and often can be worked around in a much more efficient
		        way. Defaults to the value of ``create_graph``.
		    create_graph (bool, optional): If ``True``, graph of the derivative will
		        be constructed, allowing to compute higher order derivative products.
		        Default: ``False``.
		    allow_unused (bool, optional): If ``False``, specifying inputs that were not
		        used when computing outputs (and therefore their grad is always zero)
		        is an error. Defaults to ``False``.
	**/
	static public function grad(outputs:Dynamic, inputs:Dynamic, ?grad_outputs:Dynamic, ?retain_graph:Dynamic, ?create_graph:Dynamic, ?only_inputs:Dynamic, ?allow_unused:Dynamic):Dynamic;
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
		Implement a function with checks for ``__torch_function__`` overrides.
		
		See torch::autograd::handle_torch_function for the equivalent of this
		function in the C++ implementation.
		
		Arguments
		---------
		public_api : function
		    Function exposed by the public torch API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __torch_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : tuple
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		object
		    Result from calling ``implementation`` or an ``__torch_function__``
		    method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
		
		Example
		-------
		>>> def func(a):
		...     if type(a) is not torch.Tensor:  # This will make func dispatchable by __torch_function__
		...         return handle_torch_function(func, (a,), a)
		...     return a + 0
	**/
	static public function handle_torch_function(public_api:Dynamic, relevant_args:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kineto_available() -> bool
	**/
	static public function kineto_available(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function variable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}