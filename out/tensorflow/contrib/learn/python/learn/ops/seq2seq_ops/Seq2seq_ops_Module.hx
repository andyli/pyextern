/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.seq2seq_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.seq2seq_ops") extern class Seq2seq_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		RNN Decoder that creates training and sampling sub-graphs.
		
		Args:
		  decoder_inputs: Inputs for decoder, list of tensors.
		    This is used only in training sub-graph.
		  initial_state: Initial state for the decoder.
		  cell: RNN cell to use for decoder.
		  scope: Scope to use, if None new will be produced.
		
		Returns:
		  List of tensors for outputs and states for training and sampling sub-graphs.
	**/
	static public function rnn_decoder(decoder_inputs:Dynamic, initial_state:Dynamic, cell:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		RNN Sequence to Sequence model.
		
		Args:
		  encoder_inputs: List of tensors, inputs for encoder.
		  decoder_inputs: List of tensors, inputs for decoder.
		  encoder_cell: RNN cell to use for encoder.
		  decoder_cell: RNN cell to use for decoder, if None encoder_cell is used.
		  dtype: Type to initialize encoder state with.
		  scope: Scope to use, if None new will be produced.
		
		Returns:
		  List of tensors for outputs and states for trianing and sampling sub-graphs.
	**/
	static public function rnn_seq2seq(encoder_inputs:Dynamic, decoder_inputs:Dynamic, encoder_cell:Dynamic, ?decoder_cell:Dynamic, ?dtype:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Processes inputs for Sequence to Sequence models.
		
		Args:
		  x: Input Tensor [batch_size, input_length, embed_dim].
		  y: Output Tensor [batch_size, output_length, embed_dim].
		  input_length: length of input x.
		  output_length: length of output y.
		  sentinel: optional first input to decoder and final output expected.
		    If sentinel is not provided, zeros are used. Due to fact that y is not
		    available in sampling time, shape of sentinel will be inferred from x.
		  name: Operation name.
		
		Returns:
		  Encoder input from x, and decoder inputs and outputs from y.
	**/
	static public function seq2seq_inputs(x:Dynamic, y:Dynamic, input_length:Dynamic, output_length:Dynamic, ?sentinel:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns predictions and loss for sequence of predictions.
		
		Args:
		  decoding: List of Tensors with predictions.
		  labels: List of Tensors with labels.
		  sampling_decoding: Optional, List of Tensor with predictions to be used
		    in sampling. E.g. they shouldn't have dependncy on outputs.
		    If not provided, decoding is used.
		  name: Operation name.
		
		Returns:
		  Predictions and losses tensors.
	**/
	static public function sequence_classifier(decoding:Dynamic, labels:Dynamic, ?sampling_decoding:Dynamic, ?name:Dynamic):Dynamic;
}