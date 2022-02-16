/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.datasets.imdb;
@:pythonImport("tensorflow.compat.v1.keras.datasets.imdb") extern class Imdb_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Retrieves a dict mapping words to their index in the IMDB dataset.
		
		Args:
		    path: where to cache the data (relative to `~/.keras/dataset`).
		
		Returns:
		    The word index dictionary. Keys are word strings, values are their index.
		
		Example:
		
		```python
		# Retrieve the training sequences.
		(x_train, _), _ = keras.datasets.imdb.load_data()
		# Retrieve the word index file mapping words to indices
		word_index = keras.datasets.imdb.get_word_index()
		# Reverse the word index to obtain a dict mapping indices to words
		inverted_word_index = dict((i, word) for (word, i) in word_index.items())
		# Decode the first sequence in the dataset
		decoded_sequence = " ".join(inverted_word_index[i] for i in x_train[0])
		```
	**/
	static public function get_word_index(?path:Dynamic):Dynamic;
	/**
		Loads the [IMDB dataset](https://ai.stanford.edu/~amaas/data/sentiment/).
		
		This is a dataset of 25,000 movies reviews from IMDB, labeled by sentiment
		(positive/negative). Reviews have been preprocessed, and each review is
		encoded as a list of word indexes (integers).
		For convenience, words are indexed by overall frequency in the dataset,
		so that for instance the integer "3" encodes the 3rd most frequent word in
		the data. This allows for quick filtering operations such as:
		"only consider the top 10,000 most
		common words, but eliminate the top 20 most common words".
		
		As a convention, "0" does not stand for a specific word, but instead is used
		to encode any unknown word.
		
		Args:
		  path: where to cache the data (relative to `~/.keras/dataset`).
		  num_words: integer or None. Words are
		      ranked by how often they occur (in the training set) and only
		      the `num_words` most frequent words are kept. Any less frequent word
		      will appear as `oov_char` value in the sequence data. If None,
		      all words are kept. Defaults to None, so all words are kept.
		  skip_top: skip the top N most frequently occurring words
		      (which may not be informative). These words will appear as
		      `oov_char` value in the dataset. Defaults to 0, so no words are
		      skipped.
		  maxlen: int or None. Maximum sequence length.
		      Any longer sequence will be truncated. Defaults to None, which
		      means no truncation.
		  seed: int. Seed for reproducible data shuffling.
		  start_char: int. The start of a sequence will be marked with this
		      character. Defaults to 1 because 0 is usually the padding character.
		  oov_char: int. The out-of-vocabulary character.
		      Words that were cut out because of the `num_words` or
		      `skip_top` limits will be replaced with this character.
		  index_from: int. Index actual words with this index and higher.
		  **kwargs: Used for backwards compatibility.
		
		Returns:
		  Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train, x_test**: lists of sequences, which are lists of indexes
		  (integers). If the num_words argument was specific, the maximum
		  possible index value is `num_words - 1`. If the `maxlen` argument was
		  specified, the largest possible sequence length is `maxlen`.
		
		**y_train, y_test**: lists of integer labels (1 or 0).
		
		Raises:
		  ValueError: in case `maxlen` is so low
		      that no input sequence could be kept.
		
		Note that the 'out of vocabulary' character is only used for
		words that were present in the training set but are not included
		because they're not making the `num_words` cut here.
		Words that were not seen in the training set but are in the test set
		have simply been skipped.
	**/
	static public function load_data(?path:Dynamic, ?num_words:Dynamic, ?skip_top:Dynamic, ?maxlen:Dynamic, ?seed:Dynamic, ?start_char:Dynamic, ?oov_char:Dynamic, ?index_from:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}