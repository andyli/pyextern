/* This file is generated, do not edit! */
package tensorflow.python.keras.datasets.imdb;
@:pythonImport("tensorflow.python.keras.datasets.imdb") extern class Imdb_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Removes sequences that exceed the maximum length.
		
		# Arguments
		    maxlen: Int, maximum length of the output sequences.
		    seq: List of lists, where each sublist is a sequence.
		    label: List where each element is an integer.
		
		# Returns
		    new_seq, new_label: shortened lists for `seq` and `label`.
	**/
	static public function _remove_long_seq(maxlen:Dynamic, seq:Dynamic, label:Dynamic):Dynamic;
	/**
		Downloads a file from a URL if it not already in the cache.
		
		By default the file at the url `origin` is downloaded to the
		cache_dir `~/.keras`, placed in the cache_subdir `datasets`,
		and given the filename `fname`. The final location of a file
		`example.txt` would therefore be `~/.keras/datasets/example.txt`.
		
		Files in tar, tar.gz, tar.bz, and zip formats can also be extracted.
		Passing a hash will verify the file after download. The command line
		programs `shasum` and `sha256sum` can compute the hash.
		
		Example:
		
		```python
		path_to_downloaded_file = tf.keras.utils.get_file(
		    "flower_photos",
		    "https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz",
		    untar=True)
		```
		
		Args:
		    fname: Name of the file. If an absolute path `/path/to/file.txt` is
		        specified the file will be saved at that location.
		    origin: Original URL of the file.
		    untar: Deprecated in favor of `extract` argument.
		        boolean, whether the file should be decompressed
		    md5_hash: Deprecated in favor of `file_hash` argument.
		        md5 hash of the file for verification
		    file_hash: The expected hash string of the file after download.
		        The sha256 and md5 hash algorithms are both supported.
		    cache_subdir: Subdirectory under the Keras cache dir where the file is
		        saved. If an absolute path `/path/to/folder` is
		        specified the file will be saved at that location.
		    hash_algorithm: Select the hash algorithm to verify the file.
		        options are `'md5'`, `'sha256'`, and `'auto'`.
		        The default 'auto' detects the hash algorithm in use.
		    extract: True tries extracting the file as an Archive, like tar or zip.
		    archive_format: Archive format to try for extracting the file.
		        Options are `'auto'`, `'tar'`, `'zip'`, and `None`.
		        `'tar'` includes tar, tar.gz, and tar.bz files.
		        The default `'auto'` corresponds to `['tar', 'zip']`.
		        None or an empty list will return no matches found.
		    cache_dir: Location to store cached files, when None it
		        defaults to the default directory `~/.keras/`.
		
		Returns:
		    Path to the downloaded file
	**/
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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