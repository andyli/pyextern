/* This file is generated, do not edit! */
package torch.backends.cudnn.rnn;
@:pythonImport("torch.backends.cudnn.rnn") extern class Rnn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _copyParams(params_from:Dynamic, params_to:Dynamic):Dynamic;
	static public function _hidden_size(fn:Dynamic):Dynamic;
	static public function _input_size(fn:Dynamic, input:Dynamic):Dynamic;
	static public function _num_linear_layers(fn:Dynamic):Dynamic;
	static public function _output_size(fn:Dynamic, input:Dynamic):Dynamic;
	static public function backward_grad(fn:Dynamic, input:Dynamic, hx:Dynamic, weight:Dynamic, output:Dynamic, grad_output:Dynamic, grad_hy:Dynamic, grad_input:Dynamic, grad_hx:Dynamic):Dynamic;
	static public function backward_weight(fn:Dynamic, input:Dynamic, hx:Dynamic, output:Dynamic, weight:Dynamic, grad_weight:Dynamic):Dynamic;
	static public function check_error(status:Dynamic):Dynamic;
	static public function forward(fn:Dynamic, input:Dynamic, hx:Dynamic, weight:Dynamic, output:Dynamic, hy:Dynamic):Dynamic;
	static public function get_cudnn_mode(mode:Dynamic):Dynamic;
	static public function get_num_weights(handle:Dynamic, rnn_desc:Dynamic, x_desc:Dynamic, datatype:Dynamic):Dynamic;
	/**
		Returns weight and bias tensors for each layer of the RNN. These tensors
		are views on the underlying weight buffer allocated by CuDNN.
		
		Note: for LSTM and GRU, which have multiple parameters of each type (4 and 3, respectively),
		      these parameters are concatenated along the first dimension.
		      These parameters are returned in a consistent order by CuDNN:
		          (reset, forget, cell, outut) for LSTM
		          (reset, input, new) for GRU
		Args:
		    fn: The RNN function object holding the RNN state
		    handle: a CuDNN handle
		    weight_buf: a 1D tensor containing the CuDNN-allocated weight (or grad_weight) buffer
		Returns:
		    parameters: [(weight_ih, weight_hh, bias_ih, bias_hh)*], with length equal to the num_layers.
	**/
	static public function get_parameters(fn:Dynamic, handle:Dynamic, weight_buf:Dynamic):Dynamic;
	static public function init_rnn_descriptor(fn:Dynamic, handle:Dynamic):Dynamic;
	static public function init_weight_descriptor(fn:Dynamic, weight:Dynamic):Dynamic;
}