/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_estimator;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_estimator", "_ModelFnWrapper") extern class _ModelFnWrapper {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(model_fn:Dynamic, config:Dynamic, params:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(model_fn:Dynamic, config:Dynamic, params:Dynamic, ctx:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Calls the model_fn with required parameters.
	**/
	public function _call_model_fn(features:Dynamic, labels:Dynamic, ?is_export_mode:Dynamic):Dynamic;
	/**
		Validates that the features and labels for the model function are valid.
		
		A valid features/labels object is the one with:
		- Type: A tensor or any nested structure of tensors supported by TF nest,
		    namely nested dictionary, tuple, namedtuple, or sequence of tensors.
		- Static shape if is_export_mode is False.
		
		Args:
		  features: the features that would be input to the model function.
		  labels: the labels that would be input to the model function.
		  is_export_mode: boolean value specifying if in export mode.
		
		Raises:
		  TypeError: If features/labels are not of the correct type.
		  ValueError: If features/labels have dynamic shape.
	**/
	public function _validate_model_features_and_labels(features:Dynamic, labels:Dynamic, is_export_mode:Dynamic):Dynamic;
	/**
		Validates the estimator_spec.
	**/
	public function _verify_estimator_spec(estimator_spec:Dynamic):Dynamic;
	/**
		Validates TPUEstimatorSpec.predictions dict.
	**/
	public function _verify_tpu_spec_predictions(predictions:Dynamic):Dynamic;
	public function call_without_tpu(features:Dynamic, labels:Dynamic, is_export_mode:Dynamic):Dynamic;
	/**
		Converts user provided model_fn` as a single eval step on TPU.
		
		Similar to training, the user provided `model_fn` takes input tuple
		(features, labels) and produces the TPUEstimatorSpec with eval_metrics for
		eval `mode`. This usually represents a single evaluation computation on CPU.
		
		For TPU evaluation, a eval (computation) step is first wrapped in a
		tf.while_loop control flow to repeat for many times and then replicated to
		all TPU shards. Besides the input and output are slightly different. Input,
		features and labels, should be taken from TPU infeed rather than input
		pipeline (input_fn) directly. Output is managed in two stages.  First, the
		model outputs as the result of evaluation computation, usually model logits,
		should be transferred from TPU system to CPU. Then, all model outputs are
		concatenated first on CPU and sent to the metric_fn for metrics computation.
		To fit TPU evaluation pattern, the original eval computation should be
		reformed, which is the returned `eval_step`.
		
		Args:
		  dequeue_fn: The function to retrieve inputs, features and labels, from TPU
		    infeed dequeue channel.
		
		Returns:
		  A tuple of eval_fn, host_calls, and captured scaffold_fn. The eval_fn
		  representing the eval step for TPU.
	**/
	public function convert_to_single_tpu_eval_step(dequeue_fn:Dynamic):Dynamic;
	/**
		Converts user provided model_fn` as a single predict step on TPU.
		
		Args:
		  dequeue_fn: The function to retrieve inputs, features and labels, from TPU
		    infeed dequeue channel.
		
		Returns:
		  A tuple of predict_fn, host_calls, and captured scaffold_fn. The
		  predict_fn representing the predict step for TPU.
	**/
	public function convert_to_single_tpu_predict_step(dequeue_fn:Dynamic):Dynamic;
	/**
		Converts user provided model_fn` as a single train step on TPU.
		
		The user provided `model_fn` takes input tuple
		(features, labels) and produces the EstimatorSpec with train_op and loss for
		train `mode`. This usually represents a single train computation on CPU.
		
		For TPU training, a train (computation) step is first wrapped in a
		tf.while_loop control flow to repeat for many times and then replicated to
		all TPU shards. Besides the input should be taken from TPU infeed rather
		than input pipeline (input_fn) directly. To fit TPU loop and replicate
		pattern, the original train computation should be reformed, which is the
		returned `train_step`.
		
		Args:
		  dequeue_fn: The function to retrieve inputs, features and labels, from TPU
		    infeed dequeue channel.
		
		Returns:
		  A tuple of train_fn, host_calls, and captured scaffold_fn. The train_fn
		  representing the train step for TPU.
	**/
	public function convert_to_single_tpu_train_step(dequeue_fn:Dynamic):Dynamic;
}