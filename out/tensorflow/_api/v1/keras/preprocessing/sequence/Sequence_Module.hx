/* This file is generated, do not edit! */
package tensorflow._api.v1.keras.preprocessing.sequence;
@:pythonImport("tensorflow._api.v1.keras.preprocessing.sequence") extern class Sequence_Module {
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
		Generates a word rank-based probabilistic sampling table.
		
		Used for generating the `sampling_table` argument for `skipgrams`.
		`sampling_table[i]` is the probability of sampling
		the word i-th most common word in a dataset
		(more common words should be sampled less frequently, for balance).
		
		The sampling probabilities are generated according
		to the sampling distribution used in word2vec:
		
		```
		p(word) = (min(1, sqrt(word_frequency / sampling_factor) /
		    (word_frequency / sampling_factor)))
		```
		
		We assume that the word frequencies follow Zipf's law (s=1) to derive
		a numerical approximation of frequency(rank):
		
		`frequency(rank) ~ 1/(rank * (log(rank) + gamma) + 1/2 - 1/(12*rank))`
		where `gamma` is the Euler-Mascheroni constant.
		
		# Arguments
		    size: Int, number of possible words to sample.
		    sampling_factor: The sampling factor in the word2vec formula.
		
		# Returns
		    A 1D Numpy array of length `size` where the ith entry
		    is the probability that a word of rank i should be sampled.
	**/
	static public function make_sampling_table(size:Dynamic, ?sampling_factor:Dynamic):Dynamic;
	/**
		Pads sequences to the same length.
		
		This function transforms a list of
		`num_samples` sequences (lists of integers)
		into a 2D Numpy array of shape `(num_samples, num_timesteps)`.
		`num_timesteps` is either the `maxlen` argument if provided,
		or the length of the longest sequence otherwise.
		
		Sequences that are shorter than `num_timesteps`
		are padded with `value` at the end.
		
		Sequences longer than `num_timesteps` are truncated
		so that they fit the desired length.
		The position where padding or truncation happens is determined by
		the arguments `padding` and `truncating`, respectively.
		
		Pre-padding is the default.
		
		# Arguments
		    sequences: List of lists, where each element is a sequence.
		    maxlen: Int, maximum length of all sequences.
		    dtype: Type of the output sequences.
		        To pad sequences with variable length strings, you can use `object`.
		    padding: String, 'pre' or 'post':
		        pad either before or after each sequence.
		    truncating: String, 'pre' or 'post':
		        remove values from sequences larger than
		        `maxlen`, either at the beginning or at the end of the sequences.
		    value: Float or String, padding value.
		
		# Returns
		    x: Numpy array with shape `(len(sequences), maxlen)`
		
		# Raises
		    ValueError: In case of invalid values for `truncating` or `padding`,
		        or in case of invalid shape for a `sequences` entry.
	**/
	static public function pad_sequences(sequences:Dynamic, ?maxlen:Dynamic, ?dtype:Dynamic, ?padding:Dynamic, ?truncating:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Generates skipgram word pairs.
		
		This function transforms a sequence of word indexes (list of integers)
		into tuples of words of the form:
		
		- (word, word in the same window), with label 1 (positive samples).
		- (word, random word from the vocabulary), with label 0 (negative samples).
		
		Read more about Skipgram in this gnomic paper by Mikolov et al.:
		[Efficient Estimation of Word Representations in
		Vector Space](http://arxiv.org/pdf/1301.3781v3.pdf)
		
		# Arguments
		    sequence: A word sequence (sentence), encoded as a list
		        of word indices (integers). If using a `sampling_table`,
		        word indices are expected to match the rank
		        of the words in a reference dataset (e.g. 10 would encode
		        the 10-th most frequently occurring token).
		        Note that index 0 is expected to be a non-word and will be skipped.
		    vocabulary_size: Int, maximum possible word index + 1
		    window_size: Int, size of sampling windows (technically half-window).
		        The window of a word `w_i` will be
		        `[i - window_size, i + window_size+1]`.
		    negative_samples: Float >= 0. 0 for no negative (i.e. random) samples.
		        1 for same number as positive samples.
		    shuffle: Whether to shuffle the word couples before returning them.
		    categorical: bool. if False, labels will be
		        integers (eg. `[0, 1, 1 .. ]`),
		        if `True`, labels will be categorical, e.g.
		        `[[1,0],[0,1],[0,1] .. ]`.
		    sampling_table: 1D array of size `vocabulary_size` where the entry i
		        encodes the probability to sample a word of rank i.
		    seed: Random seed.
		
		# Returns
		    couples, labels: where `couples` are int pairs and
		        `labels` are either 0 or 1.
		
		# Note
		    By convention, index 0 in the vocabulary is
		    a non-word and will be skipped.
	**/
	static public function skipgrams(sequence:Dynamic, vocabulary_size:Dynamic, ?window_size:Dynamic, ?negative_samples:Dynamic, ?shuffle:Dynamic, ?categorical:Dynamic, ?sampling_table:Dynamic, ?seed:Dynamic):Dynamic;
}