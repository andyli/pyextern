/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators") extern class Estimators_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by input `x`.
		
		This interprets all inputs as dense, fixed-length float values.
		
		Args:
		  x: Real-valued matrix of shape [n_samples, n_features...]. Can be
		     iterator that returns arrays of features.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input(x:Dynamic):Dynamic;
	/**
		Creates `FeatureColumn` objects for inputs defined by `input_fn`.
		
		This interprets all inputs as dense, fixed-length float values. This creates
		a local graph in which it calls `input_fn` to build the tensors, then discards
		it.
		
		Args:
		  input_fn: Function returning a tuple of input and target `Tensor` objects.
		
		Returns:
		  List of `FeatureColumn` objects.
	**/
	static public function infer_real_valued_columns_from_input_fn(input_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}