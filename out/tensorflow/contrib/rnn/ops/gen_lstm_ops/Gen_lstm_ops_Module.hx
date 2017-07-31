/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.ops.gen_lstm_ops;
@:pythonImport("tensorflow.contrib.rnn.ops.gen_lstm_ops") extern class Gen_lstm_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _block_lstm_grad_outputs : Dynamic;
	static public var _block_lstm_outputs : Dynamic;
	static public var _lstm_block_cell_grad_outputs : Dynamic;
	static public var _lstm_block_cell_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Computes the LSTM cell forward propagation for all the time steps.
		
		This is equivalent to applying LSTMBlockCell in a loop, like so:
		
		```python
		for x1 in unpack(x):
		  i1, cs1, f1, o1, ci1, co1, h1 = LSTMBlock(
		    x1, cs_prev, h_prev, w, wci, wcf, wco, b)
		  cs_prev = cs1
		  h_prev = h1
		  i.append(i1)
		  cs.append(cs1)
		  f.append(f1)
		  o.append(o1)
		  ci.append(ci1)
		  co.append(co1)
		  h.append(h1)
		return pack(i), pack(cs), pack(f), pack(o), pack(ci), pack(ch), pack(h)
		```
		
		Args:
		  seq_len_max: A `Tensor` of type `int64`.
		    Maximum time length actually used by this input. Outputs are padded
		    with zeros beyond this length.
		  x: A `Tensor`. Must be one of the following types: `float32`.
		    The sequence input to the LSTM, shape (timelen, batch_size, num_inputs).
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		    Value of the initial cell state.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		    Initial output of cell (to be used for peephole).
		  w: A `Tensor`. Must have the same type as `x`. The weight matrix.
		  wci: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for input gate peephole connection.
		  wcf: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for forget gate peephole connection.
		  wco: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for output gate peephole connection.
		  b: A `Tensor`. Must have the same type as `x`. The bias vector.
		  forget_bias: An optional `float`. Defaults to `1`. The forget gate bias.
		  cell_clip: An optional `float`. Defaults to `3`.
		    Value to clip the 'cs' value to.
		  use_peephole: An optional `bool`. Defaults to `False`.
		    Whether to use peephole weights.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (i, cs, f, o, ci, co, h).
		
		  i: A `Tensor`. Has the same type as `x`. The input gate over the whole time sequence.
		  cs: A `Tensor`. Has the same type as `x`. The cell state before the tanh over the whole time sequence.
		  f: A `Tensor`. Has the same type as `x`. The forget gate over the whole time sequence.
		  o: A `Tensor`. Has the same type as `x`. The output gate over the whole time sequence.
		  ci: A `Tensor`. Has the same type as `x`. The cell input over the whole time sequence.
		  co: A `Tensor`. Has the same type as `x`. The cell after the tanh over the whole time sequence.
		  h: A `Tensor`. Has the same type as `x`. The output h vector over the whole time sequence.
	**/
	static public function block_lstm(seq_len_max:Dynamic, x:Dynamic, cs_prev:Dynamic, h_prev:Dynamic, w:Dynamic, wci:Dynamic, wcf:Dynamic, wco:Dynamic, b:Dynamic, ?forget_bias:Dynamic, ?cell_clip:Dynamic, ?use_peephole:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the LSTM cell backward propagation for the entire time sequence.
		
		This implementation is to be used in conjunction of LSTMBlock.
		
		Args:
		  seq_len_max: A `Tensor` of type `int64`.
		    Maximum time length actually used by this input. Outputs are padded
		    with zeros beyond this length.
		  x: A `Tensor`. Must be one of the following types: `float32`.
		    The sequence input to the LSTM, shape (timelen, batch_size, num_inputs).
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		    Value of the initial cell state.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		    Initial output of cell (to be used for peephole).
		  w: A `Tensor`. Must have the same type as `x`. The weight matrix.
		  wci: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for input gate peephole connection.
		  wcf: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for forget gate peephole connection.
		  wco: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for output gate peephole connection.
		  b: A `Tensor`. Must have the same type as `x`. The bias vector.
		  i: A `Tensor`. Must have the same type as `x`.
		    The input gate over the whole time sequence.
		  cs: A `Tensor`. Must have the same type as `x`.
		    The cell state before the tanh over the whole time sequence.
		  f: A `Tensor`. Must have the same type as `x`.
		    The forget gate over the whole time sequence.
		  o: A `Tensor`. Must have the same type as `x`.
		    The output gate over the whole time sequence.
		  ci: A `Tensor`. Must have the same type as `x`.
		    The cell input over the whole time sequence.
		  co: A `Tensor`. Must have the same type as `x`.
		    The cell after the tanh over the whole time sequence.
		  h: A `Tensor`. Must have the same type as `x`.
		    The output h vector over the whole time sequence.
		  cs_grad: A `Tensor`. Must have the same type as `x`.
		    The current gradient of cs.
		  h_grad: A `Tensor`. Must have the same type as `x`.
		    The gradient of h vector.
		  use_peephole: A `bool`. Whether to use peephole weights.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (x_grad, cs_prev_grad, h_prev_grad, w_grad, wci_grad, wcf_grad, wco_grad, b_grad).
		
		  x_grad: A `Tensor`. Has the same type as `x`. The gradient of x to be back-propped.
		  cs_prev_grad: A `Tensor`. Has the same type as `x`. The gradient of cs_prev to be back-propped.
		  h_prev_grad: A `Tensor`. Has the same type as `x`. The gradient of h_prev to be back-propped.
		  w_grad: A `Tensor`. Has the same type as `x`. The gradient for w to be back-propped.
		  wci_grad: A `Tensor`. Has the same type as `x`. The gradient for wci to be back-propped.
		  wcf_grad: A `Tensor`. Has the same type as `x`. The gradient for wcf to be back-propped.
		  wco_grad: A `Tensor`. Has the same type as `x`. The gradient for wco to be back-propped.
		  b_grad: A `Tensor`. Has the same type as `x`. The gradient for w to be back-propped.
	**/
	static public function block_lstm_grad(seq_len_max:Dynamic, x:Dynamic, cs_prev:Dynamic, h_prev:Dynamic, w:Dynamic, wci:Dynamic, wcf:Dynamic, wco:Dynamic, b:Dynamic, i:Dynamic, cs:Dynamic, f:Dynamic, o:Dynamic, ci:Dynamic, co:Dynamic, h:Dynamic, cs_grad:Dynamic, h_grad:Dynamic, use_peephole:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the LSTM cell forward propagation for 1 time step.
		
		This implementation uses 1 weight matrix and 1 bias vector, and there's an
		optional peephole connection.
		
		This kernel op implements the following mathematical equations:
		
		```python
		xh = [x, h_prev]
		[i, f, ci, o] = xh * w + b
		f = f + forget_bias
		
		if not use_peephole:
		  wci = wcf = wco = 0
		
		i = sigmoid(cs_prev * wci + i)
		f = sigmoid(cs_prev * wcf + f)
		ci = tanh(ci)
		
		cs = ci .* i + cs_prev .* f
		cs = clip(cs, cell_clip)
		
		o = sigmoid(cs * wco + o)
		co = tanh(cs)
		h = co .* o
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`.
		    The input to the LSTM cell, shape (batch_size, num_inputs).
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		    Value of the cell state at previous time step.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		    Output of the previous cell at previous time step.
		  w: A `Tensor`. Must have the same type as `x`. The weight matrix.
		  wci: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for input gate peephole connection.
		  wcf: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for forget gate peephole connection.
		  wco: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for output gate peephole connection.
		  b: A `Tensor`. Must have the same type as `x`. The bias vector.
		  forget_bias: An optional `float`. Defaults to `1`. The forget gate bias.
		  cell_clip: An optional `float`. Defaults to `3`.
		    Value to clip the 'cs' value to.
		  use_peephole: An optional `bool`. Defaults to `False`.
		    Whether to use peephole weights.
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
	**/
	static public function lstm_block_cell(x:Dynamic, cs_prev:Dynamic, h_prev:Dynamic, w:Dynamic, wci:Dynamic, wcf:Dynamic, wco:Dynamic, b:Dynamic, ?forget_bias:Dynamic, ?cell_clip:Dynamic, ?use_peephole:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the LSTM cell backward propagation for 1 timestep.
		
		This implementation is to be used in conjunction of LSTMBlockCell.
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`.
		    The input to the LSTM cell, shape (batch_size, num_inputs).
		  cs_prev: A `Tensor`. Must have the same type as `x`.
		    The previous cell state.
		  h_prev: A `Tensor`. Must have the same type as `x`. The previous h state.
		  w: A `Tensor`. Must have the same type as `x`. The weight matrix.
		  wci: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for input gate peephole connection.
		  wcf: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for forget gate peephole connection.
		  wco: A `Tensor`. Must have the same type as `x`.
		    The weight matrix for output gate peephole connection.
		  b: A `Tensor`. Must have the same type as `x`. The bias vector.
		  i: A `Tensor`. Must have the same type as `x`. The input gate.
		  cs: A `Tensor`. Must have the same type as `x`.
		    The cell state before the tanh.
		  f: A `Tensor`. Must have the same type as `x`. The forget gate.
		  o: A `Tensor`. Must have the same type as `x`. The output gate.
		  ci: A `Tensor`. Must have the same type as `x`. The cell input.
		  co: A `Tensor`. Must have the same type as `x`. The cell after the tanh.
		  cs_grad: A `Tensor`. Must have the same type as `x`.
		    The current gradient of cs.
		  h_grad: A `Tensor`. Must have the same type as `x`.
		    The gradient of h vector.
		  use_peephole: A `bool`. Whether the cell uses peephole connections.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (cs_prev_grad, dicfo, wci_grad, wcf_grad, wco_grad).
		
		  cs_prev_grad: A `Tensor`. Has the same type as `x`. The gradient of cs to be back-propped.
		  dicfo: A `Tensor`. Has the same type as `x`. The derivative wrt to [i, cs, f, o].
		  wci_grad: A `Tensor`. Has the same type as `x`. The gradient for wci to be back-propped.
		  wcf_grad: A `Tensor`. Has the same type as `x`. The gradient for wcf to be back-propped.
		  wco_grad: A `Tensor`. Has the same type as `x`. The gradient for wco to be back-propped.
	**/
	static public function lstm_block_cell_grad(x:Dynamic, cs_prev:Dynamic, h_prev:Dynamic, w:Dynamic, wci:Dynamic, wcf:Dynamic, wco:Dynamic, b:Dynamic, i:Dynamic, cs:Dynamic, f:Dynamic, o:Dynamic, ci:Dynamic, co:Dynamic, cs_grad:Dynamic, h_grad:Dynamic, use_peephole:Dynamic, ?name:Dynamic):Dynamic;
}