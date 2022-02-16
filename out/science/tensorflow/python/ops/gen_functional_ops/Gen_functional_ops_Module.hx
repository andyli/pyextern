/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_functional_ops;
@:pythonImport("tensorflow.python.ops.gen_functional_ops") extern class Gen_functional_ops_Module {
	/**
		An n-way switch statement which calls a single branch function.
		
		    An n-way switch statement, implementing the following:
		    ```
		    switch (branch_index) {
		      case 0:
		        output = branches[0](input);
		        break;
		      case 1:
		        output = branches[1](input);
		        break;
		      ...
		      case [[nbranches-1]]:
		      default:
		        output = branches[nbranches-1](input);
		        break;
		    }
		    ```
		
		Args:
		  branch_index: A `Tensor` of type `int32`.
		    The branch selector, an int32 Tensor.
		  input: A list of `Tensor` objects.
		    A list of input tensors passed to the branch function.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		          A list of functions each of which takes 'inputs' and returns a list of
		          tensors, whose types are the same as what every other branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function Case(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the index of device the op runs.
		
		Given a list of device names, this operation returns the index of the device
		this op runs. The length of the list is returned in two cases:
		(1) Device does not exist in the given device list.
		(2) It is in XLA compilation.
		
		Args:
		  device_names: A list of `strings`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function DeviceIndex(device_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This op is used as a placeholder in If branch functions. It doesn't provide a
		valid output when run, so must either be removed (e.g. replaced with a
		function input) or guaranteed not to be used (e.g. if mirroring an
		intermediate output needed for the gradient computation of the other branch).
		
		Args:
		  dtype: A `tf.DType`. The type of the output.
		  shape: A `tf.TensorShape` or list of `ints`.
		        The purported shape of the output. This is only used for shape inference;
		        the output will not necessarily have this shape. Can be a partial shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function FakeParam(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		```python
		 output = input;
		 for i in range(start, limit, delta)
		   output = body(i, output);
		```
		
		Args:
		  start: A `Tensor` of type `int32`. The lower bound. An int32
		  limit: A `Tensor` of type `int32`. The upper bound. An int32
		  delta: A `Tensor` of type `int32`. The increment. An int32
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  body: A function decorated with @Defun.
		        A function that takes a list of tensors (int32, T) and returns another
		        list of tensors (T).
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function For(start:Dynamic, limit:Dynamic, delta:Dynamic, input:Dynamic, body:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(input) : else_branch(input)
		
		Args:
		  cond: A `Tensor`.
		          A Tensor. If the tensor is a scalar of non-boolean type, the
		          scalar is converted to a boolean according to the
		          following rule: if the scalar is a numerical value, non-zero means
		          `True` and zero means False; if the scalar is a string, non-empty
		          means `True` and empty means `False`. If the tensor is not a scalar,
		          being empty means False and being non-empty means True.
		  input: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  then_branch: A function decorated with @Defun.
		          A function that takes 'inputs' and returns a list of tensors, whose
		          types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		        A function that takes 'inputs' and returns a list of tensors, whose
		        types are the same as what then_branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function If(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		returns `f(inputs)`, where `f`'s body is placed and partitioned.
		
		Asynchronously executes a function, potentially across multiple devices but
		within a single process. The kernel places and partitions a given function's
		underlying graph, and executes each of the partitioned subgraphs as a function.
		
		Args:
		  args: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  f: A function decorated with @Defun.
		          A function that takes 'args', a list of tensors, and returns 'output',
		          another list of tensors. Input and output types are specified by 'Tin'
		          and 'Tout'. The function body of f will be placed and partitioned across
		          devices, setting this op apart from the regular Call op.
		  config: An optional `string`. Defaults to `""`.
		  config_proto: An optional `string`. Defaults to `""`.
		  executor_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function PartitionedCall(args:Dynamic, Tout:Dynamic, f:Dynamic, ?config:Dynamic, ?config_proto:Dynamic, ?executor_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs function `f` on a remote device indicated by `target`.
		
		Args:
		  target: A `Tensor` of type `string`.
		    A fully specified device name where we want to run the function.
		  args: A list of `Tensor` objects. A list of arguments for the function.
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  f: A function decorated with @Defun. The function to run remotely.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function RemoteCall(target:Dynamic, args:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	/**
		returns `f(inputs)`, where `f`'s body is placed and partitioned.
		
		Args:
		  args: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  f: A function decorated with @Defun.
		          A function that takes 'args', a list of tensors, and returns 'output',
		          another list of tensors. Input and output types are specified by 'Tin'
		          and 'Tout'. The function body of f will be placed and partitioned across
		          devices, setting this op apart from the regular Call op. This op is
		          stateful.
		  config: An optional `string`. Defaults to `""`.
		  config_proto: An optional `string`. Defaults to `""`.
		  executor_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function StatefulPartitionedCall(args:Dynamic, Tout:Dynamic, f:Dynamic, ?config:Dynamic, ?config_proto:Dynamic, ?executor_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		An n-way switch statement which calls a single branch function.
		
		    An n-way switch statement, implementing the following:
		    ```
		    switch (branch_index) {
		      case 0:
		        output = branches[0](input);
		        break;
		      case 1:
		        output = branches[1](input);
		        break;
		      ...
		      case [[nbranches-1]]:
		      default:
		        output = branches[nbranches-1](input);
		        break;
		    }
		    ```
		
		    This should only be used when the none of branches has stateful ops.
		
		Args:
		  branch_index: A `Tensor` of type `int32`.
		    The branch selector, an int32 Tensor.
		  input: A list of `Tensor` objects.
		    A list of input tensors passed to the branch function.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		          A list of functions each of which takes 'inputs' and returns a list of
		          tensors, whose types are the same as what every other branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function StatelessCase(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(input) : else_branch(input)
		
		Args:
		  cond: A `Tensor`.
		          A Tensor. If the tensor is a scalar of non-boolean type, the
		          scalar is converted to a boolean according to the
		          following rule: if the scalar is a numerical value, non-zero means
		          `True` and zero means False; if the scalar is a string, non-empty
		          means `True` and empty means `False`. If the tensor is not a scalar,
		          being empty means False and being non-empty means True.
		
		          This should only be used when the if then/else body functions do not
		          have stateful ops.
		  input: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  then_branch: A function decorated with @Defun.
		          A function that takes 'inputs' and returns a list of tensors, whose
		          types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		        A function that takes 'inputs' and returns a list of tensors, whose
		        types are the same as what then_branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function StatelessIf(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		          A function takes 'input' and returns a tensor.  If the tensor is
		          a scalar of non-boolean, the scalar is converted to a boolean
		          according to the following rule: if the scalar is a numerical
		          value, non-zero means True and zero means False; if the scalar is
		          a string, non-empty means True and empty means False. If the
		          tensor is not a scalar, non-emptiness means True and False
		          otherwise.
		
		          This should only be used when the while condition and body functions
		          do not have stateful ops.
		  body: A function decorated with @Defun.
		          A function that takes a list of tensors and returns another
		          list of tensors. Both lists have the same types as specified
		          by T.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function StatelessWhile(input:Dynamic, cond:Dynamic, body:Dynamic, ?output_shapes:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  input: A list of `Tensor` objects. a list of input tensors of size N + M;
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    the type list for the input list.
		  f: A function decorated with @Defun.
		    The function we want to compute the gradient for.
		
		    The function 'f' must be a numerical function which takes N inputs and
		    produces M outputs. Its gradient function 'g', which is computed by
		    this SymbolicGradient op is a function taking N + M inputs and
		    produces N outputs.
		
		    I.e. if we have
		       (y1, y2, ..., y_M) = f(x1, x2, ..., x_N),
		    then, g is
		       (dL/dx1, dL/dx2, ..., dL/dx_N) = g(x1, x2, ..., x_N,
		                                         dL/dy1, dL/dy2, ..., dL/dy_M),
		
		    where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
		    loss function). dL/dx_i is the partial derivative of L with respect
		    to x_i.
		
		    (Needs some math expert to say the comment above better.)
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function SymbolicGradient(input:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts a tensor to a scalar predicate.
		
		Converts a tensor to a scalar predicate with the following rules:
		
		- For 0D tensors, truthiness is determined by comparing against a "zero"
		  value. For numerical types it is the obvious zero. For strings it is the
		  empty string.
		
		- For >0D tensors, truthiness is determined by looking at the number of
		  elements. If has zero elements, then the result is false. Otherwise the
		  result is true.
		
		This matches the behavior of If and While for determining if a tensor counts
		as true/false for a branch condition.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function ToBool(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		          A function takes 'input' and returns a tensor.  If the tensor is
		          a scalar of non-boolean, the scalar is converted to a boolean
		          according to the following rule: if the scalar is a numerical
		          value, non-zero means True and zero means False; if the scalar is
		          a string, non-empty means True and empty means False. If the
		          tensor is not a scalar, non-emptiness means True and False
		          otherwise.
		  body: A function decorated with @Defun.
		          A function that takes a list of tensors and returns another
		          list of tensors. Both lists have the same types as specified
		          by T.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function While(input:Dynamic, cond:Dynamic, body:Dynamic, ?output_shapes:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		```python
		 output = input;
		 for i in range(start, limit, delta)
		   output = body(i, output);
		```
		
		Args:
		  start: A `Tensor` of type `int32`. The lower bound. An int32
		  limit: A `Tensor` of type `int32`. The upper bound. An int32
		  delta: A `Tensor` of type `int32`. The increment. An int32
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  body: A function decorated with @Defun.
		        A function that takes a list of tensors (int32, T) and returns another
		        list of tensors (T).
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function _for(start:Dynamic, limit:Dynamic, delta:Dynamic, input:Dynamic, body:Dynamic, ?name:Dynamic):Dynamic;
	static public function _for_eager_fallback(start:Dynamic, limit:Dynamic, delta:Dynamic, input:Dynamic, body:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(input) : else_branch(input)
		
		Args:
		  cond: A `Tensor`.
		          A Tensor. If the tensor is a scalar of non-boolean type, the
		          scalar is converted to a boolean according to the
		          following rule: if the scalar is a numerical value, non-zero means
		          `True` and zero means False; if the scalar is a string, non-empty
		          means `True` and empty means `False`. If the tensor is not a scalar,
		          being empty means False and being non-empty means True.
		  input: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  then_branch: A function decorated with @Defun.
		          A function that takes 'inputs' and returns a list of tensors, whose
		          types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		        A function that takes 'inputs' and returns a list of tensors, whose
		        types are the same as what then_branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function _if(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function _if_eager_fallback(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		          A function takes 'input' and returns a tensor.  If the tensor is
		          a scalar of non-boolean, the scalar is converted to a boolean
		          according to the following rule: if the scalar is a numerical
		          value, non-zero means True and zero means False; if the scalar is
		          a string, non-empty means True and empty means False. If the
		          tensor is not a scalar, non-emptiness means True and False
		          otherwise.
		  body: A function decorated with @Defun.
		          A function that takes a list of tensors and returns another
		          list of tensors. Both lists have the same types as specified
		          by T.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function _while(input:Dynamic, cond:Dynamic, body:Dynamic, ?output_shapes:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	static public function _while_eager_fallback(input:Dynamic, cond:Dynamic, body:Dynamic, output_shapes:Dynamic, parallel_iterations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An n-way switch statement which calls a single branch function.
		
		    An n-way switch statement, implementing the following:
		    ```
		    switch (branch_index) {
		      case 0:
		        output = branches[0](input);
		        break;
		      case 1:
		        output = branches[1](input);
		        break;
		      ...
		      case [[nbranches-1]]:
		      default:
		        output = branches[nbranches-1](input);
		        break;
		    }
		    ```
		
		Args:
		  branch_index: A `Tensor` of type `int32`.
		    The branch selector, an int32 Tensor.
		  input: A list of `Tensor` objects.
		    A list of input tensors passed to the branch function.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		          A list of functions each of which takes 'inputs' and returns a list of
		          tensors, whose types are the same as what every other branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	@:native("case")
	static public function _case(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function case_eager_fallback(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the index of device the op runs.
		
		Given a list of device names, this operation returns the index of the device
		this op runs. The length of the list is returned in two cases:
		(1) Device does not exist in the given device list.
		(2) It is in XLA compilation.
		
		Args:
		  device_names: A list of `strings`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function device_index(device_names:Dynamic, ?name:Dynamic):Dynamic;
	static public function device_index_eager_fallback(device_names:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		This op is used as a placeholder in If branch functions. It doesn't provide a
		valid output when run, so must either be removed (e.g. replaced with a
		function input) or guaranteed not to be used (e.g. if mirroring an
		intermediate output needed for the gradient computation of the other branch).
		
		Args:
		  dtype: A `tf.DType`. The type of the output.
		  shape: A `tf.TensorShape` or list of `ints`.
		        The purported shape of the output. This is only used for shape inference;
		        the output will not necessarily have this shape. Can be a partial shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function fake_param(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function fake_param_eager_fallback(dtype:Dynamic, shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		returns `f(inputs)`, where `f`'s body is placed and partitioned.
		
		Asynchronously executes a function, potentially across multiple devices but
		within a single process. The kernel places and partitions a given function's
		underlying graph, and executes each of the partitioned subgraphs as a function.
		
		Args:
		  args: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  f: A function decorated with @Defun.
		          A function that takes 'args', a list of tensors, and returns 'output',
		          another list of tensors. Input and output types are specified by 'Tin'
		          and 'Tout'. The function body of f will be placed and partitioned across
		          devices, setting this op apart from the regular Call op.
		  config: An optional `string`. Defaults to `""`.
		  config_proto: An optional `string`. Defaults to `""`.
		  executor_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function partitioned_call(args:Dynamic, Tout:Dynamic, f:Dynamic, ?config:Dynamic, ?config_proto:Dynamic, ?executor_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function partitioned_call_eager_fallback(args:Dynamic, Tout:Dynamic, f:Dynamic, config:Dynamic, config_proto:Dynamic, executor_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Runs function `f` on a remote device indicated by `target`.
		
		Args:
		  target: A `Tensor` of type `string`.
		    A fully specified device name where we want to run the function.
		  args: A list of `Tensor` objects. A list of arguments for the function.
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    The type list for the return values.
		  f: A function decorated with @Defun. The function to run remotely.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function remote_call(target:Dynamic, args:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	static public function remote_call_eager_fallback(target:Dynamic, args:Dynamic, Tout:Dynamic, f:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		returns `f(inputs)`, where `f`'s body is placed and partitioned.
		
		Args:
		  args: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  f: A function decorated with @Defun.
		          A function that takes 'args', a list of tensors, and returns 'output',
		          another list of tensors. Input and output types are specified by 'Tin'
		          and 'Tout'. The function body of f will be placed and partitioned across
		          devices, setting this op apart from the regular Call op. This op is
		          stateful.
		  config: An optional `string`. Defaults to `""`.
		  config_proto: An optional `string`. Defaults to `""`.
		  executor_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function stateful_partitioned_call(args:Dynamic, Tout:Dynamic, f:Dynamic, ?config:Dynamic, ?config_proto:Dynamic, ?executor_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateful_partitioned_call_eager_fallback(args:Dynamic, Tout:Dynamic, f:Dynamic, config:Dynamic, config_proto:Dynamic, executor_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		An n-way switch statement which calls a single branch function.
		
		    An n-way switch statement, implementing the following:
		    ```
		    switch (branch_index) {
		      case 0:
		        output = branches[0](input);
		        break;
		      case 1:
		        output = branches[1](input);
		        break;
		      ...
		      case [[nbranches-1]]:
		      default:
		        output = branches[nbranches-1](input);
		        break;
		    }
		    ```
		
		    This should only be used when the none of branches has stateful ops.
		
		Args:
		  branch_index: A `Tensor` of type `int32`.
		    The branch selector, an int32 Tensor.
		  input: A list of `Tensor` objects.
		    A list of input tensors passed to the branch function.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  branches: A list of functions decorated with @Defun that has length `>= 1`.
		          A list of functions each of which takes 'inputs' and returns a list of
		          tensors, whose types are the same as what every other branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function stateless_case(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_case_eager_fallback(branch_index:Dynamic, input:Dynamic, Tout:Dynamic, branches:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = cond ? then_branch(input) : else_branch(input)
		
		Args:
		  cond: A `Tensor`.
		          A Tensor. If the tensor is a scalar of non-boolean type, the
		          scalar is converted to a boolean according to the
		          following rule: if the scalar is a numerical value, non-zero means
		          `True` and zero means False; if the scalar is a string, non-empty
		          means `True` and empty means `False`. If the tensor is not a scalar,
		          being empty means False and being non-empty means True.
		
		          This should only be used when the if then/else body functions do not
		          have stateful ops.
		  input: A list of `Tensor` objects. A list of input tensors.
		  Tout: A list of `tf.DTypes`. A list of output types.
		  then_branch: A function decorated with @Defun.
		          A function that takes 'inputs' and returns a list of tensors, whose
		          types are the same as what else_branch returns.
		  else_branch: A function decorated with @Defun.
		        A function that takes 'inputs' and returns a list of tensors, whose
		        types are the same as what then_branch returns.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function stateless_if(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?output_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_if_eager_fallback(cond:Dynamic, input:Dynamic, Tout:Dynamic, then_branch:Dynamic, else_branch:Dynamic, output_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		output = input; While (Cond(output)) { output = Body(output) }
		
		Args:
		  input: A list of `Tensor` objects.
		    A list of input tensors whose types are T.
		  cond: A function decorated with @Defun.
		          A function takes 'input' and returns a tensor.  If the tensor is
		          a scalar of non-boolean, the scalar is converted to a boolean
		          according to the following rule: if the scalar is a numerical
		          value, non-zero means True and zero means False; if the scalar is
		          a string, non-empty means True and empty means False. If the
		          tensor is not a scalar, non-emptiness means True and False
		          otherwise.
		
		          This should only be used when the while condition and body functions
		          do not have stateful ops.
		  body: A function decorated with @Defun.
		          A function that takes a list of tensors and returns another
		          list of tensors. Both lists have the same types as specified
		          by T.
		  output_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		  parallel_iterations: An optional `int`. Defaults to `10`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `input`.
	**/
	static public function stateless_while(input:Dynamic, cond:Dynamic, body:Dynamic, ?output_shapes:Dynamic, ?parallel_iterations:Dynamic, ?name:Dynamic):Dynamic;
	static public function stateless_while_eager_fallback(input:Dynamic, cond:Dynamic, body:Dynamic, output_shapes:Dynamic, parallel_iterations:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  input: A list of `Tensor` objects. a list of input tensors of size N + M;
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    the type list for the input list.
		  f: A function decorated with @Defun.
		    The function we want to compute the gradient for.
		
		    The function 'f' must be a numerical function which takes N inputs and
		    produces M outputs. Its gradient function 'g', which is computed by
		    this SymbolicGradient op is a function taking N + M inputs and
		    produces N outputs.
		
		    I.e. if we have
		       (y1, y2, ..., y_M) = f(x1, x2, ..., x_N),
		    then, g is
		       (dL/dx1, dL/dx2, ..., dL/dx_N) = g(x1, x2, ..., x_N,
		                                         dL/dy1, dL/dy2, ..., dL/dy_M),
		
		    where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
		    loss function). dL/dx_i is the partial derivative of L with respect
		    to x_i.
		
		    (Needs some math expert to say the comment above better.)
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function symbolic_gradient(input:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
	static public function symbolic_gradient_eager_fallback(input:Dynamic, Tout:Dynamic, f:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a tensor to a scalar predicate.
		
		Converts a tensor to a scalar predicate with the following rules:
		
		- For 0D tensors, truthiness is determined by comparing against a "zero"
		  value. For numerical types it is the obvious zero. For strings it is the
		  empty string.
		
		- For >0D tensors, truthiness is determined by looking at the number of
		  elements. If has zero elements, then the result is false. Otherwise the
		  result is true.
		
		This matches the behavior of If and While for determining if a tensor counts
		as true/false for a branch condition.
		
		Args:
		  input: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function to_bool(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function to_bool_eager_fallback(input:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}