/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.wals;
@:pythonImport("tensorflow.contrib.factorization.python.ops.wals") extern class Wals_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Model function for the WALSFactorization estimator.
		
		Args:
		  features: Dictionary of features. See WALSMatrixFactorization.
		  labels: Must be None.
		  mode: A model_fn.ModeKeys object.
		  params: Dictionary of parameters containing arguments passed to the
		    WALSMatrixFactorization constructor.
		
		Returns:
		  A ModelFnOps object.
		
		Raises:
		  ValueError: If `mode` is not recognized.
	**/
	static public function _wals_factorization_model_function(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}