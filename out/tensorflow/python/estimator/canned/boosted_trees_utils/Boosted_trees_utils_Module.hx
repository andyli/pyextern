/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.boosted_trees_utils;
@:pythonImport("tensorflow.python.estimator.canned.boosted_trees_utils") extern class Boosted_trees_utils_Module {
	static public var _BIAS_ID : Dynamic;
	static public var _DEBUG_PROTO_KEY : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Directional feature contributions and bias, per example.
	**/
	static public function _compute_directional_feature_contributions(example_feature_ids:Dynamic, example_logits_paths:Dynamic, activation:Dynamic, num_bucketized_features:Dynamic):Dynamic;
	static public function _identity(logits:Dynamic):Dynamic;
	static public function _parse_debug_proto_string(example_proto_serialized:Dynamic):Dynamic;
	/**
		Parse serialized explanability proto, compute dfc, and return bias, dfc.
	**/
	static public function _parse_explanations_from_prediction(serialized_debug_proto:Dynamic, n_features:Dynamic, ?classification:Dynamic):Dynamic;
	static public function _sigmoid(logits:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}