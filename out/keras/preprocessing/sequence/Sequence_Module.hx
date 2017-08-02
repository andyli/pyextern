/* This file is generated, do not edit! */
package keras.preprocessing.sequence;
@:pythonImport("keras.preprocessing.sequence") extern class Sequence_Module {
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
		    maxlen: int, maximum length
		    seq: list of lists where each sublist is a sequence
		    label: list where each element is an integer
		
		# Returns
		    new_seq, new_label: shortened lists for `seq` and `label`.
	**/
	static public function _remove_long_seq(maxlen:Dynamic, seq:Dynamic, label:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Generates a word rank-based probabilistic sampling table.
		
		This generates an array where the ith element
		is the probability that a word of rank i would be sampled,
		according to the sampling distribution used in word2vec.
		
		The word2vec formula is:
		    p(word) = min(1, sqrt(word.frequency/sampling_factor) / (word.frequency/sampling_factor))
		
		We assume that the word frequencies follow Zipf's law (s=1) to derive
		a numerical approximation of frequency(rank):
		   frequency(rank) ~ 1/(rank * (log(rank) + gamma) + 1/2 - 1/(12*rank))
		    where gamma is the Euler-Mascheroni constant.
		
		# Arguments
		    size: int, number of possible words to sample.
		    sampling_factor: the sampling factor in the word2vec formula.
		
		# Returns
		    A 1D Numpy array of length `size` where the ith entry
		    is the probability that a word of rank i should be sampled.
	**/
	static public function make_sampling_table(size:Dynamic, ?sampling_factor:Dynamic):Dynamic;
	/**
		Pads each sequence to the same length (length of the longest sequence).
		
		If maxlen is provided, any sequence longer
		than maxlen is truncated to maxlen.
		Truncation happens off either the beginning (default) or
		the end of the sequence.
		
		Supports post-padding and pre-padding (default).
		
		# Arguments
		    sequences: list of lists where each element is a sequence
		    maxlen: int, maximum length
		    dtype: type to cast the resulting sequence.
		    padding: 'pre' or 'post', pad either before or after each sequence.
		    truncating: 'pre' or 'post', remove values from sequences larger than
		        maxlen either in the beginning or in the end of the sequence
		    value: float, value to pad the sequences to the desired value.
		
		# Returns
		    x: numpy array with dimensions (number_of_sequences, maxlen)
		
		# Raises
		    ValueError: in case of invalid values for `truncating` or `padding`,
		        or in case of invalid shape for a `sequences` entry.
	**/
	static public function pad_sequences(sequences:Dynamic, ?maxlen:Dynamic, ?dtype:Dynamic, ?padding:Dynamic, ?truncating:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Generates skipgram word pairs.
		
		Takes a sequence (list of indexes of words),
		returns couples of [word_index, other_word index] and labels (1s or 0s),
		where label = 1 if 'other_word' belongs to the context of 'word',
		and label=0 if 'other_word' is randomly sampled
		
		# Arguments
		    sequence: a word sequence (sentence), encoded as a list
		        of word indices (integers). If using a `sampling_table`,
		        word indices are expected to match the rank
		        of the words in a reference dataset (e.g. 10 would encode
		        the 10-th most frequently occurring token).
		        Note that index 0 is expected to be a non-word and will be skipped.
		    vocabulary_size: int. maximum possible word index + 1
		    window_size: int. actually half-window.
		        The window of a word wi will be [i-window_size, i+window_size+1]
		    negative_samples: float >= 0. 0 for no negative (=random) samples.
		        1 for same number as positive samples. etc.
		    shuffle: whether to shuffle the word couples before returning them.
		    categorical: bool. if False, labels will be
		        integers (eg. [0, 1, 1 .. ]),
		        if True labels will be categorical eg. [[1,0],[0,1],[0,1] .. ]
		    sampling_table: 1D array of size `vocabulary_size` where the entry i
		        encodes the probabibily to sample a word of rank i.
		
		# Returns
		    couples, labels: where `couples` are int pairs and
		        `labels` are either 0 or 1.
		
		# Note
		    By convention, index 0 in the vocabulary is
		    a non-word and will be skipped.
	**/
	static public function skipgrams(sequence:Dynamic, vocabulary_size:Dynamic, ?window_size:Dynamic, ?negative_samples:Dynamic, ?shuffle:Dynamic, ?categorical:Dynamic, ?sampling_table:Dynamic):Dynamic;
}