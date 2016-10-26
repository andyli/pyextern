/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.lstm_ops;
@:pythonImport("tensorflow.contrib.rnn.python.ops.lstm_ops") extern class Lstm_ops_Module {
	/**
		Gradient for FusedLSTM.
	**/
	static public function _FusedLSTMGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	/**
		Shape for FusedLSTM.
	**/
	static public function _FusedLSTMGradShape(op:Dynamic):Dynamic;
	static public function _FusedLSTMShape(op:Dynamic):Dynamic;
	/**
		Gradient for LSTMFusedCell.
	**/
	static public function _LSTMFusedCellGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _LSTMFusedCellGradShape(op:Dynamic):Dynamic;
	static public function _LSTMFusedCellShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TODO(williamchan): add doc.
		
		Args:
		  seq_len_max: A `Tensor` of type `int64`.
		  x: A list of at least 1 `Tensor` objects of the same type in: `float32`.
		  w: A `Tensor`. Must have the same type as `x`.
		  b: A `Tensor`. Must have the same type as `x`.
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		  wci: A `Tensor`. Must have the same type as `x`.
		  wcf: A `Tensor`. Must have the same type as `x`.
		  wco: A `Tensor`. Must have the same type as `x`.
		  forget_bias: An optional `float`. Defaults to `1`.
		  cell_clip: An optional `float`. Defaults to `3`.
		  use_peephole: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (i, cs, f, o, ci, co, h).
		  i: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  cs: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  f: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  o: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  ci: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  co: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		  h: A list with the same number of `Tensor` objects as `x` of `Tensor`
		  objects of the same type as x.
		
		Raises:
		  ValueError: If `b` does not have a valid shape.
	**/
	static public function _fused_lstm(seq_len_max:Dynamic, x:Dynamic, w:Dynamic, b:Dynamic, ?cs_prev:Dynamic, ?h_prev:Dynamic, ?wci:Dynamic, ?wcf:Dynamic, ?wco:Dynamic, ?forget_bias:Dynamic, ?cell_clip:Dynamic, ?use_peephole:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the LSTM cell forward propagation for 1 time step.
		
		This implementation uses 1 weight matrix and 1 bias vector, there is no
		diagonal peephole connection.
		
		This kernel op implements the following mathematical equations:
		
		```python
		xh = [x, h_prev]
		[i, f, ci, o] = xh * w + b
		f = f + forget_bias
		
		i = sigmoid(i)
		f = sigmoid(f)
		ci = tanh(ci)
		o = sigmoid(o)
		
		cs = ci .* i + cs_prev .* f
		co = tanh(cs)
		
		h = co .* o
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`, `float64`.
		    The input to the LSTM cell.
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		  w: A `Tensor`. Must have the same type as `x`. The weight matrix.
		  b: A `Tensor`. Must have the same type as `x`. The bias vector.
		  wci: A `Tensor`. Must have the same type as `x`.
		  wcf: A `Tensor`. Must have the same type as `x`.
		  wco: A `Tensor`. Must have the same type as `x`.
		  forget_bias: An optional `float`. Defaults to `1`. The forget gate bias.
		  cell_clip: An optional `float`. Defaults to `3`.
		  use_peephole: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (i, cs, f, o, ci, co, h).
		  i: A `Tensor`. Has the same type as `x`. The input gate.
		  cs: A `Tensor`. Has the same type as `x`. The cell state before the tanh.
		  f: A `Tensor`. Has the same type as `x`. The forget gate.
		  o: A `Tensor`. Has the same type as `x`. The output gate.
		  ci: A `Tensor`. Has the same type as `x`. The cell input.
		  co: A `Tensor`. Has the same type as `x`. The cell after the tanh.
		  h: A `Tensor`. Has the same type as `x`. The output h vector.
		
		Raises:
		  ValueError: If cell_size is None.
	**/
	static public function _lstm_fused_cell(x:Dynamic, cs_prev:Dynamic, h_prev:Dynamic, w:Dynamic, b:Dynamic, ?wci:Dynamic, ?wcf:Dynamic, ?wco:Dynamic, ?forget_bias:Dynamic, ?cell_clip:Dynamic, ?use_peephole:Dynamic, ?name:Dynamic):Dynamic;
	static public var _lstm_fused_cell_grad_outputs : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}