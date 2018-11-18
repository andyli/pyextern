/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.rnn_ptb.rnn_ptb;
@:pythonImport("tensorflow.contrib.eager.python.examples.rnn_ptb.rnn_ptb") extern class Rnn_ptb_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a sequence to a batch of sequences.
	**/
	static public function _divide_into_batches(data:Dynamic, batch_size:Dynamic):Dynamic;
	static public function _get_batch(data:Dynamic, i:Dynamic, seq_len:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function clip_gradients(grads_and_vars:Dynamic, clip_ratio:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		evaluate an epoch.
	**/
	static public function evaluate(model:Dynamic, data:Dynamic):Dynamic;
	/**
		Returns a PTBModel with a 'large' configuration.
	**/
	static public function large_model(use_cudnn_rnn:Dynamic):Dynamic;
	static public function loss_fn(model:Dynamic, inputs:Dynamic, targets:Dynamic, training:Dynamic):Dynamic;
	static public function main(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a PTBModel with a 'small' configuration.
	**/
	static public function small_model(use_cudnn_rnn:Dynamic):Dynamic;
	/**
		Returns a tiny PTBModel for unit tests.
	**/
	static public function test_model(use_cudnn_rnn:Dynamic):Dynamic;
	/**
		training an epoch.
	**/
	static public function train(model:Dynamic, optimizer:Dynamic, train_data:Dynamic, sequence_length:Dynamic, clip_ratio:Dynamic):Dynamic;
}