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
	static public function contiguous(input:Dynamic):Dynamic;
	static public function get_analytical_jacobian(input:Dynamic, output:Dynamic):Dynamic;
	static public function get_numerical_jacobian(fn:Dynamic, input:Dynamic, target:Dynamic, ?eps:Dynamic):Dynamic;
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
	static public function iter_gradients(x:Dynamic):Dynamic;
	static public function iter_tensors(x:Dynamic, ?only_requiring_grad:Dynamic):Dynamic;
	static public function make_jacobian(input:Dynamic, num_out:Dynamic):Dynamic;
	static public function zero_gradients(i:Dynamic):Dynamic;
}