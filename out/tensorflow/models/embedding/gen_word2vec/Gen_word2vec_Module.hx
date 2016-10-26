/* This file is generated, do not edit! */
package tensorflow.models.embedding.gen_word2vec;
@:pythonImport("tensorflow.models.embedding.gen_word2vec") extern class Gen_word2vec_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _neg_train_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _skipgram_outputs : Dynamic;
	/**
		Training via negative sampling.
		
		Args:
		  w_in: A `Tensor` of type mutable `float32`. input word embedding.
		  w_out: A `Tensor` of type mutable `float32`. output word embedding.
		  examples: A `Tensor` of type `int32`. A vector of word ids.
		  labels: A `Tensor` of type `int32`. A vector of word ids.
		  lr: A `Tensor` of type `float32`.
		  vocab_count: A list of `ints`. Count of words in the vocabulary.
		  num_negative_samples: An `int`. Number of negative samples per example.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function neg_train(w_in:Dynamic, w_out:Dynamic, examples:Dynamic, labels:Dynamic, lr:Dynamic, vocab_count:Dynamic, num_negative_samples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a text file and creates a batch of examples.
		
		Args:
		  filename: A `string`. The corpus's text file name.
		  batch_size: An `int`. The size of produced batch.
		  window_size: An optional `int`. Defaults to `5`.
		    The number of words to predict to the left and right of the target.
		  min_count: An optional `int`. Defaults to `5`.
		    The minimum number of word occurrences for it to be included in the
		    vocabulary.
		  subsample: An optional `float`. Defaults to `0.001`.
		    Threshold for word occurrence. Words that appear with higher
		    frequency will be randomly down-sampled. Set to 0 to disable.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (vocab_word, vocab_freq, words_per_epoch, current_epoch, total_words_processed, examples, labels).
		  vocab_word: A `Tensor` of type `string`. A vector of words in the corpus.
		  vocab_freq: A `Tensor` of type `int32`. Frequencies of words. Sorted in the non-ascending order.
		  words_per_epoch: A `Tensor` of type `int64`. Number of words per epoch in the data file.
		  current_epoch: A `Tensor` of type `int32`. The current epoch number.
		  total_words_processed: A `Tensor` of type `int64`. The total number of words processed so far.
		  examples: A `Tensor` of type `int32`. A vector of word ids.
		  labels: A `Tensor` of type `int32`. A vector of word ids.
	**/
	static public function skipgram(filename:Dynamic, batch_size:Dynamic, ?window_size:Dynamic, ?min_count:Dynamic, ?subsample:Dynamic, ?name:Dynamic):Dynamic;
}