/* This file is generated, do not edit! */
package tensorflow.contrib.kernel_methods.python.kernel_estimators;
@:pythonImport("tensorflow.contrib.kernel_methods.python.kernel_estimators") extern class Kernel_estimators_Module {
	static public var _FEATURE_COLUMNS : Dynamic;
	static public var _KERNEL_MAPPERS : Dynamic;
	static public var _OPTIMIZER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if the provided head is supported.
	**/
	static public function _check_valid_head(head:Dynamic):Dynamic;
	/**
		Checks that the input kernel_mappers are valid.
	**/
	static public function _check_valid_kernel_mappers(kernel_mappers:Dynamic):Dynamic;
	/**
		model_fn for the Estimator using kernel methods.
		
		Args:
		  features: `Tensor` or dict of `Tensor` (depends on data passed to `fit`).
		  labels: `Tensor` of shape [batch_size, 1] or [batch_size] labels of
		    dtype `int32` or `int64` in the range `[0, n_classes)`.
		  mode: Defines whether this is training, evaluation or prediction. See
		    `ModeKeys`.
		  params: A dict of hyperparameters.
		    The following hyperparameters are expected:
		    * head: A `Head` instance.
		    * feature_columns: An iterable containing all the feature columns used by
		        the model.
		    * optimizer: string, `Optimizer` object, or callable that defines the
		        optimizer to use for training. If `None`, will use a FTRL optimizer.
		    * kernel_mappers: Dictionary of kernel mappers to be applied to the input
		        features before training.
		  config: `RunConfig` object to configure the runtime settings.
		
		Returns:
		  A `ModelFnOps` instance.
		
		Raises:
		  ValueError: If mode is not any of the `ModeKeys`.
	**/
	static public function _kernel_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Updates features and feature_columns based on provided kernel mappers.
		
		Currently supports the update of `RealValuedColumn`s only.
		
		Args:
		  features: Initial features dict. The key is a `string` (feature column name)
		    and the value is a tensor.
		  feature_columns: Initial iterable containing all the feature columns to be
		    consumed (possibly after being updated) by the model. All items should be
		    instances of classes derived from `FeatureColumn`.
		  kernel_mappers_dict: A dict from feature column (type: _FeatureColumn) to
		    objects inheriting from KernelMapper class.
		
		Returns:
		  updated features and feature_columns based on provided kernel_mappers_dict.
	**/
	static public function _update_features_and_columns(features:Dynamic, feature_columns:Dynamic, kernel_mappers_dict:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}