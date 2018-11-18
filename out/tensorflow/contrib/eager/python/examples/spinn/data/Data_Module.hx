/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.spinn.data;
@:pythonImport("tensorflow.contrib.eager.python.examples.spinn.data") extern class Data_Module {
	static public var LEFT_PAREN : Dynamic;
	static public var PAD_CODE : Dynamic;
	static public var PARENTHESES : Dynamic;
	static public var POSSIBLE_LABELS : Dynamic;
	static public var REDUCE_CODE : Dynamic;
	static public var RIGHT_PAREN : Dynamic;
	static public var SHIFT_CODE : Dynamic;
	static public var UNK_CODE : Dynamic;
	static public var WORD_VECTOR_LEN : Dynamic;
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
		Calculate bin boundaries given a histogram of lengths and minimum bin size.
		
		Args:
		  length2count: A `dict` mapping length to sentence count.
		  min_bin_size: Minimum bin size in terms of total number of sentence pairs
		    in the bin.
		
		Returns:
		  A `list` representing the right bin boundaries, starting from the inclusive
		  right boundary of the first bin. For example, if the output is
		    [10, 20, 35],
		  it means there are three bins: [1, 10], [11, 20] and [21, 35].
	**/
	static public function calculate_bins(length2count:Dynamic, min_bin_size:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Encode a single sentence as word indices and shift-reduce code.
		
		Args:
		  sentence: The sentence with added binary parse information, represented as
		    a string, with all the word items and parentheses separated by spaces.
		    E.g., '( ( The dog ) ( ( is ( playing toys ) ) . ) )'.
		  word2index: A `dict` mapping words to their word indices.
		
		Returns:
		   1. Word indices as a numpy array, with shape `(sequence_len, 1)`.
		   2. Shift-reduce sequence as a numpy array, with shape
		     `(sequence_len * 2 - 3, 1)`.
	**/
	static public function encode_sentence(sentence:Dynamic, word2index:Dynamic):Dynamic;
	/**
		Get the non-parenthesis items from a SNLI parsed sentence.
		
		Args:
		  items: Data items from a parsed SNLI sentence, with parentheses. E.g.,
		    ["(", "Man", "(", "(", "(", "(", "(", "wearing", "pass", ")", ...
		
		Returns:
		  A list of non-parentheses word items, all converted to lower case. E.g.,
		    ["man", "wearing", "pass", ...
	**/
	static public function get_non_parenthesis_words(items:Dynamic):Dynamic;
	/**
		Obtain shift-reduce vector from a list of items from the SNLI data.
		
		Args:
		  items: Data items as a list of str, e.g.,
		     ["(", "Man", "(", "(", "(", "(", "(", "wearing", "pass", ")", ...
		
		Returns:
		  A list of shift-reduce transitions, encoded as `SHIFT_CODE` for shift and
		    `REDUCE_CODE` for reduce. See code above for the values of `SHIFT_CODE`
		    and `REDUCE_CODE`.
	**/
	static public function get_shift_reduce(items:Dynamic):Dynamic;
	/**
		Load vocabulary from SNLI data files.
		
		Args:
		  data_root: Root directory of the data. It is assumed that the SNLI data
		    files have been downloaded and extracted to the "snli/snli_1.0"
		    subdirectory of it.
		
		Returns:
		  Vocabulary as a set of strings.
		
		Raises:
		  ValueError: If SNLI data files cannot be found.
	**/
	static public function load_vocabulary(data_root:Dynamic):Dynamic;
	/**
		Load GloVe word vectors for words present in the vocabulary.
		
		Args:
		  data_root: Data root directory. It is assumed that the GloVe file
		   has been downloaded and extracted at the "glove/" subdirectory of it.
		  vocab: A `set` of words, representing the vocabulary.
		
		Returns:
		  1. word2index: A dict from lower-case word to row index in the embedding
		     matrix, i.e, `embed` below.
		  2. embed: The embedding matrix as a float32 numpy array. Its shape is
		     [vocabulary_size, WORD_VECTOR_LEN]. vocabulary_size is len(vocab).
		     WORD_VECTOR_LEN is the embedding dimension (300).
		
		Raises:
		  ValueError: If GloVe embedding file cannot be found.
	**/
	static public function load_word_vectors(data_root:Dynamic, vocab:Dynamic):Dynamic;
	/**
		Pad a list of sentences to the common maximum length + 1.
		
		Args:
		  sentences: A list of sentences as a list of list of integers. Each integer
		    is a word ID. Each list of integer corresponds to one sentence.
		
		Returns:
		  A numpy.ndarray of shape (num_sentences, max_length + 1), wherein max_length
		    is the maximum sentence length (in # of words). Each sentence is reversed
		    and then padded with an extra one at head, as required by the model.
	**/
	static public function pad_and_reverse_word_ids(sentences:Dynamic):Dynamic;
	/**
		Pad a list of shift-reduce transitions to the maximum length.
	**/
	static public function pad_transitions(sentences_transitions:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}