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
		Computes the sum of gradients of given variables w.r.t. graph leaves.
		
		The graph is differentiated using the chain rule. If any of ``variables``
		are non-scalar (i.e. their data has more than one element) and require
		gradient, the function additionaly requires specifying ``grad_variables``.
		It should be a sequence of matching length, that containins gradient of
		the differentiated function w.r.t. corresponding variables (``None`` is an
		acceptable value for all variables that don't need gradient tensors).
		
		This function accumulates gradients in the leaves - you might need to zero
		them before calling it.
		
		Arguments:
		    variables (sequence of Variable): Variables of which the derivative will be
		        computed.
		    grad_variables (sequence of Tensor): Gradients w.r.t. each element of
		        corresponding variables. Required only for non-scalar variables that
		        require gradient.
		    retain_variables (bool): If ``True``, buffers necessary for computing
		        gradients won't be freed after use. It is only necessary to
		        specify ``True`` if you want to differentiate some subgraph multiple
		        times.
	**/
	static public function backward(variables:Dynamic, grad_variables:Dynamic, ?retain_variables:Dynamic):Dynamic;
	/**
		Check gradients computed via small finite differences
		   against analytical gradients
		
		The check between numerical and analytical has the same behaviour as
		numpy.allclose https://docs.scipy.org/doc/numpy/reference/generated/numpy.allclose.html
		meaning it check that
		    absolute(a - n) <= (atol + rtol * absolute(n))
		is true for all elements of analytical jacobian a and numerical jacobian n.
		
		Args:
		    func: Python function that takes Variable inputs and returns
		        a tuple of Variables
		    inputs: tuple of Variables
		    eps: perturbation for finite differences
		    atol: absolute tolerance
		    rtol: relative tolerance
		
		Returns:
		    True if all differences satisfy allclose condition
	**/
	static public function gradcheck(func:Dynamic, inputs:Dynamic, ?eps:Dynamic, ?atol:Dynamic, ?rtol:Dynamic):Dynamic;
}