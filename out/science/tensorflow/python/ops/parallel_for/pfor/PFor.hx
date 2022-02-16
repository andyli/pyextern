/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor", "PFor") extern class PFor {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates an object to rewrite a parallel-for loop.
		
		Args:
		  loop_var: ops.Tensor output of a Placeholder operation. The value should
		    be an int32 scalar representing the loop iteration number.
		  loop_len: A scalar or scalar Tensor representing the number of iterations
		    the loop is run for.
		  pfor_ops: List of all ops inside the loop body.
		  fallback_to_while_loop: If True, on failure to vectorize an op, a while
		    loop is used to sequentially execute that op.
		  all_indices: If not None, an int32 vector with size `loop_len`
		    representing the iteration ids that are still active. These values
		    should be unique and sorted. However they may not be contiguous. This is
		    typically the case when inside a control flow construct which has
		    partitioned the indices of the iterations that are being converted.
		  all_indices_partitioned: If True, this object is being constructed from a
		    control flow construct where not all the pfor iterations are guaranteed
		    to be active.
		  pfor_config: PForConfig object used while constructing the loop body.
	**/
	@:native("__init__")
	public function ___init__(loop_var:Dynamic, loop_len:Dynamic, pfor_ops:Dynamic, fallback_to_while_loop:Dynamic, ?all_indices:Dynamic, ?all_indices_partitioned:Dynamic, ?pfor_config:Dynamic):Dynamic;
	/**
		Creates an object to rewrite a parallel-for loop.
		
		Args:
		  loop_var: ops.Tensor output of a Placeholder operation. The value should
		    be an int32 scalar representing the loop iteration number.
		  loop_len: A scalar or scalar Tensor representing the number of iterations
		    the loop is run for.
		  pfor_ops: List of all ops inside the loop body.
		  fallback_to_while_loop: If True, on failure to vectorize an op, a while
		    loop is used to sequentially execute that op.
		  all_indices: If not None, an int32 vector with size `loop_len`
		    representing the iteration ids that are still active. These values
		    should be unique and sorted. However they may not be contiguous. This is
		    typically the case when inside a control flow construct which has
		    partitioned the indices of the iterations that are being converted.
		  all_indices_partitioned: If True, this object is being constructed from a
		    control flow construct where not all the pfor iterations are guaranteed
		    to be active.
		  pfor_config: PForConfig object used while constructing the loop body.
	**/
	public function new(loop_var:Dynamic, loop_len:Dynamic, pfor_ops:Dynamic, fallback_to_while_loop:Dynamic, ?all_indices:Dynamic, ?all_indices_partitioned:Dynamic, ?pfor_config:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_conversion(old_output:Dynamic, new_output:Dynamic):Dynamic;
	public function _convert_helper(op_or_tensor:Dynamic):Dynamic;
	public function _convert_reduction(y:Dynamic):Dynamic;
	/**
		Returns the converted value corresponding to SparseTensor y.
		
		For SparseTensors, instead of stacking the component tensors separately,
		resulting in component tensors with shapes (N, m, rank), (N, m), and (N,
		rank) respectively for indices, values, and dense_shape (where N is the loop
		length and m is the number of sparse tensor values per loop iter), we want
		to logically stack the SparseTensors, to create a SparseTensor whose
		components are size (N * m, rank + 1), (N * m, ), and (rank + 1,)
		respectively.
		
		Here, we try to get the conversion of each component tensor.
		If the tensors are stacked via a sparse conversion, return the resulting
		SparseTensor composed of the converted components. Otherwise, the component
		tensors are either unstacked or stacked naively. In the latter case, we
		unstack the component tensors to reform loop_len SparseTensor elements,
		then correctly batch them.
		
		The unstacked tensors must have the same rank. Each dimension of each
		SparseTensor will expand to be the largest among all SparseTensor elements
		for that dimension. For example, if there are N SparseTensors of rank 3
		being stacked, with N dense shapes, where the i_th shape is (x_i, y_i, z_i),
		the new dense shape will be (N, max_i(x_i), max_i(y_i), max_i(z_i)).
		
		Args:
		  y: A tf.sparse.SparseTensor.
		
		Returns:
		  A tf.sparse.SparseTensor that is the converted value corresponding to y.
	**/
	public function _convert_sparse(y:Dynamic):Dynamic;
	public function _restack_sparse_tensor_logically(indices:Dynamic, values:Dynamic, shape:Dynamic):Dynamic;
	/**
		Given a wrapped tensor, unwrap if stacked. Otherwise, tiles it.
	**/
	public function _unwrap_or_tile(wrapped_tensor:Dynamic):Dynamic;
	/**
		True if t is not a conversion of itself.
	**/
	public function _was_converted(t:Dynamic):Dynamic;
	/**
		all_indices_partitioned property.
		
		Returns:
		  True if we are inside a control flow construct and not all pfor iterations
		  may be active.
	**/
	public var all_indices_partitioned : Dynamic;
	/**
		Returns the converted value corresponding to y.
		
		Args:
		  y: A ops.Tensor or a ops.Operation object. If latter, y should not have
		    any outputs.
		
		Returns:
		  If y does not need to be converted, it returns y as is. Else it returns
		  the "converted value" corresponding to y.
	**/
	public function convert(y:Dynamic):Dynamic;
	public var fallback_to_while_loop : Dynamic;
	/**
		Returns a single element vector whose value is number of iterations.
	**/
	public var loop_len_vector : Dynamic;
	/**
		Returns placeholder loop variable.
	**/
	public var loop_var : Dynamic;
	/**
		True if op was created inside the pfor loop body.
	**/
	public function op_is_inside_loop(op:Dynamic):Dynamic;
	public var pfor_config : Dynamic;
	public var pfor_ops : Dynamic;
}