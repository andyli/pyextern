/* This file is generated, do not edit! */
package tensorflow.contrib.crf.python.ops.crf;
@:pythonImport("tensorflow.contrib.crf.python.ops.crf") extern class Crf_Module {
	static public var __all__ : Dynamic;
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
		Computes the binary scores of tag sequences.
		
		Args:
		  tag_indices: A [batch_size, max_seq_len] matrix of tag indices.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] matrix of binary potentials.
		Returns:
		  binary_scores: A [batch_size] vector of binary scores.
	**/
	static public function crf_binary_score(tag_indices:Dynamic, sequence_lengths:Dynamic, transition_params:Dynamic):Dynamic;
	/**
		Decode the highest scoring sequence of tags in TensorFlow.
		
		This is a function for tensor.
		
		Args:
		  potentials: A [batch_size, max_seq_len, num_tags] tensor of
		            unary potentials.
		  transition_params: A [num_tags, num_tags] matrix of
		            binary potentials.
		  sequence_length: A [batch_size] vector of true sequence lengths.
		
		Returns:
		  decode_tags: A [batch_size, max_seq_len] matrix, with dtype `tf.int32`.
		              Contains the highest scoring tag indices.
		  best_score: A [batch_size] vector, containing the score of `decode_tags`.
	**/
	static public function crf_decode(potentials:Dynamic, transition_params:Dynamic, sequence_length:Dynamic):Dynamic;
	/**
		Computes the log-likelihood of tag sequences in a CRF.
		
		Args:
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials
		      to use as input to the CRF layer.
		  tag_indices: A [batch_size, max_seq_len] matrix of tag indices for which we
		      compute the log-likelihood.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] transition matrix, if available.
		Returns:
		  log_likelihood: A [batch_size] `Tensor` containing the log-likelihood of
		    each example, given the sequence of tag indices.
		  transition_params: A [num_tags, num_tags] transition matrix. This is either
		      provided by the caller or created in this function.
	**/
	static public function crf_log_likelihood(inputs:Dynamic, tag_indices:Dynamic, sequence_lengths:Dynamic, ?transition_params:Dynamic):Dynamic;
	/**
		Computes the normalization for a CRF.
		
		Args:
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials
		      to use as input to the CRF layer.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] transition matrix.
		Returns:
		  log_norm: A [batch_size] vector of normalizers for a CRF.
	**/
	static public function crf_log_norm(inputs:Dynamic, sequence_lengths:Dynamic, transition_params:Dynamic):Dynamic;
	/**
		Computes the unnormalized score of all tag sequences matching tag_bitmap.
		
		tag_bitmap enables more than one tag to be considered correct at each time
		step. This is useful when an observed output at a given time step is
		consistent with more than one tag, and thus the log likelihood of that
		observation must take into account all possible consistent tags.
		
		Using one-hot vectors in tag_bitmap gives results identical to
		crf_sequence_score.
		
		Args:
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials
		      to use as input to the CRF layer.
		  tag_bitmap: A [batch_size, max_seq_len, num_tags] boolean tensor
		      representing all active tags at each index for which to calculate the
		      unnormalized score.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] transition matrix.
		Returns:
		  sequence_scores: A [batch_size] vector of unnormalized sequence scores.
	**/
	static public function crf_multitag_sequence_score(inputs:Dynamic, tag_bitmap:Dynamic, sequence_lengths:Dynamic, transition_params:Dynamic):Dynamic;
	/**
		Computes the unnormalized score for a tag sequence.
		
		Args:
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials
		      to use as input to the CRF layer.
		  tag_indices: A [batch_size, max_seq_len] matrix of tag indices for which we
		      compute the unnormalized score.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] transition matrix.
		Returns:
		  sequence_scores: A [batch_size] vector of unnormalized sequence scores.
	**/
	static public function crf_sequence_score(inputs:Dynamic, tag_indices:Dynamic, sequence_lengths:Dynamic, transition_params:Dynamic):Dynamic;
	/**
		Computes the unary scores of tag sequences.
		
		Args:
		  tag_indices: A [batch_size, max_seq_len] matrix of tag indices.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials.
		Returns:
		  unary_scores: A [batch_size] vector of unary scores.
	**/
	static public function crf_unary_score(tag_indices:Dynamic, sequence_lengths:Dynamic, inputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Decode the highest scoring sequence of tags outside of TensorFlow.
		
		This should only be used at test time.
		
		Args:
		  score: A [seq_len, num_tags] matrix of unary potentials.
		  transition_params: A [num_tags, num_tags] matrix of binary potentials.
		
		Returns:
		  viterbi: A [seq_len] list of integers containing the highest scoring tag
		      indices.
		  viterbi_score: A float containing the score for the Viterbi sequence.
	**/
	static public function viterbi_decode(score:Dynamic, transition_params:Dynamic):Dynamic;
}