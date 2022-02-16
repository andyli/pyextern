/* This file is generated, do not edit! */
package tensorflow.python.keras.callbacks;
@:pythonImport("tensorflow.python.keras.callbacks", "CallbackList") extern class CallbackList {
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
		Container for `Callback` instances.
		
		This object wraps a list of `Callback` instances, making it possible
		to call them all at once via a single endpoint
		(e.g. `callback_list.on_epoch_end(...)`).
		
		Args:
		  callbacks: List of `Callback` instances.
		  add_history: Whether a `History` callback should be added, if one does not
		    already exist in the `callbacks` list.
		  add_progbar: Whether a `ProgbarLogger` callback should be added, if one
		    does not already exist in the `callbacks` list.
		  model: The `Model` these callbacks are used with.
		  **params: If provided, parameters will be passed to each `Callback` via
		    `Callback.set_params`.
	**/
	@:native("__init__")
	public function ___init__(?callbacks:Dynamic, ?add_history:Dynamic, ?add_progbar:Dynamic, ?model:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Container for `Callback` instances.
		
		This object wraps a list of `Callback` instances, making it possible
		to call them all at once via a single endpoint
		(e.g. `callback_list.on_epoch_end(...)`).
		
		Args:
		  callbacks: List of `Callback` instances.
		  add_history: Whether a `History` callback should be added, if one does not
		    already exist in the `callbacks` list.
		  add_progbar: Whether a `ProgbarLogger` callback should be added, if one
		    does not already exist in the `callbacks` list.
		  model: The `Model` these callbacks are used with.
		  **params: If provided, parameters will be passed to each `Callback` via
		    `Callback.set_params`.
	**/
	public function new(?callbacks:Dynamic, ?add_history:Dynamic, ?add_progbar:Dynamic, ?model:Dynamic, ?params:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
		Adds `Callback`s that are always present.
	**/
	public function _add_default_callbacks(add_history:Dynamic, add_progbar:Dynamic):Dynamic;
	/**
		Helper function for `on_*_batch_begin` methods.
	**/
	public function _call_batch_begin_hook(mode:Dynamic, batch:Dynamic, logs:Dynamic):Dynamic;
	/**
		Helper function for `on_*_batch_end` methods.
	**/
	public function _call_batch_end_hook(mode:Dynamic, batch:Dynamic, logs:Dynamic):Dynamic;
	/**
		Helper function for all batch_{begin | end} methods.
	**/
	public function _call_batch_hook(mode:Dynamic, hook:Dynamic, batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Helper function for `on_*_batch_*` methods.
	**/
	public function _call_batch_hook_helper(hook_name:Dynamic, batch:Dynamic, logs:Dynamic):Dynamic;
	/**
		Helper function for on_{train|test|predict}_begin methods.
	**/
	public function _call_begin_hook(mode:Dynamic):Dynamic;
	/**
		Helper function for on_{train|test|predict}_end methods.
	**/
	public function _call_end_hook(mode:Dynamic):Dynamic;
	/**
		Error out if batch-level callbacks are passed with PSStrategy.
	**/
	public function _disallow_batch_hooks_in_ps_strategy():Dynamic;
	static public var _keras_api_names : Dynamic;
	static public var _keras_api_names_v1 : Dynamic;
	/**
		Turns tensors into numpy arrays or Python scalars if necessary.
	**/
	public function _process_logs(logs:Dynamic, ?is_batch_hook:Dynamic):Dynamic;
	public function append(callback:Dynamic):Dynamic;
	public function on_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	public function on_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_epoch_begin` methods of its callbacks.
		
		This function should only be called during TRAIN mode.
		
		Args:
		    epoch: Integer, index of epoch.
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_epoch_begin(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_epoch_end` methods of its callbacks.
		
		This function should only be called during TRAIN mode.
		
		Args:
		    epoch: Integer, index of epoch.
		    logs: Dict, metric results for this training epoch, and for the
		      validation epoch if validation is performed. Validation result keys
		      are prefixed with `val_`.
	**/
	public function on_epoch_end(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_predict_batch_begin` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.predict_step`,
		      it typically returns a dict with a key 'outputs' containing
		      the model's outputs.
	**/
	public function on_predict_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_predict_batch_end` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_predict_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the 'on_predict_begin` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_begin(?logs:Dynamic):Dynamic;
	/**
		Calls the `on_predict_end` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_predict_end(?logs:Dynamic):Dynamic;
	/**
		Calls the `on_test_batch_begin` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.test_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_test_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_test_batch_end` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_test_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_test_begin` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_begin(?logs:Dynamic):Dynamic;
	/**
		Calls the `on_test_end` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_test_end(?logs:Dynamic):Dynamic;
	/**
		Calls the `on_train_batch_begin` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict, contains the return value of `model.train_step`. Typically,
		      the values of the `Model`'s metrics are returned.  Example:
		      `{'loss': 0.2, 'accuracy': 0.7}`.
	**/
	public function on_train_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_train_batch_end` methods of its callbacks.
		
		Args:
		    batch: Integer, index of batch within the current epoch.
		    logs: Dict. Aggregated metric results up until this batch.
	**/
	public function on_train_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Calls the `on_train_begin` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_train_begin(?logs:Dynamic):Dynamic;
	/**
		Calls the `on_train_end` methods of its callbacks.
		
		Args:
		    logs: Dict. Currently no data is passed to this argument for this method
		      but that may change in the future.
	**/
	public function on_train_end(?logs:Dynamic):Dynamic;
	public function set_model(model:Dynamic):Dynamic;
	public function set_params(params:Dynamic):Dynamic;
}