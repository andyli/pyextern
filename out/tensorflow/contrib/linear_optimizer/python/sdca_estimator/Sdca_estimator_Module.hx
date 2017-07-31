/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.sdca_estimator;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.sdca_estimator") extern class Sdca_estimator_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a fake bias feature column filled with all 1s.
	**/
	static public function _add_bias_column(feature_columns:Dynamic, columns_to_tensors:Dynamic, bias_variable:Dynamic, columns_to_variables:Dynamic):Dynamic;
	/**
		Returns true if the provided head is supported by SDCAOptimizer.
	**/
	static public function _head_is_valid_for_sdca(head:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		A model_fn for linear models that use the SDCA optimizer.
		
		Args:
		  features: A dict of `Tensor` keyed by column name.
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of
		    dtype `int32` or `int64` with values in the set {0, 1}.
		  mode: Defines whether this is training, evaluation or prediction.
		    See `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance. Type must be one of `_BinarySvmHead`,
		        `_RegressionHead` or `_BinaryLogisticHead`.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * l1_regularization: Global (across all examples) L1-regularization
		        parameter.
		    * l2_regularization: Global (across all examples) L2-regularization
		        parameter.
		    * num_loss_partitions: Number of partitions of the global loss function
		        optimized by `SDCAOptimizer`.
		    * weight_column_name: A string defining the weight feature column, or
		        None if there are no weights.
		    * update_weights_hook: A `SessionRunHook` object or None. Used to update
		        model weights.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  A `ModelFnOps` instance.
		
		Raises:
		  ValueError: If the type of head is not one of `_BinarySvmHead`,
		    `_RegressionHead` or `_MultiClassHead`.
		  ValueError: If mode is not any of the `ModeKeys`.
	**/
	static public function sdca_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
}