/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_management;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_management", "ChainingStateManager") extern class ChainingStateManager {
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
		Initialize the state manager.
		
		Args:
		  state_saving_interval: This state manager saves intermediate model state
		      every `state_saving_interval` times. Larger values save memory, and
		      checkpoint size if `checkpoint_state` is enabled, but models
		      will need to impute across artificial gaps of up to this size
		      (i.e. gaps not appearing in the original data). This imputation may
		      affect training. Set state_saving_interval to 1 to avoid any
		      artificial imputation.
		  checkpoint_state: If True, saved intermediate model state will be
		      written to checkpoints. Checkpoints will then scale with dataset
		      size. If False, state will be freshly imputed from the beginning of a
		      series each time the model is restored, which means it may take a few
		      iterations for state to warm up.
	**/
	@:native("__init__")
	public function ___init__(?state_saving_interval:Dynamic, ?checkpoint_state:Dynamic):Dynamic;
	/**
		Initialize the state manager.
		
		Args:
		  state_saving_interval: This state manager saves intermediate model state
		      every `state_saving_interval` times. Larger values save memory, and
		      checkpoint size if `checkpoint_state` is enabled, but models
		      will need to impute across artificial gaps of up to this size
		      (i.e. gaps not appearing in the original data). This imputation may
		      affect training. Set state_saving_interval to 1 to avoid any
		      artificial imputation.
		  checkpoint_state: If True, saved intermediate model state will be
		      written to checkpoints. Checkpoints will then scale with dataset
		      size. If False, state will be freshly imputed from the beginning of a
		      series each time the model is restored, which means it may take a few
		      iterations for state to warm up.
	**/
	public function new(?state_saving_interval:Dynamic, ?checkpoint_state:Dynamic):Void;
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
		Feeds end state from one training iteration into the next.
		
		Args:
		  model: The model to wrap. Compatible with children of TimeSeriesModel.
		  features: Dictionary with Tensor values defining the data to be
		    processed. The expected key/value pairs are at minimum:
		      feature_keys.TrainEvalFeatures.TIMES: A [number of chunks x window
		        size] Tensor with times for each observation, the result of chunking
		        a single longer time series.
		      feature_keys.TrainEvalFeatures.VALUES: A [number of chunks x window
		        size x num features] Tensor with values for each observation,
		        corresponding to times.
		  mode: The tf.estimator.ModeKeys mode to use. For EVAL and INFER, no
		      batching is performed, which may be slow. This is to avoid giving
		      cached and almost certainly stale values.
		Returns:
		  A ModelOutputs object.
		Raises:
		  ValueError: If initialize_graph has not been called.
	**/
	public function _define_loss_with_saved_state(model:Dynamic, features:Dynamic, mode:Dynamic):Dynamic;
	/**
		Retrieve cached states for a batch of times.
	**/
	public function _get_cached_states(times:Dynamic):Dynamic;
	public function _get_chunk_number(time:Dynamic):Dynamic;
	/**
		Read, process, and write chunks to the cache.
	**/
	public function _update_cached_states(model:Dynamic, features:Dynamic, mode:Dynamic):Dynamic;
	/**
		Switches between explicit start state and managed state.
	**/
	public function define_loss(model:Dynamic, features:Dynamic, mode:Dynamic):Dynamic;
	/**
		Adds required operations to the graph.
	**/
	public function initialize_graph(model:Dynamic, ?input_statistics:Dynamic):Dynamic;
}