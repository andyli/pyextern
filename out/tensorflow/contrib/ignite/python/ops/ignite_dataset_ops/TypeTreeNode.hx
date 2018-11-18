/* This file is generated, do not edit! */
package tensorflow.contrib.ignite.python.ops.ignite_dataset_ops;
@:pythonImport("tensorflow.contrib.ignite.python.ops.ignite_dataset_ops", "TypeTreeNode") extern class TypeTreeNode {
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
		Constructs a new instance of TypeTreeNode.
		
		Args:
		  name: Name of the object tree node.
		  type_id: Type id of the object tree node.
		  fields: List of fields (children of the object tree node).
		  permutation: Permutation that should be applied to order object children.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, type_id:Dynamic, ?fields:Dynamic, ?permutation:Dynamic):Dynamic;
	/**
		Constructs a new instance of TypeTreeNode.
		
		Args:
		  name: Name of the object tree node.
		  type_id: Type id of the object tree node.
		  fields: List of fields (children of the object tree node).
		  permutation: Permutation that should be applied to order object children.
	**/
	public function new(name:Dynamic, type_id:Dynamic, ?fields:Dynamic, ?permutation:Dynamic):Void;
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
		Returns a list of node types.
	**/
	public function to_flat():Dynamic;
	/**
		Formats a list of leaf node types in pre-order.
	**/
	public function to_flat_rec(flat:Dynamic):Dynamic;
	/**
		Formats the tree object as required by `Dataset.output_classes`.
	**/
	public function to_output_classes():Dynamic;
	/**
		Formats the tree object as required by `Dataset.output_shapes`.
	**/
	public function to_output_shapes():Dynamic;
	/**
		Formats the tree object as required by `Dataset.output_types`.
	**/
	public function to_output_types():Dynamic;
	/**
		Returns a permutation that should be applied to order object leaves.
	**/
	public function to_permutation():Dynamic;
	/**
		Collects nodes in accordance with permutation.
	**/
	public function traversal_permutation_rec(permutation:Dynamic):Dynamic;
	/**
		Collects nodes in pre-order traversal.
	**/
	public function traversal_rec(d:Dynamic, i:Dynamic):Dynamic;
}