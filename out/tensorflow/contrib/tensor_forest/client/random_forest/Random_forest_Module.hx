/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.client.random_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.client.random_forest") extern class Random_forest_Module {
	static public var KEYS_NAME : Dynamic;
	static public var LOSS_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assert all tensors are float32.
		
		Args:
		  tensors: `Tensor` or `dict` of `Tensor` objects.
		
		Raises:
		  TypeError: if any tensor is not float32.
	**/
	static public function _assert_float32(tensors:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return a model function given a way to construct a graph builder.
	**/
	static public function get_model_fn(params:Dynamic, graph_builder_class:Dynamic, device_assigner:Dynamic, ?weights_name:Dynamic, ?keys_name:Dynamic, ?early_stopping_rounds:Dynamic, ?num_trainers:Dynamic, ?trainer_id:Dynamic, ?report_feature_importances:Dynamic, ?model_dir:Dynamic, ?local_eval:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}