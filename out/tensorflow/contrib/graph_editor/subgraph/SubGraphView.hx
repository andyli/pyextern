/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.subgraph;
@:pythonImport("tensorflow.contrib.graph_editor.subgraph", "SubGraphView") extern class SubGraphView {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a copy of this subgraph.
		
		Note that this class is a "view", copying it only create another view and
		does not copy the underlying part of the tf.Graph.
		
		Returns:
		  A new identical instance of the original subgraph view.
	**/
	public function __copy__():Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Allow Python context to minize the life time of a subgraph view.
		
		A subgraph view is meant to be a lightweight and transient object. A short
		lifetime will alleviate the "out-of-sync" issue mentioned earlier. For that
		reason, a SubGraphView instance can be used within a Python context. For
		example:
		
		from tensorflow.contrib import graph_editor as ge
		with ge.make_sgv(...) as sgv:
		  print(sgv)
		
		Returns:
		  Itself.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(op_name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a subgraph containing the given ops and the "passthrough" tensors.
		
		Args:
		  inside_ops: an object convertible to a list of tf.Operation. This list
		    defines all the operations in the subgraph.
		  passthrough_ts: an object convertible to a list of tf.Tensor. This list
		    define all the "passthrough" tensors. A passthrough tensor is a tensor
		    which goes directly from the input of the subgraph to it output, without
		    any intermediate operations. All the non passthrough tensors are
		    silently ignored.
		Raises:
		  TypeError: if inside_ops cannot be converted to a list of tf.Operation or
		    if passthrough_ts cannot be converted to a list of tf.Tensor.
	**/
	@:native("__init__")
	public function ___init__(?inside_ops:Dynamic, ?passthrough_ts:Dynamic):Dynamic;
	/**
		Create a subgraph containing the given ops and the "passthrough" tensors.
		
		Args:
		  inside_ops: an object convertible to a list of tf.Operation. This list
		    defines all the operations in the subgraph.
		  passthrough_ts: an object convertible to a list of tf.Tensor. This list
		    define all the "passthrough" tensors. A passthrough tensor is a tensor
		    which goes directly from the input of the subgraph to it output, without
		    any intermediate operations. All the non passthrough tensors are
		    silently ignored.
		Raises:
		  TypeError: if inside_ops cannot be converted to a list of tf.Operation or
		    if passthrough_ts cannot be converted to a list of tf.Tensor.
	**/
	public function new(?inside_ops:Dynamic, ?passthrough_ts:Dynamic):Void;
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
		Allows for implicit boolean conversion.
	**/
	public function __nonzero__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Assign other to itself.
		
		Args:
		  other: another subgraph-view.
		Returns:
		  a new instance identical to the original one.
		Raises:
		  TypeError: if other is not an SubGraphView.
	**/
	public function _assign_from(other:Dynamic):Dynamic;
	/**
		Remap in the place the inputs and/or outputs to the default mapping.
		
		Args:
		  remove_input_map: if True the input map is reset to the default one.
		  remove_output_map: if True the output map is reset to the default one.
	**/
	public function _remap_default(?remove_input_map:Dynamic, ?remove_output_map:Dynamic):Dynamic;
	/**
		Remap the inputs of the subgraph in-place.
	**/
	public function _remap_inputs(new_input_indices:Dynamic):Dynamic;
	/**
		Remap the outputs of the subgraph in-place.
	**/
	public function _remap_outputs(new_output_indices:Dynamic):Dynamic;
	/**
		Remap the outputs in place so that all the tensors appears only once.
	**/
	public function _remap_outputs_make_unique():Dynamic;
	/**
		Remap the outputs in place to match the number of consumers.
	**/
	public function _remap_outputs_to_consumers():Dynamic;
	/**
		Remove unused ops in place.
		
		Args:
		  control_inputs: if True, control inputs are used to detect used ops.
		Returns:
		  A new subgraph view which only contains used operations.
	**/
	public function _remove_unused_ops(?control_inputs:Dynamic):Dynamic;
	/**
		The connected input tensors of this subgraph view.
	**/
	public var connected_inputs : Dynamic;
	/**
		The connected output tensors of this subgraph view.
	**/
	public var connected_outputs : Dynamic;
	/**
		Return a Python set of all the consumers of this subgraph view.
	**/
	public function consumers():Dynamic;
	/**
		Return a copy of itself.
		
		Note that this class is a "view", copying it only create another view and
		does not copy the underlying part of the tf.Graph.
		
		Returns:
		  a new instance identical to the original one.
	**/
	public function copy():Dynamic;
	/**
		Return the op named op_name.
		
		Args:
		  op_name: the name to search for
		Returns:
		  The op named op_name.
		Raises:
		  ValueError: if the op_name could not be found.
		  AssertionError: if the name was found multiple time.
	**/
	public function find_op_by_name(op_name:Dynamic):Dynamic;
	/**
		The underlying tf.Graph.
	**/
	public var graph : Dynamic;
	/**
		Find the input index corresponding to the given input tensor t.
		
		Args:
		  t: the input tensor of this subgraph view.
		Returns:
		  the index in the self.inputs list.
		Raises:
		  Error: if t in not an input tensor.
	**/
	public function input_index(t:Dynamic):Dynamic;
	/**
		The input tensors of this subgraph view.
	**/
	public var inputs : Dynamic;
	/**
		Check whether a tensor is passthrough.
	**/
	public function is_passthrough(t:Dynamic):Dynamic;
	/**
		Get an op by its index.
	**/
	public function op(op_id:Dynamic):Dynamic;
	/**
		The operations in this subgraph view.
	**/
	public var ops : Dynamic;
	/**
		Find the output index corresponding to given output tensor t.
		
		Args:
		  t: the output tensor of this subgraph view.
		Returns:
		  the index in the self.outputs list.
		Raises:
		  Error: if t in not an output tensor.
	**/
	public function output_index(t:Dynamic):Dynamic;
	/**
		The output tensors of this subgraph view.
	**/
	public var outputs : Dynamic;
	/**
		The passthrough tensors, going straight from input to output.
	**/
	public var passthroughs : Dynamic;
	/**
		Remap the inputs and outputs of the subgraph.
		
		Note that this is only modifying the view: the underlying tf.Graph is not
		affected.
		
		Args:
		  new_input_indices: an iterable of integers representing a mapping between
		    the old inputs and the new ones. This mapping can be under-complete and
		    must be without repetitions.
		  new_output_indices: an iterable of integers representing a mapping between
		    the old outputs and the new ones. This mapping can be under-complete and
		    can have repetitions.
		Returns:
		  A new modified instance of the original subgraph view with remapped
		    inputs and outputs.
	**/
	public function remap(?new_input_indices:Dynamic, ?new_output_indices:Dynamic):Dynamic;
	/**
		Remap the inputs and/or outputs to the default mapping.
		
		Args:
		  remove_input_map: if True the input map is reset to the default one.
		  remove_output_map: if True the output map is reset to the default one.
		Returns:
		  A new modified instance of the original subgraph view with its
		    input and/or output mapping reset to the default one.
	**/
	public function remap_default(?remove_input_map:Dynamic, ?remove_output_map:Dynamic):Dynamic;
	/**
		Remap the inputs of the subgraph.
		
		If the inputs of the original subgraph are [t0, t1, t2], remapping to [2,0]
		will create a new instance whose inputs is [t2, t0].
		
		Note that this is only modifying the view: the underlying tf.Graph is not
		affected.
		
		Args:
		  new_input_indices: an iterable of integers representing a mapping between
		    the old inputs and the new ones. This mapping can be under-complete and
		    must be without repetitions.
		Returns:
		  A new modified instance of the original subgraph view with remapped
		    inputs.
	**/
	public function remap_inputs(new_input_indices:Dynamic):Dynamic;
	/**
		Remap the output of the subgraph.
		
		If the output of the original subgraph are [t0, t1, t2], remapping to
		[1,1,0] will create a new instance whose outputs is [t1, t1, t0].
		
		Note that this is only modifying the view: the underlying tf.Graph is not
		affected.
		
		Args:
		  new_output_indices: an iterable of integers representing a mapping between
		    the old outputs and the new ones. This mapping can be under-complete and
		    can have repetitions.
		Returns:
		  A new modified instance of the original subgraph view with remapped
		    outputs.
	**/
	public function remap_outputs(new_output_indices:Dynamic):Dynamic;
	/**
		Remap the outputs so that all the tensors appears only once.
	**/
	public function remap_outputs_make_unique():Dynamic;
	/**
		Remap the outputs to match the number of consumers.
	**/
	public function remap_outputs_to_consumers():Dynamic;
	/**
		Remove unused ops.
		
		Args:
		  control_inputs: if True, control inputs are used to detect used ops.
		Returns:
		  A new subgraph view which only contains used operations.
	**/
	public function remove_unused_ops(?control_inputs:Dynamic):Dynamic;
}