/* This file is generated, do not edit! */
package tensorflow.python.estimator.model_fn;
@:pythonImport("tensorflow.python.estimator.model_fn") extern class Model_fn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns `x` if it is a `Tensor`, raises TypeError otherwise.
	**/
	static public function _check_is_tensor(x:Dynamic, tensor_name:Dynamic):Dynamic;
	static public function _check_is_tensor_or_operation(x:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns the values of the given predictions dict or `Tensor`.
	**/
	static public function _prediction_values(predictions:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}