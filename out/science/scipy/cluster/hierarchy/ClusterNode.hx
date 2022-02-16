/* This file is generated, do not edit! */
package scipy.cluster.hierarchy;
@:pythonImport("scipy.cluster.hierarchy", "ClusterNode") extern class ClusterNode {
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
	public function __eq__(node:Dynamic):Dynamic;
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
	public function __gt__(node:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(id:Dynamic, ?left:Dynamic, ?right:Dynamic, ?dist:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(id:Dynamic, ?left:Dynamic, ?right:Dynamic, ?dist:Dynamic, ?count:Dynamic):Void;
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
	public function __lt__(node:Dynamic):Dynamic;
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
	/**
		The number of leaf nodes (original observations) belonging to
		the cluster node nd. If the target node is a leaf, 1 is
		returned.
		
		Returns
		-------
		get_count : int
		    The number of leaf nodes below the target node.
	**/
	public function get_count():Int;
	/**
		The identifier of the target node.
		
		For ``0 <= i < n``, `i` corresponds to original observation i.
		For ``n <= i < 2n-1``, `i` corresponds to non-singleton cluster formed
		at iteration ``i-n``.
		
		Returns
		-------
		id : int
		    The identifier of the target node.
	**/
	public function get_id():Int;
	/**
		Return a reference to the left child tree object.
		
		Returns
		-------
		left : ClusterNode
		    The left child of the target node. If the node is a leaf,
		    None is returned.
	**/
	public function get_left():Dynamic;
	/**
		Return a reference to the right child tree object.
		
		Returns
		-------
		right : ClusterNode
		    The left child of the target node. If the node is a leaf,
		    None is returned.
	**/
	public function get_right():Dynamic;
	/**
		Return True if the target node is a leaf.
		
		Returns
		-------
		leafness : bool
		    True if the target node is a leaf node.
	**/
	public function is_leaf():Bool;
	/**
		Perform pre-order traversal without recursive function calls.
		
		When a leaf node is first encountered, ``func`` is called with
		the leaf node as its argument, and its result is appended to
		the list.
		
		For example, the statement::
		
		   ids = root.pre_order(lambda x: x.id)
		
		returns a list of the node ids corresponding to the leaf nodes
		of the tree as they appear from left to right.
		
		Parameters
		----------
		func : function
		    Applied to each leaf ClusterNode object in the pre-order traversal.
		    Given the ``i``-th leaf node in the pre-order traversal ``n[i]``,
		    the result of ``func(n[i])`` is stored in ``L[i]``. If not
		    provided, the index of the original observation to which the node
		    corresponds is used.
		
		Returns
		-------
		L : list
		    The pre-order traversal.
	**/
	public function pre_order(?func:Dynamic):Array<Dynamic>;
}