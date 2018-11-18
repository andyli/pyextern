/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.estimator_batch.estimator_utils;
@:pythonImport("tensorflow.contrib.boosted_trees.estimator_batch.estimator_utils") extern class Estimator_utils_Module {
	static public var _CORE_MODE_TO_CONTRIB_MODE_ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _core_mode_to_contrib_mode(mode:Dynamic):Dynamic;
	/**
		Converts EstimatorSpec.export_outputs to output_alternatives.
		
		Args:
		  export_outputs: export_outputs created by create_estimator_spec.
		Returns:
		  converted output_alternatives.
	**/
	static public function _export_outputs_to_output_alternatives(export_outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_spec_to_model_fn_ops(estimator_spec:Dynamic, ?export_alternatives:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}