/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.ops.gen_gru_ops;
@:pythonImport("tensorflow.contrib.rnn.ops.gen_gru_ops") extern class Gen_gru_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _gru_block_cell_grad_outputs : Dynamic;
	static public var _gru_block_cell_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Computes the GRU cell forward propagation for 1 time step.
		
		Args
		    x: Input to the GRU cell.
		    h_prev: State input from the previous GRU cell.
		    w_ru: Weight matrix for the reset and update gate.
		    w_c: Weight matrix for the cell connection gate.
		    b_ru: Bias vector for the reset and update gate.
		    b_c: Bias vector for the cell connection gate.
		
		Returns
		    r: Output of the reset gate.
		    u: Output of the update gate.
		    c: Output of the cell connection gate.
		    h: Current state of the GRU cell.
		
		Note on notation of the variables:
		
		Concatenation of a and b is represented by a_b
		Element-wise dot product of a and b is represented by ab
		Element-wise dot product is represented by \circ
		Matrix multiplication is represented by *
		
		Baises are initialized with :
		`b_ru` - constant_initializer(1.0)
		`b_c` - constant_initializer(0.0)
		
		This kernel op implements the following mathematical equations:
		
		```
		x_h_prev = [x, h_prev]
		
		[r_bar u_bar] = x_h_prev * w_ru + b_ru
		
		r = sigmoid(r_bar)
		u = sigmoid(u_bar)
		
		h_prevr = h_prev \circ r
		
		x_h_prevr = [x h_prevr]
		
		c_bar = x_h_prevr * w_c + b_c
		c = tanh(c_bar)
		
		h = (1-u) \circ c + u \circ h_prev
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		  w_ru: A `Tensor`. Must have the same type as `x`.
		  w_c: A `Tensor`. Must have the same type as `x`.
		  b_ru: A `Tensor`. Must have the same type as `x`.
		  b_c: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (r, u, c, h).
		
		  r: A `Tensor`. Has the same type as `x`.
		  u: A `Tensor`. Has the same type as `x`.
		  c: A `Tensor`. Has the same type as `x`.
		  h: A `Tensor`. Has the same type as `x`.
	**/
	static public function gru_block_cell(x:Dynamic, h_prev:Dynamic, w_ru:Dynamic, w_c:Dynamic, b_ru:Dynamic, b_c:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the GRU cell back-propagation for 1 time step.
		
		Args
		    x: Input to the GRU cell.
		    h_prev: State input from the previous GRU cell.
		    w_ru: Weight matrix for the reset and update gate.
		    w_c: Weight matrix for the cell connection gate.
		    b_ru: Bias vector for the reset and update gate.
		    b_c: Bias vector for the cell connection gate.
		    r: Output of the reset gate.
		    u: Output of the update gate.
		    c: Output of the cell connection gate.
		    d_h: Gradients of the h_new wrt to objective function.
		
		Returns
		    d_x: Gradients of the x wrt to objective function.
		    d_h_prev: Gradients of the h wrt to objective function.
		    d_c_bar Gradients of the c_bar wrt to objective function.
		    d_r_bar_u_bar Gradients of the r_bar & u_bar wrt to objective function.
		
		This kernel op implements the following mathematical equations:
		
		Note on notation of the variables:
		
		Concatenation of a and b is represented by a_b
		Element-wise dot product of a and b is represented by ab
		Element-wise dot product is represented by \circ
		Matrix multiplication is represented by *
		
		Additional notes for clarity:
		
		`w_ru` can be segmented into 4 different matrices.
		```
		w_ru = [w_r_x w_u_x
		        w_r_h_prev w_u_h_prev]
		```
		Similarly, `w_c` can be segmented into 2 different matrices.
		```
		w_c = [w_c_x w_c_h_prevr]
		```
		Same goes for biases.
		```
		b_ru = [b_ru_x b_ru_h]
		b_c = [b_c_x b_c_h]
		```
		Another note on notation:
		```
		d_x = d_x_component_1 + d_x_component_2
		
		where d_x_component_1 = d_r_bar * w_r_x^T + d_u_bar * w_r_x^T
		and d_x_component_2 = d_c_bar * w_c_x^T
		
		d_h_prev = d_h_prev_component_1 + d_h_prevr \circ r + d_h \circ u
		where d_h_prev_componenet_1 = d_r_bar * w_r_h_prev^T + d_u_bar * w_r_h_prev^T
		```
		
		Mathematics behind the Gradients below:
		```
		d_c_bar = d_h \circ (1-u) \circ (1-c \circ c)
		d_u_bar = d_h \circ (h-c) \circ u \circ (1-u)
		
		d_r_bar_u_bar = [d_r_bar d_u_bar]
		
		[d_x_component_1 d_h_prev_component_1] = d_r_bar_u_bar * w_ru^T
		
		[d_x_component_2 d_h_prevr] = d_c_bar * w_c^T
		
		d_x = d_x_component_1 + d_x_component_2
		
		d_h_prev = d_h_prev_component_1 + d_h_prevr \circ r + u
		```
		Below calculation is performed in the python wrapper for the Gradients
		(not in the gradient kernel.)
		```
		d_w_ru = x_h_prevr^T * d_c_bar
		
		d_w_c = x_h_prev^T * d_r_bar_u_bar
		
		d_b_ru = sum of d_r_bar_u_bar along axis = 0
		
		d_b_c = sum of d_c_bar along axis = 0
		```
		
		Args:
		  x: A `Tensor`. Must be one of the following types: `float32`.
		  h_prev: A `Tensor`. Must have the same type as `x`.
		  w_ru: A `Tensor`. Must have the same type as `x`.
		  w_c: A `Tensor`. Must have the same type as `x`.
		  b_ru: A `Tensor`. Must have the same type as `x`.
		  b_c: A `Tensor`. Must have the same type as `x`.
		  r: A `Tensor`. Must have the same type as `x`.
		  u: A `Tensor`. Must have the same type as `x`.
		  c: A `Tensor`. Must have the same type as `x`.
		  d_h: A `Tensor`. Must have the same type as `x`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (d_x, d_h_prev, d_c_bar, d_r_bar_u_bar).
		
		  d_x: A `Tensor`. Has the same type as `x`.
		  d_h_prev: A `Tensor`. Has the same type as `x`.
		  d_c_bar: A `Tensor`. Has the same type as `x`.
		  d_r_bar_u_bar: A `Tensor`. Has the same type as `x`.
	**/
	static public function gru_block_cell_grad(x:Dynamic, h_prev:Dynamic, w_ru:Dynamic, w_c:Dynamic, b_ru:Dynamic, b_c:Dynamic, r:Dynamic, u:Dynamic, c:Dynamic, d_h:Dynamic, ?name:Dynamic):Dynamic;
}