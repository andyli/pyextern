/* This file is generated, do not edit! */
package tensorflow.python.framework.auto_control_deps;
@:pythonImport("tensorflow.python.framework.auto_control_deps", "AutomaticControlDependencies") extern class AutomaticControlDependencies {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(unused_type:Dynamic, unused_value:Dynamic, unused_traceback:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
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
		Processes a switch node for a resource input.
		
		When tensorflow creates a cond, it creates a control flow context for each
		branch of the cond. Each external tensor accessed by that branch is routed
		through a switch op, which gets created in the graph _after_ the op which
		uses that tensor get created.
		
		If the resource comes from another switch op we process that one first.
		
		_process_switch creates a corresponding merge node for the switch node. This
		merge node is added to the outer control flow context of the switch
		node. We also ensure that:
		
		  1. The switch node executes after the previous op which used the resource
		     tensor
		
		  2. Any op which uses a resource output of the switch node executes before
		     the merge for the switch node.
		
		  3. The next op which uses the input resource to the switch node (which
		     might be another switch node for the other branch of the conditional)
		     will execute after the merge node is done.
		
		  4. The merge node is marked as must_run so it will run even if no
		     subsequent operation uses the resource.
		
		Args:
		  switch_op: the switch op to be processed
		  ops_which_must_run: the set of ops which must run
		  last_op_using_resource_tensor: map from resource tensor to last op using
		    it
		  merge_for_resource: map from resource tensor to merge which must follow
		    all usages of it.
	**/
	public function _process_switch(switch_op:Dynamic, ops_which_must_run:Dynamic, last_op_using_resource_tensor:Dynamic, merge_for_resource:Dynamic):Dynamic;
	/**
		Acts like identity but marks the `Tensor` as a return value.
		
		This will possibly return a copy of the `Tensor`. Usage:
		
		```
		  with AutomaticControlDependencies() as a:
		   ...
		   t = a.mark_as_return(t)
		  _ = ...(t...)  # i.e. it's safe to use t here
		```
		
		Args:
		  tensor: the `Tensor` to be marked
		
		Returns:
		  a copy of the `Tensor`.
	**/
	public function mark_as_return(tensor:Dynamic):Dynamic;
}