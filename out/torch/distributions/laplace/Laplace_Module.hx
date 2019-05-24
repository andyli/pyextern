/* This file is generated, do not edit! */
package torch.distributions.laplace;
@:pythonImport("torch.distributions.laplace") extern class Laplace_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return floating point info about a `Tensor`:
		- `.eps` is the smallest number that can be added to 1 without being lost.
		- `.tiny` is the smallest positive number greater than zero
		  (much smaller than `.eps`).
		
		Args:
		    tensor (Tensor): tensor of floating point data.
		Returns:
		    _Finfo: a `namedtuple` with fields `.eps` and `.tiny`.
	**/
	static public function _finfo(tensor:Dynamic):Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per :ref:`_broadcasting-semantics`.
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to scalar Tensors.
		
		Args:
		    values (list of `numbers.Number` or `torch.*Tensor`)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` or
		        `torch.*Tensor` instance
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
}