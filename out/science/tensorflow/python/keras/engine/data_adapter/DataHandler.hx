/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.data_adapter;
@:pythonImport("tensorflow.python.keras.engine.data_adapter", "DataHandler") extern class DataHandler {
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
		Initializes a `DataHandler`.
		
		Arguments:
		  x: See `Model.fit`.
		  y: See `Model.fit`.
		  sample_weight: See `Model.fit`.
		  batch_size: See `Model.fit`.
		  steps_per_epoch: See `Model.fit`.
		  initial_epoch: See `Model.fit`.
		  epochs: See `Model.fit`.
		  shuffle: See `Model.fit`.
		  class_weight: See `Model.fit`.
		  max_queue_size: See `Model.fit`.
		  workers: See `Model.fit`.
		  use_multiprocessing: See `Model.fit`.
		  model: The `Model` instance. Needed in order to correctly `build` the
		    `Model` using generator-like inputs (see `GeneratorDataAdapter`).
		  steps_per_execution: See `Model.compile`.
		  distribute: Whether to distribute the `tf.dataset`.
		    `PreprocessingLayer.adapt` does not support distributed datasets,
		    `Model` should always set this to `True`.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?batch_size:Dynamic, ?steps_per_epoch:Dynamic, ?initial_epoch:Dynamic, ?epochs:Dynamic, ?shuffle:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?model:Dynamic, ?steps_per_execution:Dynamic, ?distribute:Dynamic):Dynamic;
	/**
		Initializes a `DataHandler`.
		
		Arguments:
		  x: See `Model.fit`.
		  y: See `Model.fit`.
		  sample_weight: See `Model.fit`.
		  batch_size: See `Model.fit`.
		  steps_per_epoch: See `Model.fit`.
		  initial_epoch: See `Model.fit`.
		  epochs: See `Model.fit`.
		  shuffle: See `Model.fit`.
		  class_weight: See `Model.fit`.
		  max_queue_size: See `Model.fit`.
		  workers: See `Model.fit`.
		  use_multiprocessing: See `Model.fit`.
		  model: The `Model` instance. Needed in order to correctly `build` the
		    `Model` using generator-like inputs (see `GeneratorDataAdapter`).
		  steps_per_execution: See `Model.compile`.
		  distribute: Whether to distribute the `tf.dataset`.
		    `PreprocessingLayer.adapt` does not support distributed datasets,
		    `Model` should always set this to `True`.
	**/
	public function new(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?batch_size:Dynamic, ?steps_per_epoch:Dynamic, ?initial_epoch:Dynamic, ?epochs:Dynamic, ?shuffle:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?model:Dynamic, ?steps_per_execution:Dynamic, ?distribute:Dynamic):Void;
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
		Configure the `_dataset` and `_inferred_steps` attributes.
	**/
	public function _configure_dataset_and_inferred_steps(strategy:Dynamic, x:Dynamic, steps_per_epoch:Dynamic, class_weight:Dynamic, distribute:Dynamic):Dynamic;
	/**
		Infers steps_per_epoch needed to loop through a dataset.
	**/
	public function _infer_steps(steps:Dynamic, dataset:Dynamic):Dynamic;
	public function _log_indefinite_training_warning():Dynamic;
	public var _samples : Dynamic;
	/**
		Truncates steps per execution to at most one epoch.
	**/
	public function _truncate_execution_to_epoch():Dynamic;
	public function _validate_data_handler():Dynamic;
	/**
		Catches errors when an iterator runs out of data.
	**/
	public function catch_stop_iteration():Dynamic;
	/**
		Yields `(epoch, tf.data.Iterator)`.
	**/
	public function enumerate_epochs():Dynamic;
	/**
		The inferred steps per epoch of the created `Dataset`.
		
		This will be `None` in the case where:
		
		(1) A `Dataset` of unknown cardinality was passed to the `DataHandler`, and
		(2) `steps_per_epoch` was not provided, and
		(3) The first epoch of iteration has not yet completed.
		
		Returns:
		  The inferred steps per epoch of the created `Dataset`.
	**/
	public var inferred_steps : Dynamic;
	public var should_sync : Dynamic;
	/**
		The number to increment the step for `on_batch_end` methods.
	**/
	public var step_increment : Dynamic;
	/**
		Yields steps for the current epoch.
	**/
	public function steps():Dynamic;
	public function sync():Dynamic;
}