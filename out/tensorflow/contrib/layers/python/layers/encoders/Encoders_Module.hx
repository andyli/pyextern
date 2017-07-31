/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.encoders;
@:pythonImport("tensorflow.contrib.layers.python.layers.encoders") extern class Encoders_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Maps a sequence of symbols to a vector per example by averaging embeddings.
		
		Args:
		  ids: `[batch_size, doc_length]` `Tensor` or `SparseTensor` of type
		    `int32` or `int64` with symbol ids.
		  vocab_size: Integer number of symbols in vocabulary.
		  embed_dim: Integer number of dimensions for embedding matrix.
		  sparse_lookup: `bool`, if `True`, converts ids to a `SparseTensor`
		      and performs a sparse embedding lookup. This is usually faster,
		      but not desirable if padding tokens should have an embedding. Empty rows
		      are assigned a special embedding.
		  initializer: An initializer for the embeddings, if `None` default for
		      current scope is used.
		  regularizer: Optional regularizer for the embeddings.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional string specifying the variable scope for the op, required
		      if `reuse=True`.
		  reuse: If `True`, variables inside the op will be reused.
		
		Returns:
		  Encoding `Tensor` `[batch_size, embed_dim]` produced by
		  averaging embeddings.
		
		Raises:
		  ValueError: If `embed_dim` or `vocab_size` are not specified.
	**/
	static public function bow_encoder(ids:Dynamic, vocab_size:Dynamic, embed_dim:Dynamic, ?sparse_lookup:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Maps a sequence of symbols to a sequence of embeddings.
		
		Typical use case would be reusing embeddings between an encoder and decoder.
		
		Args:
		  ids: `[batch_size, doc_length]` `Tensor` of type `int32` or `int64`
		    with symbol ids.
		  vocab_size: Integer number of symbols in vocabulary.
		  embed_dim: Integer number of dimensions for embedding matrix.
		  unique: If `True`, will first compute the unique set of indices, and then
		       lookup each embedding once, repeating them in the output as needed.
		  initializer: An initializer for the embeddings, if `None` default for
		      current scope is used.
		  regularizer: Optional regularizer for the embeddings.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  scope: Optional string specifying the variable scope for the op, required
		      if `reuse=True`.
		  reuse: If `True`, variables inside the op will be reused.
		
		Returns:
		  `Tensor` of `[batch_size, doc_length, embed_dim]` with embedded sequences.
		
		Raises:
		  ValueError: if `embed_dim` or `vocab_size` are not specified when
		    `reuse` is `None` or `False`.
	**/
	static public function embed_sequence(ids:Dynamic, ?vocab_size:Dynamic, ?embed_dim:Dynamic, ?unique:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?reuse:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}