/* This file is generated, do not edit! */
package tensorflow.python.estimator.model_fn;
@:pythonImport("tensorflow.python.estimator.model_fn") extern class Model_fn_Module {
	static public var AVERAGE_LOSS_METRIC_KEY : Dynamic;
	static public var LOSS_METRIC_KEY : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _VALID_MODEL_FN_ARGS : Dynamic;
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
	static public var _default_graph_error_message_template : Dynamic;
	/**
		Add variables to collection.
	**/
	static public function _update_variable_collection(collection_name:Dynamic, vars_to_add:Dynamic):Dynamic;
	/**
		Validate export_outputs inputs for EstimatorSpec or TPUEstimatorSpec.
		
		Args:
		  export_outputs: Describes the output signatures to be exported to
		    `SavedModel` and used during serving.
		    A dict `{name: output}` where:
		    * name: An arbitrary name for this output.
		    * output: an `ExportOutput` object such as `ClassificationOutput`
		      `RegressionOutput`, or `PredictOutput`. Single-headed models should only
		      need to specify one entry in this dictionary. Multi-headed models should
		      specify one entry for each head, one of which must be named using
		      `tf.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY`.
		      If no entry is provided, a default `PredictOutput` mapping to
		      predictions will be created.
		  predictions: Predictions `Tensor` or dict of `Tensor`. Used in generation of
		    default outputs.
		  mode: A `ModeKeys`. Used to determine whether to validate at all; if the
		    EstimatorSpec is not for making predictions we can skip validation.
		
		Returns:
		  ValueError: If validation fails.
		  TypeError: If the export_outputs is not a dict or the values of the dict are
		             not instances of type `ExportOutput`.
	**/
	static public function _validate_estimator_spec_export_outputs(export_outputs:Dynamic, predictions:Dynamic, mode:Dynamic):Dynamic;
	/**
		Validate SessionRunHooks for use in EstimatorSpec or TPUEstimatorSpec.
		
		Args:
		  hooks: Iterable of `tf.train.SessionRunHook` objects to run on all workers.
		
		Returns:
		  hooks: Iterable of `tf.train.SessionRunHook` objects.
		
		Raises:
		  ValueError: If validation fails.
		  TypeError:  If any element of the iterable is not a SessionRunHook.
	**/
	static public function _validate_estimator_spec_hooks(hooks:Dynamic):Dynamic;
	/**
		Validate loss inputs for EstimatorSpec or TPUEstimatorSpec.
		
		Args:
		  loss: Training loss `Tensor`. Must either be scalar, or with shape `[1]`.
		  mode: A `ModeKeys`. Used to determine whether the loss is acceptable for use
		    in the current mode; for example, None is acceptable if we are not
		    training or evaluating.
		
		Returns:
		  loss: Training loss `Tensor`.
		
		Raises:
		  ValueError: If the loss `Tensor` is not appropriately formatted.
		  TypeError:  If:
		              - a non-`Tensor`, non-None input is passed.
		              - the loss `Tensor` is not part of the default graph.
	**/
	static public function _validate_estimator_spec_loss(loss:Dynamic, mode:Dynamic):Dynamic;
	/**
		Validate predictions inputs for EstimatorSpec or TPUEstimatorSpec.
		
		Args:
		  predictions: Predictions `Tensor` or dict of `Tensor`.
		  mode: A `ModeKeys`. Used to determine whether the predictions are acceptable
		    for use in the current mode; None is acceptable if we are not making
		    predictions.
		
		Returns:
		  predictions: Predictions `Tensor` or dict of `Tensor`.
		
		Raises:
		  ValueError: If:
		    - predictions is None and we are in predict mode.
		    - predictions `Tensor` is not in default_graph or else it is a dict of
		      `Tensor` where at least one is not in default_graph.
		  TypeError:  If predictions is not a `Tensor` or dict of `Tensor`.
	**/
	static public function _validate_estimator_spec_predictions(predictions:Dynamic, mode:Dynamic):Dynamic;
	/**
		Validate train_op inputs for EstimatorSpec or TPUEstimatorSpec.
		
		Args:
		  train_op: Op for the training step.
		  mode: A `ModeKeys`. Used to determine whether the train_op is acceptable for
		    use in the current mode; for example, if we are not training, this can be
		    None.
		
		Returns:
		  train_op: Op for the training step.
		
		Raises:
		  ValueError: If no train_op is passed during training.
		  TypeError:  If:
		              - train_op is neither a `Tensor` nor an Op.
		              - train_op is not part of the default graph.
	**/
	static public function _validate_estimator_spec_train_op(train_op:Dynamic, mode:Dynamic):Dynamic;
	/**
		Validate eval_metric_ops for use in EstimatorSpec.
		
		Args:
		  eval_metric_ops: Dict of metric results keyed by name.
		    The values of the dict can be one of the following: (1) instance of
		      `Metric` class. (2) Results of calling a metric_function, namely a
		      `(metric_tensor, update_op)` tuple. `metric_tensor` should be evaluated
		      without any impact on state (typically it is a pure computation based on
		      variables.). For example, it should not trigger the `update_op` or
		      require any input fetching.
		
		Returns:
		  eval_metric_ops: Dict of metric results keyed by name.
		
		Raises:
		  ValueError:  If:
		   - one of the eval_metric_ops `Metric` objects has no updates.
		   - there is at least one `Metric` update or result, `Tensor`, or Op that is
		     not in the default graph.
		  TypeError:   If:
		   - eval_metric_ops is not a dict or None.
		   - an element of eval_metric_ops is not a `Metric` or a 2-tuple.
		   - an element of eval_metric_ops has a sub-element that is not a `Tensor` or
		     an Op.
	**/
	static public function _validate_eval_metric_ops(eval_metric_ops:Dynamic):Dynamic;
	/**
		Validate scaffold input for EstimatorSpec.
		
		Args:
		  scaffold: A `tf.train.Scaffold` object that can be used to set
		    initialization, saver, and more to be used in training.
		
		Returns:
		  scaffold: A `tf.train.Scaffold` object. If no scaffold is provided, then a
		    default is generated.
		
		Raises:
		  TypeError: If the scaffold is not of type `monitored_session.Scaffold`
		    or None.
	**/
	static public function _validate_scaffold(scaffold:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calls logit_fn (experimental).
		
		THIS FUNCTION IS EXPERIMENTAL. Keras layers/models are the recommended APIs
		for logit and model composition.
		
		A utility function that calls the provided logit_fn with the relevant subset
		of provided arguments. Similar to tf.estimator._call_model_fn().
		
		Args:
		  logit_fn: A logit_fn as defined above.
		  features: The features dict.
		  mode: TRAIN / EVAL / PREDICT ModeKeys.
		  params: The hyperparameter dict.
		  config: The configuration object.
		
		Returns:
		  A logit Tensor, the output of logit_fn.
		
		Raises:
		  ValueError: if logit_fn does not return a Tensor or a dictionary mapping
		    strings to Tensors.
	**/
	static public function call_logit_fn(logit_fn:Dynamic, features:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Verifies `model_fn` arguments.
	**/
	static public function verify_model_fn_args(model_fn:Dynamic, params:Dynamic):Dynamic;
}