/* This file is generated, do not edit! */
package tensorflow.contrib.recurrent.python.ops.recurrent;
@:pythonImport("tensorflow.contrib.recurrent.python.ops.recurrent") extern class Recurrent_Module {
	/**
		Compute a recurrent neural net.
		
		Roughly, Recurrent() computes the following:
		  state = state0
		  for t in inputs' sequence length:
		    state = cell_fn(theta, state, inputs[t, :])
		    accumulate_state[t, :] = state
		  return accumulate_state, state
		
		theta, state, inputs are all structures of tensors.
		
		inputs[t, :] means taking a slice out from every tensor in the inputs.
		
		accumulate_state[t, :] = state means that we stash every tensor in
		'state' into a slice of the corresponding tensor in
		accumulate_state.
		
		cell_fn is a python callable computing (building up a TensorFlow
		graph) the recurrent neural network's one forward step. Two calls of
		cell_fn must describe two identical computations.
		
		By construction, Recurrent()'s backward computation does not access
		any intermediate values computed by cell_fn during forward
		computation. We may extend Recurrent() to support that by taking a
		customized backward function of cell_fn.
		
		Args:
		  theta: weights. A structure of tensors.
		  state0: initial state. A structure of tensors.
		  inputs: inputs. A structure of tensors.
		  cell_fn: A python function, which computes:
		    state1, extras = cell_fn(theta, state0, inputs[t, :])
		  cell_grad: A python function which computes:
		    dtheta, dstate0, dinputs[t, :] = cell_grad(
		      theta, state0, inputs[t, :], extras, dstate1)
		  extras: A structure of tensors. The 2nd return value of every
		    invocation of cell_fn is a structure of tensors with matching keys
		    and shapes of  this `extras`.
		  max_input_length: maximum length of effective input. This is used to
		    truncate the computation if the inputs have been allocated to a
		    larger size. A scalar tensor.
		  use_tpu: whether or not we are on TPU.
		  aligned_end: A boolean indicating whether the sequence is aligned at
		    the end.
		
		Returns:
		  accumulate_state and the final state.
	**/
	static public function Recurrent(theta:Dynamic, state0:Dynamic, inputs:Dynamic, cell_fn:Dynamic, ?cell_grad:Dynamic, ?extras:Dynamic, ?max_input_length:Dynamic, ?use_tpu:Dynamic, ?aligned_end:Dynamic):Dynamic;
	/**
		Adds tensors in `struct_x` with respective tensors in `struct_y`.
		
		Args:
		  struct_x: A struct of tensors.
		  struct_y: A struct of tensors congruent to `struct_x`.
		
		Returns:
		  A struct of tensors. Each element of the returned value
		equals `x + y`, with corresponding values in `struct_x` and `struct_y`.
	**/
	static public function _Add(struct_x:Dynamic, struct_y:Dynamic):Dynamic;
	/**
		Checks that `a` and `b` are nested structures of the same type.
	**/
	static public function _AssertIsCompatible(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Sanitize dxs so that None becomes zeros appropriately.
		
		Args:
		  xs: A list of tensors.
		  dxs: A list of tensors. dxs[i] corresponds to xs[i]'s gradient.
		
		Returns:
		  A structure same as `dxs` with `None` replaced by a zero tensor.
	**/
	static public function _ConvertNoneGradientToZeros(xs:Dynamic, dxs:Dynamic):Dynamic;
	/**
		Returns all tensors' data types in a list.
	**/
	static public function _Dtypes(struct:Dynamic):Dynamic;
	/**
		Creates a set of accumulators for tensors in structure.
		
		Args:
		  slen: The sequence length. A scalar tensor.
		  struct_template: A structure of tensors.
		
		Returns:
		  A structure congruent to `struct_template`. Say ret is a returned
		  dictionary. Then, `ret.key`, a tensor, has the same dtype as
		  `struct_template.key`. The tensor's shape has 1 more dimension
		  than the tensor `struct_template.key`. The extra 0-th dimension is of size
		  `slen`. E.g., if `slen=10` and `struct_template.key`'s shape is `[3, 5]`,
		  then, `ret.key`'s shape is `[10, 3, 5]`.
	**/
	static public function _EmptyAcc(slen:Dynamic, struct_template:Dynamic):Dynamic;
	/**
		Creates a set of empty initialized tensors.
		
		Args:
		  struct: A structure of tensors.
		
		Returns:
		  A struct of tensors. Each tensor has the same shape and dtype as
		  its corresponding tensor in `struct`. And each tensor is initialized.
	**/
	static public function _EmptyLike(struct:Dynamic):Dynamic;
	/**
		Flattens a structure.
	**/
	static public function _Flatten(struct:Dynamic):Dynamic;
	/**
		Returns the gradient function for cell_fn.
		
		Args:
		  cell_fn: The recurrent neural net's cell function.
		  cell_grad: If not None, cell_fn's gradient function.
		
		Returns:
		  Returns cell_grad if not None. Otherwise, assume cell_fn is a python
		  function representing the recurrent neural net's cell function, i.e.,
		    cell_fn: (theta, state0, inputs) -> (state1, extra)
		  returns its default gradient python function, i.e.,
		    cell_grad: (theta, state0, inputs, extras, dstate1) -> (
		                dtheta, dstate0, dinputs)
	**/
	static public function _GetCellGrad(cell_fn:Dynamic, cell_grad:Dynamic):Dynamic;
	/**
		Returns a structure with `x[index]` for each tensor `x` in the structure.
		
		Args:
		  struct: A structure of tensors.
		  index: A scalar integer tensor. Performance is better if `index` is
		    on the host memory.
		
		Returns:
		  A structure of tensors congruent to `struct`.
		  For each key in `ret`, `rets[key] = struct[key][index]`.
	**/
	static public function _Index(struct:Dynamic, index:Dynamic):Dynamic;
	/**
		Returns True only if the time dimension of inputs is 1.
	**/
	static public function _IsSingleTimeStep(inputs:Dynamic, max_input_length:Dynamic):Dynamic;
	/**
		Packs the list of tensors according to the structure.
		
		In the event that `elements` should be a scalar, `struct_template` must
		contain exactly one non-trivial element (for instance, `[[], {'x':elt}]`).
		
		Args:
		  elements: Elements to be packed. A list of tensor, or a single tensor.
		  struct_template: The container structure in which to pack them.
		Returns:
		  A python structure of the same type as `struct_template`, containing
		  `elements` as its contained elements.
	**/
	static public function _Pack(elements:Dynamic, struct_template:Dynamic):Dynamic;
	/**
		Returns the 0-th dim size of tensors in a structure of tensors.
		
		This is the max sequence length according to the shape of the inputs.
		
		Args:
		  struct: A structure of tensors. Every tensor's 0-th dim has the same size.
		
		Returns:
		  A scalar tensor which is the size of 0-th dim of every tensors in struct.
	**/
	static public function _SeqLenDim(struct:Dynamic):Dynamic;
	/**
		Updates t-th row in accumulators.
		
		Args:
		  struct_acc: The accumulators. A structure of tensors.
		  struct_x: The new values. A structure of tensors congruent to `struct_acc`.
		  t: A scalar integer. Performance is better if `t` is on the device
		    memory.
		
		Returns:
		  A structure of tensors. Say, ret is a returned dictionary. Then, for
		  each key, we have:
		    ret[key] = struct_acc[key];
		    ret[key][t, :] = struct_x[key]
	**/
	static public function _Update(struct_acc:Dynamic, struct_x:Dynamic, t:Dynamic):Dynamic;
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
		Applies an inplace update on input x at index i with value v. Aliases x.
		
		If i is None, x and v must be the same shape. Computes
		  x = v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  x[i, :] = v;
		Otherwise, x and v must have the same rank. Computes
		  x[i, :] = v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns x.
	**/
	static public function alias_inplace_update(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}