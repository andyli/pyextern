/* This file is generated, do not edit! */
package tensorflow.models.rnn.translate.data_utils;
@:pythonImport("tensorflow.models.rnn.translate.data_utils") extern class Data_utils_Module {
	static public var EOS_ID : Dynamic;
	static public var GO_ID : Dynamic;
	static public var PAD_ID : Dynamic;
	static public var UNK_ID : Dynamic;
	static public var _DIGIT_RE : Dynamic;
	static public var _EOS : Dynamic;
	static public var _GO : Dynamic;
	static public var _PAD : Dynamic;
	static public var _START_VOCAB : Dynamic;
	static public var _UNK : Dynamic;
	static public var _WMT_ENFR_DEV_URL : Dynamic;
	static public var _WMT_ENFR_TRAIN_URL : Dynamic;
	static public var _WORD_SPLIT : Dynamic;
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
		Very basic tokenizer: split the sentence into a list of tokens.
	**/
	static public function basic_tokenizer(sentence:Dynamic):Dynamic;
	/**
		Create vocabulary file (if it does not exist yet) from data file.
		
		Data file is assumed to contain one sentence per line. Each sentence is
		tokenized and digits are normalized (if normalize_digits is set).
		Vocabulary contains the most-frequent tokens up to max_vocabulary_size.
		We write it to vocabulary_path in a one-token-per-line format, so that later
		token in the first line gets id=0, second line gets id=1, and so on.
		
		Args:
		  vocabulary_path: path where the vocabulary will be created.
		  data_path: data file that will be used to create vocabulary.
		  max_vocabulary_size: limit on the size of the created vocabulary.
		  tokenizer: a function to use to tokenize each data sentence;
		    if None, basic_tokenizer will be used.
		  normalize_digits: Boolean; if true, all digits are replaced by 0s.
	**/
	static public function create_vocabulary(vocabulary_path:Dynamic, data_path:Dynamic, max_vocabulary_size:Dynamic, ?tokenizer:Dynamic, ?normalize_digits:Dynamic):Dynamic;
	/**
		Tokenize data file and turn into token-ids using given vocabulary file.
		
		This function loads data line-by-line from data_path, calls the above
		sentence_to_token_ids, and saves the result to target_path. See comment
		for sentence_to_token_ids on the details of token-ids format.
		
		Args:
		  data_path: path to the data file in one-sentence-per-line format.
		  target_path: path where the file with token-ids will be created.
		  vocabulary_path: path to the vocabulary file.
		  tokenizer: a function to use to tokenize each sentence;
		    if None, basic_tokenizer will be used.
		  normalize_digits: Boolean; if true, all digits are replaced by 0s.
	**/
	static public function data_to_token_ids(data_path:Dynamic, target_path:Dynamic, vocabulary_path:Dynamic, ?tokenizer:Dynamic, ?normalize_digits:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Download the WMT en-fr training corpus to directory unless it's there.
	**/
	static public function get_wmt_enfr_dev_set(directory:Dynamic):Dynamic;
	/**
		Download the WMT en-fr training corpus to directory unless it's there.
	**/
	static public function get_wmt_enfr_train_set(directory:Dynamic):Dynamic;
	/**
		Unzips from gz_path into new_path.
	**/
	static public function gunzip_file(gz_path:Dynamic, new_path:Dynamic):Dynamic;
	/**
		Initialize vocabulary from file.
		
		We assume the vocabulary is stored one-item-per-line, so a file:
		  dog
		  cat
		will result in a vocabulary {"dog": 0, "cat": 1}, and this function will
		also return the reversed-vocabulary ["dog", "cat"].
		
		Args:
		  vocabulary_path: path to the file containing the vocabulary.
		
		Returns:
		  a pair: the vocabulary (a dictionary mapping string to integers), and
		  the reversed vocabulary (a list, which reverses the vocabulary mapping).
		
		Raises:
		  ValueError: if the provided vocabulary_path does not exist.
	**/
	static public function initialize_vocabulary(vocabulary_path:Dynamic):Dynamic;
	/**
		Download filename from url unless it's already in directory.
	**/
	static public function maybe_download(directory:Dynamic, filename:Dynamic, url:Dynamic):Dynamic;
	/**
		Get WMT data into data_dir, create vocabularies and tokenize data.
		
		Args:
		  data_dir: directory in which the data sets will be stored.
		  en_vocabulary_size: size of the English vocabulary to create and use.
		  fr_vocabulary_size: size of the French vocabulary to create and use.
		  tokenizer: a function to use to tokenize each data sentence;
		    if None, basic_tokenizer will be used.
		
		Returns:
		  A tuple of 6 elements:
		    (1) path to the token-ids for English training data-set,
		    (2) path to the token-ids for French training data-set,
		    (3) path to the token-ids for English development data-set,
		    (4) path to the token-ids for French development data-set,
		    (5) path to the English vocabulary file,
		    (6) path to the French vocabulary file.
	**/
	static public function prepare_wmt_data(data_dir:Dynamic, en_vocabulary_size:Dynamic, fr_vocabulary_size:Dynamic, ?tokenizer:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert a string to list of integers representing token-ids.
		
		For example, a sentence "I have a dog" may become tokenized into
		["I", "have", "a", "dog"] and with vocabulary {"I": 1, "have": 2,
		"a": 4, "dog": 7"} this function will return [1, 2, 4, 7].
		
		Args:
		  sentence: the sentence in bytes format to convert to token-ids.
		  vocabulary: a dictionary mapping tokens to integers.
		  tokenizer: a function to use to tokenize each sentence;
		    if None, basic_tokenizer will be used.
		  normalize_digits: Boolean; if true, all digits are replaced by 0s.
		
		Returns:
		  a list of integers, the token-ids for the sentence.
	**/
	static public function sentence_to_token_ids(sentence:Dynamic, vocabulary:Dynamic, ?tokenizer:Dynamic, ?normalize_digits:Dynamic):Dynamic;
}