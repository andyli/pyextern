/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.transformed_distribution;
@:pythonImport("tensorflow.python.ops.distributions.transformed_distribution") extern class Transformed_distribution_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convenience function which concatenates input vectors.
	**/
	static public function _concat_vectors(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns `True` `Tensor` if `Tensor` shape implies a scalar.
	**/
	static public function _is_scalar_from_shape(shape:Dynamic):Dynamic;
	/**
		Convenience function which attempts to statically `reduce_all`.
	**/
	static public function _logical_and(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Convenience function which attempts to statically compute `x == y`.
	**/
	static public function _logical_equal(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Convenience function which attempts to statically apply `logical_not`.
	**/
	static public function _logical_not(x:Dynamic):Dynamic;
	/**
		Returns `Tensor`'s `rank` implied by a `Tensor` shape.
	**/
	static public function _ndims_from_shape(shape:Dynamic):Dynamic;
	/**
		Convenience function attempts to statically construct `ones_like`.
	**/
	static public function _ones_like(x:Dynamic):Dynamic;
	/**
		Convenience function which chooses the condition based on the predicate.
	**/
	static public function _pick_scalar_condition(pred:Dynamic, cond_true:Dynamic, cond_false:Dynamic):Dynamic;
	/**
		Returns the static value of a `Tensor` or `None`.
	**/
	static public function _static_value(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}