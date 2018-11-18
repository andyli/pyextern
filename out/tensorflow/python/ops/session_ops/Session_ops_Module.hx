/* This file is generated, do not edit! */
package tensorflow.python.ops.session_ops;
@:pythonImport("tensorflow.python.ops.session_ops") extern class Session_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a deletion subgraph for this handle.
	**/
	static public function _get_handle_deleter(graph:Dynamic, deleter_key:Dynamic, handle:Dynamic):Dynamic;
	static public function _get_handle_feeder(graph:Dynamic, feeder:Dynamic):Dynamic;
	/**
		Return a move subgraph for this pair of feeder and handle.
	**/
	static public function _get_handle_mover(graph:Dynamic, feeder:Dynamic, handle:Dynamic):Dynamic;
	/**
		Return a read subgraph for this handle.
	**/
	static public function _get_handle_reader(graph:Dynamic, handle:Dynamic, dtype:Dynamic):Dynamic;
	static public function _register_handle_feeder(graph:Dynamic, feeder:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Delete the tensor for the given tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Delete the tensor of a given tensor handle. The tensor is produced
		in a previous run() and stored in the state of the session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of graph elements. The first is a placeholder for feeding a
		  tensor handle and the second is a deletion operation.
	**/
	static public function delete_session_tensor(handle:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Encode a ResourceHandle proto as custom numpy struct type.
	**/
	static public function encode_resource_handle(resource_handle:Dynamic):Dynamic;
	/**
		Return the handle of `data`.
		
		This is EXPERIMENTAL and subject to change.
		
		Keep `data` "in-place" in the runtime and create a handle that can be
		used to retrieve `data` in a subsequent run().
		
		Combined with `get_session_tensor`, we can keep a tensor produced in
		one run call in place, and use it as the input in a future run call.
		
		Args:
		  data: A tensor to be stored in the session.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A scalar string tensor representing a unique handle for `data`.
		
		Raises:
		  TypeError: if `data` is not a Tensor.
		
		Example:
		
		```python
		c = tf.multiply(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_handle(data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get the tensor of type `dtype` by feeding a tensor handle.
		
		This is EXPERIMENTAL and subject to change.
		
		Get the value of the tensor from a tensor handle. The tensor
		is produced in a previous run() and stored in the state of the
		session.
		
		Args:
		  handle: The string representation of a persistent tensor handle.
		  dtype: The type of the output tensor.
		  name: Optional name prefix for the return tensor.
		
		Returns:
		  A pair of tensors. The first is a placeholder for feeding a
		  tensor handle and the second is the tensor in the session state
		  keyed by the tensor handle.
		
		Example:
		
		```python
		c = tf.multiply(a, b)
		h = tf.get_session_handle(c)
		h = sess.run(h)
		
		p, a = tf.get_session_tensor(h.handle, tf.float32)
		b = tf.multiply(a, 10)
		c = sess.run(b, feed_dict={p: h.handle})
		```
	**/
	static public function get_session_tensor(handle:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}