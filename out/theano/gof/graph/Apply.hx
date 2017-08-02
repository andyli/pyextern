/* This file is generated, do not edit! */
package theano.gof.graph;
@:pythonImport("theano.gof.graph", "Apply") extern class Apply {
	public function __asapply__():Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(op:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(op:Dynamic, inputs:Dynamic, outputs:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __ne__(other:Dynamic):Dynamic;
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
	static public var __slots__ : Dynamic;
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
		Duplicate this Apply instance with inputs = self.inputs.
		
		Returns
		-------
		object
		    A new Apply instance (or subclass instance) with new outputs.
		
		Notes
		-----
		Tags are copied from self to the returned instance.
	**/
	public function clone():Dynamic;
	/**
		Duplicate this Apply instance in a new graph.
		
		Parameters
		----------
		inputs
		    List of Variable instances to use as inputs.
		strict : bool
		    If True, the type fields of all the inputs must be equal
		    to the current ones (or compatible, for instance Tensor /
		    CudaNdarray of the same dtype and broadcastable patterns,
		    in which case they will be converted into current Type), and
		    returned outputs are guaranteed to have the same types as
		    self.outputs.  If False, then there's no guarantee that the
		    clone's outputs will have the same types as self.outputs,
		    and cloning may not even be possible (it depends on the Op).
		
		Returns
		-------
		object
		    An Apply instance with the same op but different outputs.
	**/
	public function clone_with_new_inputs(inputs:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Returns the default output for this node.
		
		Returns
		-------
		Variable instance
		    An element of self.outputs, typically self.outputs[0].
		
		Notes
		-----
		May raise AttributeError self.op.default_output is out of range, or if
		there are multiple outputs and self.op.default_output does not exist.
	**/
	public function default_output():Dynamic;
	/**
		Return a list of the parents of this node.
		Should return a copy--i.e., modifying the return
		value should not modify the graph structure.
	**/
	public function get_parents():Dynamic;
	/**
		same as len(self.inputs)
	**/
	public var nin : Dynamic;
	/**
		same as len(self.outputs)
	**/
	public var nout : Dynamic;
	/**
		alias for self.default_output()
	**/
	public var out : Dynamic;
	/**
		type to use for the params
	**/
	public var params_type : Dynamic;
	/**
		Returns the params for the node, or NoParams if no params is set.
	**/
	public function run_params():Dynamic;
}