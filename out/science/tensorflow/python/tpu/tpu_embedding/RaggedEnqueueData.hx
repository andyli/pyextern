/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_embedding;
@:pythonImport("tensorflow.python.tpu.tpu_embedding", "RaggedEnqueueData") extern class RaggedEnqueueData {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Data to be enqueued through generate_enqueue_ops().
		
		Args:
		  embedding_indices: A rank 1 Tensor, indices into the embedding tables. It
		    corresponds to ids.values in embedding_lookup(), when ids is a
		    RaggedTensor. Both int32 and int64 are allowed and will be converted to
		    int32 internally.
		  sample_splits: A rank 1 Tensor specifying the break points for splitting
		    embedding_indices and aggregation_weights into rows. It corresponds to
		    ids.row_splits in embedding_lookup(), when ids is a RaggedTensor. Both
		    int32 and int64 are allowed and will be converted to int32 internally.
		  aggregation_weights: A rank 1 Tensor containing per training example
		    aggregation weights. It corresponds to the values field of a
		    RaggedTensor with the same row_splits as ids in embedding_lookup(), when
		    ids is a RaggedTensor.
		
		Returns:
		  An RaggedEnqueueData tuple.
	**/
	static public function __new__(cls:Dynamic, embedding_indices:Dynamic, ?sample_splits:Dynamic, ?aggregation_weights:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Make a new RaggedEnqueueData object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Return a new RaggedEnqueueData object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alias for field number 2
	**/
	public var aggregation_weights : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var embedding_indices : Dynamic;
	static public function from_ragged_tensor(rg_tensor:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var sample_splits : Dynamic;
}