/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.transform;
@:pythonImport("tensorflow.contrib.graph_editor.transform", "Transformer") extern class Transformer {
	/**
		Transformer temporary data.
		
		An instance of this class hold all the information relevant to a call
		to a transformer instance (that is, a call to __call__). An instance
		is created for the life-time of the __call__ function and is passed as
		argument to the handlers.
	**/
	static public function _Info(transformer:Dynamic, sgv:Dynamic, dst_graph:Dynamic, dst_scope:Dynamic, src_scope:Dynamic):Dynamic;
	/**
		Execute the transformation.
		
		Args:
		  sgv: the source subgraph-view.
		  dst_graph: the destination graph.
		  dst_scope: the destination scope.
		  src_scope: the source scope, which specify the path from which the
		    relative path of the transformed nodes are computed. For instance, if
		    src_scope is a/ and dst_scoped is b/, then the node a/x/y will have a
		    relative path of x/y and will be transformed into b/x/y.
		Returns:
		  The transformed subgraph view.
		Raises:
		  ValueError: if the argumens are invalid. For instance, if the source and
		    destination are the same.
	**/
	public function __call__(sgv:Dynamic, dst_graph:Dynamic, dst_scope:Dynamic, ?src_scope:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Transformer constructor.
		
		The following members can be modified:
		transform_op_handler: handle the transformation of a tf.Operation.
		  This handler defaults to a simple copy.
		assign_collections_handler: handle the assignment of collections.
		  This handler defaults to assigning new collections created under the
		  given name-scope.
		transform_input_handler: handle the transform of the inputs to the given
		  subgraph. This handler defaults to creating placeholders instead of the
		  ops just before the input tensors of the subgraph.
		transform_hidden_input_handler: handle the transform of the hidden inputs of
		  the subgraph, that is, the inputs which are not listed in sgv.inputs.
		  This handler defaults to a transform which keep the same input if the
		  source and destination graphs are the same, otherwise use placeholders.
		transform_original_op_hanlder: handle the transform of original_op. This
		  handler defaults to transforming original_op only if they are in the
		  subgraph, otherwise they are ignored.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Transformer constructor.
		
		The following members can be modified:
		transform_op_handler: handle the transformation of a tf.Operation.
		  This handler defaults to a simple copy.
		assign_collections_handler: handle the assignment of collections.
		  This handler defaults to assigning new collections created under the
		  given name-scope.
		transform_input_handler: handle the transform of the inputs to the given
		  subgraph. This handler defaults to creating placeholders instead of the
		  ops just before the input tensors of the subgraph.
		transform_hidden_input_handler: handle the transform of the hidden inputs of
		  the subgraph, that is, the inputs which are not listed in sgv.inputs.
		  This handler defaults to a transform which keep the same input if the
		  source and destination graphs are the same, otherwise use placeholders.
		transform_original_op_hanlder: handle the transform of original_op. This
		  handler defaults to transforming original_op only if they are in the
		  subgraph, otherwise they are ignored.
	**/
	public function new():Void;
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
		Transform a tf.Operation.
		
		Args:
		  op: the operation to be transformed.
		Returns:
		  The transformed operation.
	**/
	public function _transform_op(op:Dynamic):Dynamic;
	/**
		Transform a subgraph view.
		
		For convenience, a transform operation returns a subgraph view of the
		transformed graph.
		
		Args:
		  sgv: the subgraph to be transformed.
		Returns:
		  The transformed subgraph.
	**/
	public function _transform_sgv(sgv:Dynamic):Dynamic;
	/**
		Transform a tf.Tensor.
		
		Args:
		  t: the tensor to be transformed.
		Returns:
		  The transformed tensor.
	**/
	public function _transform_t(t:Dynamic):Dynamic;
	/**
		Compute a destination name from a source name.
		
		Args:
		  name: the name to be "transformed".
		Returns:
		  the transformed name.
		Raises:
		  ValueError: if the source scope is used (that is, not an empty string)
		    and the source name does not belong to the source scope.
	**/
	public function new_name(name:Dynamic):Dynamic;
}