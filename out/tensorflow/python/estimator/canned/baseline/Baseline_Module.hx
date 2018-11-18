/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.baseline;
@:pythonImport("tensorflow.python.estimator.canned.baseline") extern class Baseline_Module {
	static public var _LEARNING_RATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Function builder for a baseline logit_fn.
		
		Args:
		  num_outputs: Number of outputs for the model.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		     weights. It will be multiplied by the loss of the example.
		Returns:
		  A logit_fn (see below).
	**/
	static public function _baseline_logit_fn_builder(num_outputs:Dynamic, ?weight_column:Dynamic):Dynamic;
	/**
		Model_fn for baseline models.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `train`).
		  labels: `Tensor` of labels that are compatible with the `Head` instance.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  head: A `Head` instance.
		  optimizer: String, `tf.Optimizer` object, or callable that creates the
		    optimizer to use for training. If not specified, will use `FtrlOptimizer`
		    with a default learning rate of 0.3.
		  weight_column: A string or a `_NumericColumn` created by
		    `tf.feature_column.numeric_column` defining feature column representing
		     weights. It will be multiplied by the loss of the example.
		  config: `RunConfig` object to configure the runtime settings.
		
		Raises:
		  KeyError: If weight column is specified but not present.
		  ValueError: If features is an empty dictionary.
		
		Returns:
		  An `EstimatorSpec` instance.
	**/
	static public function _baseline_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, head:Dynamic, optimizer:Dynamic, ?weight_column:Dynamic, ?config:Dynamic):Dynamic;
	static public function _get_weight_column_key(weight_column:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}