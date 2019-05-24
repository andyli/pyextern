/* This file is generated, do not edit! */
package torch.autograd.gradcheck;
@:pythonImport("torch.autograd.gradcheck") extern class Gradcheck_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _as_tuple(x:Dynamic):Dynamic;
	static public function _differentiable_outputs(x:Dynamic):Dynamic;
	static public function get_analytical_jacobian(input:Dynamic, output:Dynamic):Dynamic;
	static public function get_numerical_jacobian(fn:Dynamic, input:Dynamic, ?target:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Check gradients computed via small finite differences against analytical
		gradients w.r.t. tensors in :attr:`inputs` that are of floating point type
		and with ``requires_grad=True``.
		
		The check between numerical and analytical gradients uses :func:`~torch.allclose`.
		
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
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradgradcheck(func:Dynamic, inputs:Dynamic, ?grad_outputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?gen_non_contig_grad_outputs:Dynamic, ?raise_exception:Dynamic):Dynamic;
	static public function iter_tensors(x:Dynamic, ?only_requiring_grad:Dynamic):Dynamic;
	static public function make_jacobian(input:Dynamic, num_out:Dynamic):Dynamic;
	static public function zero_gradients(x:Dynamic):Dynamic;
}