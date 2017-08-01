/* This file is generated, do not edit! */
package torch.nn._functions.rnn;
@:pythonImport("torch.nn._functions.rnn") extern class Rnn_Module {
	static public function AutogradRNN(mode:Dynamic, input_size:Dynamic, hidden_size:Dynamic, ?num_layers:Dynamic, ?batch_first:Dynamic, ?dropout:Dynamic, ?train:Dynamic, ?bidirectional:Dynamic, ?batch_sizes:Dynamic, ?dropout_state:Dynamic):Dynamic;
	static public function GRUCell(input:Dynamic, hidden:Dynamic, w_ih:Dynamic, w_hh:Dynamic, ?b_ih:Dynamic, ?b_hh:Dynamic):Dynamic;
	static public function LSTMCell(input:Dynamic, hidden:Dynamic, w_ih:Dynamic, w_hh:Dynamic, ?b_ih:Dynamic, ?b_hh:Dynamic):Dynamic;
	static public function RNN(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function RNNReLUCell(input:Dynamic, hidden:Dynamic, w_ih:Dynamic, w_hh:Dynamic, ?b_ih:Dynamic, ?b_hh:Dynamic):Dynamic;
	static public function RNNTanhCell(input:Dynamic, hidden:Dynamic, w_ih:Dynamic, w_hh:Dynamic, ?b_ih:Dynamic, ?b_hh:Dynamic):Dynamic;
	static public function Recurrent(inner:Dynamic, ?reverse:Dynamic):Dynamic;
	static public function StackedRNN(inners:Dynamic, num_layers:Dynamic, ?lstm:Dynamic, ?dropout:Dynamic, ?train:Dynamic):Dynamic;
	static public function VariableRecurrent(batch_sizes:Dynamic, inner:Dynamic):Dynamic;
	static public function VariableRecurrentReverse(batch_sizes:Dynamic, inner:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function variable_recurrent_factory(batch_sizes:Dynamic):Dynamic;
}