/* This file is generated, do not edit! */
package tensorflow.models.rnn.ptb.reader;
@:pythonImport("tensorflow.models.rnn.ptb.reader") extern class Reader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _build_vocab(filename:Dynamic):Dynamic;
	static public function _file_to_word_ids(filename:Dynamic, word_to_id:Dynamic):Dynamic;
	static public function _read_words(filename:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Iterate on the raw PTB data.
		
		This generates batch_size pointers into the raw PTB data, and allows
		minibatch iteration along these pointers.
		
		Args:
		  raw_data: one of the raw data outputs from ptb_raw_data.
		  batch_size: int, the batch size.
		  num_steps: int, the number of unrolls.
		
		Yields:
		  Pairs of the batched data, each a matrix of shape [batch_size, num_steps].
		  The second element of the tuple is the same data time-shifted to the
		  right by one.
		
		Raises:
		  ValueError: if batch_size or num_steps are too high.
	**/
	static public function ptb_iterator(raw_data:Dynamic, batch_size:Dynamic, num_steps:Dynamic):Dynamic;
	/**
		Load PTB raw data from data directory "data_path".
		
		Reads PTB text files, converts strings to integer ids,
		and performs mini-batching of the inputs.
		
		The PTB dataset comes from Tomas Mikolov's webpage:
		
		http://www.fit.vutbr.cz/~imikolov/rnnlm/simple-examples.tgz
		
		Args:
		  data_path: string path to the directory where simple-examples.tgz has
		    been extracted.
		
		Returns:
		  tuple (train_data, valid_data, test_data, vocabulary)
		  where each of the data objects can be passed to PTBIterator.
	**/
	static public function ptb_raw_data(?data_path:Dynamic):Dynamic;
}