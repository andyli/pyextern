/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.client.random_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.client.random_forest") extern class Random_forest_Module {
	static public var ALL_SERVING_KEY : Dynamic;
	static public var EPSILON : Dynamic;
	static public var KEYS_NAME : Dynamic;
	static public var LOSS_NAME : Dynamic;
	static public var TREE_PATHS_PREDICTION_KEY : Dynamic;
	static public var VARIANCE_PREDICTION_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a default head based on a type of a problem.
	**/
	static public function _get_default_head(params:Dynamic, weights_name:Dynamic, output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get a combined model function given a list of other model fns.
		
		The model function returned will call the individual model functions and
		combine them appropriately.  For:
		
		training ops: tf.group them.
		loss: average them.
		predictions: concat probabilities such that predictions[*][0-C1] are the
		  probabilities for output 1 (where C1 is the number of classes in output 1),
		  predictions[*][C1-(C1+C2)] are the probabilities for output 2 (where C2
		  is the number of classes in output 2), etc.  Also stack predictions such
		  that predictions[i][j] is the class prediction for example i and output j.
		
		This assumes that labels are 2-dimensional, with labels[i][j] being the
		label for example i and output j, where forest j is trained using only
		output j.
		
		Args:
		  model_fns: A list of model functions obtained from get_model_fn.
		
		Returns:
		  A ModelFnOps instance.
	**/
	static public function get_combined_model_fn(model_fns:Dynamic):Dynamic;
	/**
		Return a model function given a way to construct a graph builder.
	**/
	static public function get_model_fn(params:Dynamic, graph_builder_class:Dynamic, device_assigner:Dynamic, ?feature_columns:Dynamic, ?weights_name:Dynamic, ?model_head:Dynamic, ?keys_name:Dynamic, ?early_stopping_rounds:Dynamic, ?early_stopping_loss_threshold:Dynamic, ?num_trainers:Dynamic, ?trainer_id:Dynamic, ?report_feature_importances:Dynamic, ?local_eval:Dynamic, ?head_scope:Dynamic, ?include_all_in_serving:Dynamic, ?output_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}