/* This file is generated, do not edit! */
package tensorflow.models.rnn.translate.seq2seq_model;
@:pythonImport("tensorflow.models.rnn.translate.seq2seq_model", "Seq2SeqModel") extern class Seq2SeqModel {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create the model.
		
		Args:
		  source_vocab_size: size of the source vocabulary.
		  target_vocab_size: size of the target vocabulary.
		  buckets: a list of pairs (I, O), where I specifies maximum input length
		    that will be processed in that bucket, and O specifies maximum output
		    length. Training instances that have inputs longer than I or outputs
		    longer than O will be pushed to the next bucket and padded accordingly.
		    We assume that the list is sorted, e.g., [(2, 4), (8, 16)].
		  size: number of units in each layer of the model.
		  num_layers: number of layers in the model.
		  max_gradient_norm: gradients will be clipped to maximally this norm.
		  batch_size: the size of the batches used during training;
		    the model construction is independent of batch_size, so it can be
		    changed after initialization if this is convenient, e.g., for decoding.
		  learning_rate: learning rate to start with.
		  learning_rate_decay_factor: decay learning rate by this much when needed.
		  use_lstm: if true, we use LSTM cells instead of GRU cells.
		  num_samples: number of samples for sampled softmax.
		  forward_only: if set, we do not construct the backward pass in the model.
	**/
	@:native("__init__")
	public function ___init__(source_vocab_size:Dynamic, target_vocab_size:Dynamic, buckets:Dynamic, size:Dynamic, num_layers:Dynamic, max_gradient_norm:Dynamic, batch_size:Dynamic, learning_rate:Dynamic, learning_rate_decay_factor:Dynamic, ?use_lstm:Dynamic, ?num_samples:Dynamic, ?forward_only:Dynamic):Dynamic;
	/**
		Create the model.
		
		Args:
		  source_vocab_size: size of the source vocabulary.
		  target_vocab_size: size of the target vocabulary.
		  buckets: a list of pairs (I, O), where I specifies maximum input length
		    that will be processed in that bucket, and O specifies maximum output
		    length. Training instances that have inputs longer than I or outputs
		    longer than O will be pushed to the next bucket and padded accordingly.
		    We assume that the list is sorted, e.g., [(2, 4), (8, 16)].
		  size: number of units in each layer of the model.
		  num_layers: number of layers in the model.
		  max_gradient_norm: gradients will be clipped to maximally this norm.
		  batch_size: the size of the batches used during training;
		    the model construction is independent of batch_size, so it can be
		    changed after initialization if this is convenient, e.g., for decoding.
		  learning_rate: learning rate to start with.
		  learning_rate_decay_factor: decay learning rate by this much when needed.
		  use_lstm: if true, we use LSTM cells instead of GRU cells.
		  num_samples: number of samples for sampled softmax.
		  forward_only: if set, we do not construct the backward pass in the model.
	**/
	public function new(source_vocab_size:Dynamic, target_vocab_size:Dynamic, buckets:Dynamic, size:Dynamic, num_layers:Dynamic, max_gradient_norm:Dynamic, batch_size:Dynamic, learning_rate:Dynamic, learning_rate_decay_factor:Dynamic, ?use_lstm:Dynamic, ?num_samples:Dynamic, ?forward_only:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Get a random batch of data from the specified bucket, prepare for step.
		
		To feed data in step(..) it must be a list of batch-major vectors, while
		data here contains single length-major cases. So the main logic of this
		function is to re-index data cases to be in the proper format for feeding.
		
		Args:
		  data: a tuple of size len(self.buckets) in which each element contains
		    lists of pairs of input and output data that we use to create a batch.
		  bucket_id: integer, which bucket to get the batch for.
		
		Returns:
		  The triple (encoder_inputs, decoder_inputs, target_weights) for
		  the constructed batch that has the proper format to call step(...) later.
	**/
	public function get_batch(data:Dynamic, bucket_id:Dynamic):Dynamic;
	/**
		Run a step of the model feeding the given inputs.
		
		Args:
		  session: tensorflow session to use.
		  encoder_inputs: list of numpy int vectors to feed as encoder inputs.
		  decoder_inputs: list of numpy int vectors to feed as decoder inputs.
		  target_weights: list of numpy float vectors to feed as target weights.
		  bucket_id: which bucket of the model to use.
		  forward_only: whether to do the backward step or only forward.
		
		Returns:
		  A triple consisting of gradient norm (or None if we did not do backward),
		  average perplexity, and the outputs.
		
		Raises:
		  ValueError: if length of encoder_inputs, decoder_inputs, or
		    target_weights disagrees with bucket size for the specified bucket_id.
	**/
	public function step(session:Dynamic, encoder_inputs:Dynamic, decoder_inputs:Dynamic, target_weights:Dynamic, bucket_id:Dynamic, forward_only:Dynamic):Dynamic;
}