/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.beam_search_decoder;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.beam_search_decoder", "BeamSearchDecoder") extern class BeamSearchDecoder {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize BeamSearchDecoder.
		
		Args:
		  cell: An `RNNCell` instance.
		  embedding: A callable that takes a vector tensor of `ids` (argmax ids),
		    or the `params` argument for `embedding_lookup`.
		  start_tokens: `int32` vector shaped `[batch_size]`, the start tokens.
		  end_token: `int32` scalar, the token that marks end of decoding.
		  initial_state: A (possibly nested tuple of...) tensors and TensorArrays.
		  beam_width:  Python integer, the number of beams.
		  output_layer: (Optional) An instance of `tf.layers.Layer`, i.e.,
		    `tf.layers.Dense`.  Optional layer to apply to the RNN output prior
		    to storing the result or sampling.
		  length_penalty_weight: Float weight to penalize length. Disabled with 0.0.
		
		Raises:
		  TypeError: if `cell` is not an instance of `RNNCell`,
		    or `output_layer` is not an instance of `tf.layers.Layer`.
		  ValueError: If `start_tokens` is not a vector or
		    `end_token` is not a scalar.
	**/
	@:native("__init__")
	public function ___init__(cell:Dynamic, embedding:Dynamic, start_tokens:Dynamic, end_token:Dynamic, initial_state:Dynamic, beam_width:Dynamic, ?output_layer:Dynamic, ?length_penalty_weight:Dynamic):Dynamic;
	/**
		Initialize BeamSearchDecoder.
		
		Args:
		  cell: An `RNNCell` instance.
		  embedding: A callable that takes a vector tensor of `ids` (argmax ids),
		    or the `params` argument for `embedding_lookup`.
		  start_tokens: `int32` vector shaped `[batch_size]`, the start tokens.
		  end_token: `int32` scalar, the token that marks end of decoding.
		  initial_state: A (possibly nested tuple of...) tensors and TensorArrays.
		  beam_width:  Python integer, the number of beams.
		  output_layer: (Optional) An instance of `tf.layers.Layer`, i.e.,
		    `tf.layers.Dense`.  Optional layer to apply to the RNN output prior
		    to storing the result or sampling.
		  length_penalty_weight: Float weight to penalize length. Disabled with 0.0.
		
		Raises:
		  TypeError: if `cell` is not an instance of `RNNCell`,
		    or `output_layer` is not an instance of `tf.layers.Layer`.
		  ValueError: If `start_tokens` is not a vector or
		    `end_token` is not a scalar.
	**/
	public function new(cell:Dynamic, embedding:Dynamic, start_tokens:Dynamic, end_token:Dynamic, initial_state:Dynamic, beam_width:Dynamic, ?output_layer:Dynamic, ?length_penalty_weight:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Splits the tensor from a batch by beams into a batch of beams.
		
		More exactly, t is a tensor of dimension [batch_size*beam_width, s]. We
		reshape this into [batch_size, beam_width, s]
		
		Args:
		  t: Tensor of dimension [batch_size*beam_width, s]
		  s: Tensor, Python int, or TensorShape.
		
		Returns:
		  A reshaped version of t with dimension [batch_size, beam_width, s].
		
		Raises:
		  TypeError: If t is an instance of TensorArray.
		  ValueError:  If the rank of t is not statically known.
	**/
	public function _maybe_merge_batch_beams(t:Dynamic, s:Dynamic):Dynamic;
	/**
		Maybe splits the tensor from a batch by beams into a batch of beams.
		
		We do this so that we can use nest and not run into problems with shapes.
		
		Args:
		  t: Tensor of dimension [batch_size*beam_width, s]
		  s: Tensor, Python int, or TensorShape.
		
		Returns:
		  Either a reshaped version of t with dimension
		  [batch_size, beam_width, s] if t's first dimension is of size
		  batch_size*beam_width or t if not.
		
		Raises:
		  TypeError: If t is an instance of TensorArray.
		  ValueError: If the rank of t is not statically known.
	**/
	public function _maybe_split_batch_beams(t:Dynamic, s:Dynamic):Dynamic;
	/**
		Merges the tensor from a batch of beams into a batch by beams.
		
		More exactly, t is a tensor of dimension [batch_size, beam_width, s]. We
		reshape this into [batch_size*beam_width, s]
		
		Args:
		  t: Tensor of dimension [batch_size, beam_width, s]
		  s: (Possibly known) depth shape.
		
		Returns:
		  A reshaped version of t with dimension [batch_size * beam_width, s].
	**/
	public function _merge_batch_beams(t:Dynamic, ?s:Dynamic):Dynamic;
	public function _rnn_output_size():Dynamic;
	/**
		Splits the tensor from a batch by beams into a batch of beams.
		
		More exactly, t is a tensor of dimension [batch_size*beam_width, s]. We
		reshape this into [batch_size, beam_width, s]
		
		Args:
		  t: Tensor of dimension [batch_size*beam_width, s].
		  s: (Possibly known) depth shape.
		
		Returns:
		  A reshaped version of t with dimension [batch_size, beam_width, s].
		
		Raises:
		  ValueError: If, after reshaping, the new tensor is not shaped
		    `[batch_size, beam_width, s]` (assuming batch_size and beam_width
		    are known statically).
	**/
	public function _split_batch_beams(t:Dynamic, ?s:Dynamic):Dynamic;
	/**
		The batch size of input values.
	**/
	public var batch_size : Dynamic;
	/**
		Finalize and return the predicted_ids.
		
		Args:
		  outputs: An instance of BeamSearchDecoderOutput.
		  final_state: An instance of BeamSearchDecoderState. Passed through to the
		    output.
		  sequence_lengths: An `int32` tensor shaped `[batch_size, beam_width]`.
		    The sequence lengths determined for each beam during decode.
		
		Returns:
		  outputs: An instance of FinalBeamSearchDecoderOutput where the
		    predicted_ids are the result of calling _gather_tree.
		  final_state: The same input instance of BeamSearchDecoderState.
	**/
	public function finalize(outputs:Dynamic, final_state:Dynamic, sequence_lengths:Dynamic):Dynamic;
	/**
		Initialize the decoder.
		
		Args:
		  name: Name scope for any created operations.
		
		Returns:
		  `(finished, start_inputs, initial_state)`.
	**/
	public function initialize(?name:Dynamic):Dynamic;
	/**
		A (possibly nested tuple of...) dtype[s].
	**/
	public var output_dtype : Dynamic;
	/**
		A (possibly nested tuple of...) integer[s] or `TensorShape` object[s].
	**/
	public var output_size : Dynamic;
	/**
		Perform a decoding step.
		
		Args:
		  time: scalar `int32` tensor.
		  inputs: A (structure of) input tensors.
		  state: A (structure of) state tensors and TensorArrays.
		  name: Name scope for any created operations.
		
		Returns:
		  `(outputs, next_state, next_inputs, finished)`.
	**/
	public function step(time:Dynamic, inputs:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
}