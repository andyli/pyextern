/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.transform;
@:pythonImport("tensorflow.contrib.graph_editor.transform", "Transformer") extern class Transformer {
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
		  reuse_dst_scope: if True the dst_scope is re-used if it already exists.
		    Otherwise, the scope is given a unique name based on the one given
		    by appending an underscore followed by a digit (default).
		Returns:
		  A tuple `(sgv, info)` where:
		    `sgv` is the transformed subgraph view;
		    `info` is an instance of TransformerInfo containing
		    information about the transform, including mapping between
		    original and transformed tensors and operations.
		Raises:
		  ValueError: if the arguments are invalid.
	**/
	public function __call__(sgv:Dynamic, dst_graph:Dynamic, dst_scope:Dynamic, ?src_scope:Dynamic, ?reuse_dst_scope:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		transform_op_handler: handle the transformation of a `tf.Operation`.
		  This handler defaults to a simple copy.
		assign_collections_handler: handle the assignment of collections.
		  This handler defaults to assigning new collections created under the
		  given name-scope.
		transform_external_input_handler: handle the transform of the inputs to
		  the given subgraph. This handler defaults to creating placeholders
		  instead of the ops just before the input tensors of the subgraph.
		transform_external_hidden_input_handler: handle the transform of the
		  hidden inputs of the subgraph, that is, the inputs which are not listed
		  in sgv.inputs. This handler defaults to a transform which keep the same
		  input if the source and destination graphs are the same, otherwise
		  use placeholders.
		transform_original_op_handler: handle the transform of original_op. This
		  handler defaults to transforming original_op only if they are in the
		  subgraph, otherwise they are ignored.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Transformer constructor.
		
		The following members can be modified:
		transform_op_handler: handle the transformation of a `tf.Operation`.
		  This handler defaults to a simple copy.
		assign_collections_handler: handle the assignment of collections.
		  This handler defaults to assigning new collections created under the
		  given name-scope.
		transform_external_input_handler: handle the transform of the inputs to
		  the given subgraph. This handler defaults to creating placeholders
		  instead of the ops just before the input tensors of the subgraph.
		transform_external_hidden_input_handler: handle the transform of the
		  hidden inputs of the subgraph, that is, the inputs which are not listed
		  in sgv.inputs. This handler defaults to a transform which keep the same
		  input if the source and destination graphs are the same, otherwise
		  use placeholders.
		transform_original_op_handler: handle the transform of original_op. This
		  handler defaults to transforming original_op only if they are in the
		  subgraph, otherwise they are ignored.
	**/
	public function new():Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Connect the previously copied ops.
	**/
	public function _connect_control_inputs(info:Dynamic):Dynamic;
	/**
		Copy ops without connecting them.
	**/
	public function _copy_ops(info:Dynamic):Dynamic;
	/**
		Reconnects the cyclic tensors.
	**/
	public function _finalize_cycles(info:Dynamic):Dynamic;
	/**
		Transform a subgraph view.
		
		For convenience, a transform operation returns a subgraph view of the
		transformed graph.
		
		Args:
		  info: Temporary information for this transorfm call.
		  sgv: the subgraph to be transformed.
		Returns:
		  The transformed subgraph.
	**/
	public function _transform_sgv(info:Dynamic, sgv:Dynamic):Dynamic;
	/**
		Return tre transformed tensor of `t`.
	**/
	public function _transformed_t(info:Dynamic, t:Dynamic, consumer_op:Dynamic):Dynamic;
}