/* This file is generated, do not edit! */
package tensorflow.contrib.crf;
@:pythonImport("tensorflow.contrib.crf") extern class Crf_Module {
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
		Creates a binary matrix that can be used to mask away padding.
		
		Args:
		  lengths: A vector of integers representing lengths.
		  max_length: An integer indicating the maximum length. All values in
		    lengths should be less than max_length.
		Returns:
		  masks: Masks that can be used to get rid of padding.
	**/
	static public function _lengths_to_masks(lengths:Dynamic, max_length:Dynamic):Dynamic;
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
		Computes the log-likelihood of tag sequences in a CRF.
		
		Args:
		  inputs: A [batch_size, max_seq_len, num_tags] tensor of unary potentials
		      to use as input to the CRF layer.
		  tag_indices: A [batch_size, max_seq_len] matrix of tag indices for which we
		      compute the log-likelihood.
		  sequence_lengths: A [batch_size] vector of true sequence lengths.
		  transition_params: A [num_tags, num_tags] transition matrix, if available.
		Returns:
		  log_likelihood: A scalar containing the log-likelihood of the given sequence
		      of tag indices.
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
	/**
		Decode the highest scoring sequence of tags outside of TensorFlow.
		
		This should only be used at test time.
		
		Args:
		  score: A [seq_len, num_tags] matrix of unary potentials.
		  transition_params: A [num_tags, num_tags] matrix of binary potentials.
		
		Returns:
		  viterbi: A [seq_len] list of integers containing the highest scoring tag
		      indicies.
		  viterbi_score: A float containing the score for the Viterbi sequence.
	**/
	static public function viterbi_decode(score:Dynamic, transition_params:Dynamic):Dynamic;
}