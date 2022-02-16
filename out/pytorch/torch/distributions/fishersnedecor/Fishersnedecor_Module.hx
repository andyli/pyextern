/* This file is generated, do not edit! */
package torch.distributions.fishersnedecor;
@:pythonImport("torch.distributions.fishersnedecor") extern class Fishersnedecor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var nan : Dynamic;
}