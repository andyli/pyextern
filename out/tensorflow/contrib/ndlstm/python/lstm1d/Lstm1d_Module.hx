/* This file is generated, do not edit! */
package tensorflow.contrib.ndlstm.python.lstm1d;
@:pythonImport("tensorflow.contrib.ndlstm.python.lstm1d") extern class Lstm1d_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _shape(tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Implements a 1D LSTM, either forward or backward.
		
		This is a base case for multidimensional LSTM implementations, which
		tend to be used differently from sequence-to-sequence
		implementations.  For general 1D sequence to sequence
		transformations, you may want to consider another implementation
		from TF slim.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		  dynamic: use dynamic_rnn
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic, ?_dynamic:Dynamic):Dynamic;
	/**
		Run an LSTM, either forward or backward.
		
		This is a 1D LSTM implementation using dynamic_rnn and
		the TensorFlow LSTM op.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base_dynamic(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Run an LSTM, either forward or backward.
		
		This is a 1D LSTM implementation using unrolling and the TensorFlow
		LSTM op.
		
		Args:
		  inputs: input sequence (length, batch_size, ninput)
		  noutput: depth of output
		  scope: optional scope name
		  reverse: run LSTM in reverse
		
		Returns:
		  Output sequence (length, batch_size, noutput)
	**/
	static public function ndlstm_base_unrolled(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?reverse:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Run a softmax layer over all the time steps of an input sequence.
		
		Args:
		  inputs: (length, batch_size, depth) tensor
		  noutput: output depth
		  scope: optional scope name
		  name: optional name for output tensor
		  linear_name: name for linear (pre-softmax) output
		
		Returns:
		  A tensor of size (length, batch_size, noutput).
	**/
	static public function sequence_softmax(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?name:Dynamic, ?linear_name:Dynamic):Dynamic;
	/**
		Run an LSTM across all steps and returns only the final state.
		
		Args:
		  inputs: (length, batch_size, depth) tensor
		  noutput: size of output vector
		  scope: optional scope name
		  name: optional name for output tensor
		  reverse: run in reverse
		
		Returns:
		  Batch of size (batch_size, noutput).
	**/
	static public function sequence_to_final(inputs:Dynamic, noutput:Dynamic, ?scope:Dynamic, ?name:Dynamic, ?reverse:Dynamic):Dynamic;
}