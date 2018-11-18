/* This file is generated, do not edit! */
package tensorflow._api.v1.keras.datasets.imdb;
@:pythonImport("tensorflow._api.v1.keras.datasets.imdb") extern class Imdb_Module {
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
		Retrieves the dictionary mapping word indices back to words.
		
		Arguments:
		    path: where to cache the data (relative to `~/.keras/dataset`).
		
		Returns:
		    The word index dictionary.
	**/
	static public function get_word_index(?path:Dynamic):Dynamic;
	/**
		Loads the IMDB dataset.
		
		Arguments:
		    path: where to cache the data (relative to `~/.keras/dataset`).
		    num_words: max number of words to include. Words are ranked
		        by how often they occur (in the training set) and only
		        the most frequent words are kept
		    skip_top: skip the top N most frequently occurring words
		        (which may not be informative).
		    maxlen: sequences longer than this will be filtered out.
		    seed: random seed for sample shuffling.
		    start_char: The start of a sequence will be marked with this character.
		        Set to 1 because 0 is usually the padding character.
		    oov_char: words that were cut out because of the `num_words`
		        or `skip_top` limit will be replaced with this character.
		    index_from: index actual words with this index and higher.
		    **kwargs: Used for backwards compatibility.
		
		Returns:
		    Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
		
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