/* This file is generated, do not edit! */
package tensorflow.python.keras.preprocessing.text;
@:pythonImport("tensorflow.python.keras.preprocessing.text") extern class Text_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts a text to a sequence of indexes in a fixed-size hashing space.
		
		# Arguments
		    text: Input text (string).
		    n: Dimension of the hashing space.
		    hash_function: defaults to python `hash` function, can be 'md5' or
		        any function that takes in input a string and returns a int.
		        Note that 'hash' is not a stable hashing function, so
		        it is not consistent across different runs, while 'md5'
		        is a stable hashing function.
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n``,
		        includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to set the text to lowercase.
		    split: str. Separator for word splitting.
		
		# Returns
		    A list of integer word indices (unicity non-guaranteed).
		
		`0` is a reserved index that won't be assigned to any word.
		
		Two or more words may be assigned to the same index, due to possible
		collisions by the hashing function.
		The [probability](
		    https://en.wikipedia.org/wiki/Birthday_problem#Probability_table)
		of a collision is in relation to the dimension of the hashing space and
		the number of distinct objects.
	**/
	static public function hashing_trick(text:Dynamic, n:Dynamic, ?hash_function:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		One-hot encodes a text into a list of word indexes of size `n`.
		
		This function receives as input a string of text and returns a
		list of encoded integers each corresponding to a word (or token)
		in the given input string.
		
		Args:
		    input_text: Input text (string).
		    n: int. Size of vocabulary.
		    filters: list (or concatenation) of characters to filter out, such as
		      punctuation. Default:
		      ```
		      '!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n
		      ```,
		      includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to set the text to lowercase.
		    split: str. Separator for word splitting.
		
		Returns:
		    List of integers in `[1, n]`. Each integer encodes a word
		    (unicity non-guaranteed).
	**/
	static public function one_hot(input_text:Dynamic, n:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Generates a `tf.data.Dataset` from text files in a directory.
		
		If your directory structure is:
		
		```
		main_directory/
		...class_a/
		......a_text_1.txt
		......a_text_2.txt
		...class_b/
		......b_text_1.txt
		......b_text_2.txt
		```
		
		Then calling `text_dataset_from_directory(main_directory, labels='inferred')`
		will return a `tf.data.Dataset` that yields batches of texts from
		the subdirectories `class_a` and `class_b`, together with labels
		0 and 1 (0 corresponding to `class_a` and 1 corresponding to `class_b`).
		
		Only `.txt` files are supported at this time.
		
		Args:
		  directory: Directory where the data is located.
		      If `labels` is "inferred", it should contain
		      subdirectories, each containing text files for a class.
		      Otherwise, the directory structure is ignored.
		  labels: Either "inferred"
		      (labels are generated from the directory structure),
		      None (no labels),
		      or a list/tuple of integer labels of the same size as the number of
		      text files found in the directory. Labels should be sorted according
		      to the alphanumeric order of the text file paths
		      (obtained via `os.walk(directory)` in Python).
		  label_mode:
		      - 'int': means that the labels are encoded as integers
		          (e.g. for `sparse_categorical_crossentropy` loss).
		      - 'categorical' means that the labels are
		          encoded as a categorical vector
		          (e.g. for `categorical_crossentropy` loss).
		      - 'binary' means that the labels (there can be only 2)
		          are encoded as `float32` scalars with values 0 or 1
		          (e.g. for `binary_crossentropy`).
		      - None (no labels).
		  class_names: Only valid if "labels" is "inferred". This is the explict
		      list of class names (must match names of subdirectories). Used
		      to control the order of the classes
		      (otherwise alphanumerical order is used).
		  batch_size: Size of the batches of data. Default: 32.
		  max_length: Maximum size of a text string. Texts longer than this will
		    be truncated to `max_length`.
		  shuffle: Whether to shuffle the data. Default: True.
		      If set to False, sorts the data in alphanumeric order.
		  seed: Optional random seed for shuffling and transformations.
		  validation_split: Optional float between 0 and 1,
		      fraction of data to reserve for validation.
		  subset: One of "training" or "validation".
		      Only used if `validation_split` is set.
		  follow_links: Whether to visits subdirectories pointed to by symlinks.
		      Defaults to False.
		
		Returns:
		  A `tf.data.Dataset` object.
		    - If `label_mode` is None, it yields `string` tensors of shape
		      `(batch_size,)`, containing the contents of a batch of text files.
		    - Otherwise, it yields a tuple `(texts, labels)`, where `texts`
		      has shape `(batch_size,)` and `labels` follows the format described
		      below.
		
		Rules regarding labels format:
		  - if `label_mode` is `int`, the labels are an `int32` tensor of shape
		    `(batch_size,)`.
		  - if `label_mode` is `binary`, the labels are a `float32` tensor of
		    1s and 0s of shape `(batch_size, 1)`.
		  - if `label_mode` is `categorial`, the labels are a `float32` tensor
		    of shape `(batch_size, num_classes)`, representing a one-hot
		    encoding of the class index.
	**/
	static public function text_dataset_from_directory(directory:Dynamic, ?labels:Dynamic, ?label_mode:Dynamic, ?class_names:Dynamic, ?batch_size:Dynamic, ?max_length:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?validation_split:Dynamic, ?subset:Dynamic, ?follow_links:Dynamic):Dynamic;
	/**
		Converts a text to a sequence of words (or tokens).
		
		This function transforms a string of text into a list of words
		while ignoring `filters` which include punctuations by default.
		
		>>> sample_text = 'This is a sample sentence.'
		>>> tf.keras.preprocessing.text.text_to_word_sequence(sample_text)
		['this', 'is', 'a', 'sample', 'sentence']
		
		Args:
		    input_text: Input text (string).
		    filters: list (or concatenation) of characters to filter out, such as
		        punctuation. Default: ``'!"#$%&()*+,-./:;<=>?@[\]^_`{|}~\t\n'``,
		          includes basic punctuation, tabs, and newlines.
		    lower: boolean. Whether to convert the input to lowercase.
		    split: str. Separator for word splitting.
		
		Returns:
		    A list of words (or tokens).
	**/
	static public function text_to_word_sequence(input_text:Dynamic, ?filters:Dynamic, ?lower:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Parses a JSON tokenizer configuration file and returns a
		tokenizer instance.
		
		# Arguments
		    json_string: JSON string encoding a tokenizer configuration.
		
		# Returns
		    A Keras Tokenizer instance
	**/
	static public function tokenizer_from_json(json_string:Dynamic):Dynamic;
}