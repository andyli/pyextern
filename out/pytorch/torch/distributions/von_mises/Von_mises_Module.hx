/* This file is generated, do not edit! */
package torch.distributions.von_mises;
@:pythonImport("torch.distributions.von_mises") extern class Von_mises_Module {
	static public var _COEF_LARGE : Dynamic;
	static public var _COEF_SMALL : Dynamic;
	static public var _I0_COEF_LARGE : Dynamic;
	static public var _I0_COEF_SMALL : Dynamic;
	static public var _I1_COEF_LARGE : Dynamic;
	static public var _I1_COEF_SMALL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _eval_poly(y:Dynamic, coef:Dynamic):Dynamic;
	/**
		Returns ``log(I_order(x))`` for ``x > 0``,
		where `order` is either 0 or 1.
	**/
	static public function _log_modified_bessel_fn(x:Dynamic, ?order:Dynamic):Dynamic;
	static public function _rejection_sample(loc:Dynamic, concentration:Dynamic, proposal_r:Dynamic, x:Dynamic):Dynamic;
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
}