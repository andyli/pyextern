/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.debug;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.debug") extern class Debug_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_feature_dict(features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Model_fn for debug models.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `fit`).
		  labels: Labels that are compatible with the `_Head` instance in `params`.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters containing:
		    * head: A `_Head` instance.
		  config: `RunConfig` object to configure the runtime settings.
		
		Raises:
		  KeyError: If weight column is specified but not present.
		  ValueError: If features is an empty dictionary.
		
		Returns:
		  A `ModelFnOps` instance.
	**/
	static public function debug_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}