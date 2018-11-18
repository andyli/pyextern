/* This file is generated, do not edit! */
package torch.autograd;
@:pythonImport("torch.autograd") extern class Autograd_Module {
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
		_disable_profiler() -> List[List[torch.autograd.ProfilerEvent]]
	**/
	static public function _disable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_profiler(arg0: torch.autograd.ProfilerState) -> None
	**/
	static public function _enable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_checkpoint_valid():Dynamic;
	static public function _make_grads(outputs:Dynamic, grads:Dynamic):Dynamic;
	/**
		_pop_range() -> None
	**/
	static public function _pop_range(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_push_range(arg0: str) -> None
	**/
	static public function _push_range(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Computes the sum of gradients of given tensors w.r.t. graph leaves.
		
		The graph is differentiated using the chain rule. If any of ``tensors``
		are non-scalar (i.e. their data has more than one element) and require
		gradient, the function additionally requires specifying ``grad_tensors``.
		It should be a sequence of matching length, that contains gradient of
		the differentiated function w.r.t. corresponding tensors (``None`` is an
		acceptable value for all tensors that don't need gradient tensors).
		
		This function accumulates gradients in the leaves - you might need to zero
		them before calling it.
		
		Arguments:
		    tensors (sequence of Tensor): Tensors of which the derivative will be
		        computed.
		    grad_tensors (sequence of (Tensor or None)): Gradients w.r.t.
		        each element of corresponding tensors. None values can be specified for
		        scalar Tensors or ones that don't require grad. If a None value would
		        be acceptable for all grad_tensors, then this argument is optional.
		    retain_graph (bool, optional): If ``False``, the graph used to compute the grad
		        will be freed. Note that in nearly all cases setting this option to ``True``
		        is not needed and often can be worked around in a much more efficient
		        way. Defaults to the value of ``create_graph``.
		    create_graph (bool, optional): If ``True``, graph of the derivative will
		        be constructed, allowing to compute higher order derivative products.
		        Defaults to ``False``.
	**/
	static public function backward(tensors:Dynamic, ?grad_tensors:Dynamic, ?retain_graph:Dynamic, ?create_graph:Dynamic, ?grad_variables:Dynamic):Dynamic;
	/**
		Computes and returns the sum of gradients of outputs w.r.t. the inputs.
		
		``grad_outputs`` should be a sequence of length matching ``output``
		containing the pre-computed gradients w.r.t. each of the outputs. If an
		output doesn't require_grad, then the gradient can be ``None``).
		
		If ``only_inputs`` is ``True``, the function will only return a list of gradients
		w.r.t the specified inputs. If it's ``False``, then gradient w.r.t. all remaining
		leaves will still be computed, and will be accumulated into their ``.grad``
		attribute.
		
		Arguments:
		    outputs (sequence of Tensor): outputs of the differentiated function.
		    inputs (sequence of Tensor): Inputs w.r.t. which the gradient will be
		        returned (and not accumulated into ``.grad``).
		    grad_outputs (sequence of Tensor): Gradients w.r.t. each output.
		        None values can be specified for scalar Tensors or ones that don't require
		        grad. If a None value would be acceptable for all grad_tensors, then this
		        argument is optional. Default: None.
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
		gradients w.r.t. tensors in :attr:`inputs` that are of floating point type
		and with ``requires_grad=True``.
		
		The check between numerical and analytical gradients has the same behaviour as
		`numpy.allclose <https://docs.scipy.org/doc/numpy/reference/generated/numpy.allclose.html>`_,
		i.e., it checks that
		
		.. math::
		
		    \lvert a - n \rvert \leq \texttt{atol} + \texttt{rtol} \times \lvert n \rvert
		
		holds for all elements of analytical gradient :math:`a` and numerical
		gradient :math:`n`.
		
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
		    inputs (tuple of Tensor): inputs to the function
		    eps (float, optional): perturbation for finite differences
		    atol (float, optional): absolute tolerance
		    rtol (float, optional): relative tolerance
		    raise_exception (bool, optional): indicating whether to raise an exception if
		        the check fails. The exception gives more information about the
		        exact nature of the failure. This is helpful when debugging gradchecks.
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradcheck(func:Dynamic, inputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?raise_exception:Dynamic):Dynamic;
	/**
		Check gradients of gradients computed via small finite differences
		against analytical gradients w.r.t. tensors in :attr:`inputs` and
		:attr:`grad_outputs` that are of floating point type and with
		``requires_grad=True``.
		
		This function checks that backpropagating through the gradients computed
		to the given :attr:`grad_outputs` are correct.
		
		The check between numerical and analytical gradients has the same behaviour as
		`numpy.allclose <https://docs.scipy.org/doc/numpy/reference/generated/numpy.allclose.html>`_,
		i.e., it checks that
		
		.. math::
		
		    \lvert a - n \rvert \leq \texttt{atol} + \texttt{rtol} \times \lvert n \rvert
		
		holds for all elements of analytical gradient :math:`a` and numerical
		gradient :math:`n`.
		
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
		    inputs (tuple of Tensor): inputs to the function
		    grad_outputs (tuple of Tensor, optional): The gradients with respect to
		        the function's outputs.
		    eps (float, optional): perturbation for finite differences
		    atol (float, optional): absolute tolerance
		    rtol (float, optional): relative tolerance
		    gen_non_contig_grad_outputs (bool, optional): if :attr:`grad_outputs` is
		        ``None`` and :attr:`gen_non_contig_grad_outputs` is ``True``, the
		        randomly generated gradient outputs are made to be noncontiguous
		    raise_exception (bool, optional): indicating whether to raise an exception if
		        the check fails. The exception gives more information about the
		        exact nature of the failure. This is helpful when debugging gradchecks.
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradgradcheck(func:Dynamic, inputs:Dynamic, ?grad_outputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?gen_non_contig_grad_outputs:Dynamic, ?raise_exception:Dynamic):Dynamic;
	static public function variable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}