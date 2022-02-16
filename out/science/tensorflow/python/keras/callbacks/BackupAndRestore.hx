/* This file is generated, do not edit! */
package tensorflow.python.keras.callbacks;
@:pythonImport("tensorflow.python.keras.callbacks", "BackupAndRestore") extern class BackupAndRestore {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(backup_dir:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(backup_dir:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Determines if this Callback should be called for each predict batch.
	**/
	public function _implements_predict_batch_hooks():Dynamic;
	/**
		Determines if this Callback should be called for each test batch.
	**/
	public function _implements_test_batch_hooks():Dynamic;
	/**
		Determines if this Callback should be called for each train batch.
	**/
	public function _implements_train_batch_hooks():Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		A backwards compatibility alias for `on_train_batch_begin`.
	**/
	public function on_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		A backwards compatibility alias for `on_train_batch_end`.
	**/
	public function on_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the start of an epoch.
		
		Subclasses should override for any actions to run. This function should only
		be called during TRAIN mode.
		
		Args:
		    epoch: Integer, index of epoch.
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_epoch_begin(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of an epoch.
		
		Subclasses should override for any actions to run. This function should only
		be called during TRAIN mode.
		
		Args:
		    epoch: Integer, index of epoch.
		    logs: Dict, metric results for this training epoch, and for the
		      validation epoch if validation is performed. Validation result keys
		      are prefixed with `val_`. For training epoch, the values of the
		     `Model`'s metrics are returned. Example : `{'loss': 0.2, 'accuracy':
		       0.7}`.
	**/
	public function on_epoch_end(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a batch in `predict` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.predict_step`,
		      it typically returns a dict with a key 'outputs' containing
		      the model's outputs.
	**/
	public function on_predict_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a batch in `predict` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_predict_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of prediction.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of prediction.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_end(?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a batch in `evaluate` methods.
		
		Also called at the beginning of a validation batch in the `fit`
		methods, if validation data is provided.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.test_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_test_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a batch in `evaluate` methods.
		
		Also called at the end of a validation batch in the `fit`
		methods, if validation data is provided.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_test_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of evaluation or validation.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of evaluation or validation.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently the output of the last call to
		      `on_test_batch_end()` is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_end(?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of a training batch in `fit` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.train_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_train_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the end of a training batch in `fit` methods.
		
		Subclasses should override for any actions to run.
		
		Note that if the `steps_per_execution` argument to `compile` in
		`tf.keras.Model` is set to `N`, this method will only be called every `N`
		batches.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_train_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Called at the beginning of training.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_train_begin(?logs:Dynamic):Dynamic;
	/**
		Called at the end of training.
		
		Subclasses should override for any actions to run.
		
		Args:
		    logs: Dict. Currently the output of the last call to `on_epoch_end()`
		      is passed to this argument for this method but that may change in
		      the future.
	**/
	public function on_train_end(?logs:Dynamic):Dynamic;
	public function set_model(model:Dynamic):Dynamic;
	public function set_params(params:Dynamic):Dynamic;
}