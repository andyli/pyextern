/* This file is generated, do not edit! */
package tensorflow.python.keras.callbacks;
@:pythonImport("tensorflow.python.keras.callbacks", "TensorBoard") extern class TensorBoard {
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
	public function ___init__(?log_dir:Dynamic, ?histogram_freq:Dynamic, ?batch_size:Dynamic, ?write_graph:Dynamic, ?write_grads:Dynamic, ?write_images:Dynamic, ?embeddings_freq:Dynamic, ?embeddings_layer_names:Dynamic, ?embeddings_metadata:Dynamic, ?embeddings_data:Dynamic, ?update_freq:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?log_dir:Dynamic, ?histogram_freq:Dynamic, ?batch_size:Dynamic, ?write_graph:Dynamic, ?write_grads:Dynamic, ?write_images:Dynamic, ?embeddings_freq:Dynamic, ?embeddings_layer_names:Dynamic, ?embeddings_metadata:Dynamic, ?embeddings_data:Dynamic, ?update_freq:Dynamic):Void;
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
	public function _fetch_callback(summary:Dynamic):Dynamic;
	/**
		Sets file writer.
	**/
	public function _init_writer():Dynamic;
	/**
		Defines histogram ops when histogram_freq > 0.
	**/
	public function _make_histogram_ops(model:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Writes metrics out as custom scalar summaries.
		
		Arguments:
		    step: the global step to use for Tensorboard.
		    logs: dict. Keys are scalar summary names, values are
		        NumPy scalars.
	**/
	public function _write_custom_summaries(step:Dynamic, ?logs:Dynamic):Dynamic;
	public function on_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Writes scalar summaries for metrics on every training batch.
	**/
	public function on_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Add histogram op to Model eval_function callbacks, reset batch count.
	**/
	public function on_epoch_begin(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	/**
		Checks if summary ops should run next epoch, logs scalar summaries.
	**/
	public function on_epoch_end(epoch:Dynamic, ?logs:Dynamic):Dynamic;
	public function on_train_batch_begin(batch:Dynamic, ?logs:Dynamic):Dynamic;
	public function on_train_batch_end(batch:Dynamic, ?logs:Dynamic):Dynamic;
	public function on_train_begin(?logs:Dynamic):Dynamic;
	public function on_train_end(?logs:Dynamic):Dynamic;
	/**
		Sets Keras model and creates summary ops.
	**/
	public function set_model(model:Dynamic):Dynamic;
	public function set_params(params:Dynamic):Dynamic;
}