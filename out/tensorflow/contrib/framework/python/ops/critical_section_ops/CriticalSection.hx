/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.critical_section_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.critical_section_ops", "CriticalSection") extern class CriticalSection {
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
		Creates a critical section.
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic, ?shared_name:Dynamic, ?critical_section_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Creates a critical section.
	**/
	public function new(?name:Dynamic, ?shared_name:Dynamic, ?critical_section_def:Dynamic, ?import_scope:Dynamic):Void;
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
		To avoid deadlocks, all args must be executed before lock_op.
	**/
	public function _add_control_dependencies_to_lock(created_ops:Dynamic, lock_op:Dynamic):Dynamic;
	/**
		Raise if captured_resources are accessed by another CriticalSection.
		
		Args:
		  captured_resources: Set of tensors of type resource.
		  exclusive_resource_access: Whether this execution requires exclusive
		    resource access.
		
		Raises:
		  ValueError: If any tensors in `captured_resources` are also accessed
		    by another `CriticalSection`, and at least one of them requires
		    exclusive resource access.
	**/
	public function _check_multiple_access_to_resources(captured_resources:Dynamic, exclusive_resource_access:Dynamic):Dynamic;
	/**
		Initialize the CriticalSection from constructor arguments.
	**/
	public function _init_from_args(name:Dynamic, shared_name:Dynamic):Dynamic;
	public function _init_from_proto(critical_section_def:Dynamic, import_scope:Dynamic):Dynamic;
	/**
		Check if the tensor `x` is the same Mutex as `self._handle`.
	**/
	public function _is_self_handle(x:Dynamic):Dynamic;
	/**
		Execute function `fn(*args, **kwargs)` inside the CriticalSection.
		
		Args:
		  fn: The function to execute.  Must return at least one tensor.
		  *args: Additional positional arguments to `fn`.
		  **kwargs: Additional keyword arguments to `fn`.
		    Several keywords are reserved for `execute`.  These are:
		
		    - name; The name to use when creating the execute operation.
		    - exclusive_resource_access; Whether the resources required by
		      `fn` should be exclusive to this `CriticalSection`.  Default: `True`.
		      You may want to set this to `False` if you will be accessing a
		      resource in read-only mode in two different CriticalSections.
		
		Returns:
		  The tensors returned from `fn(*args, **kwargs)`.
		
		Raises:
		  ValueError: If `fn` attempts to lock this `CriticalSection` in any nested
		    or lazy way that may cause a deadlock.
		  ValueError: If `exclusive_resource_access` is not provided (is `True`) and
		    another `CriticalSection` has an execution requesting the same
		    resources as in `*args`, `**kwargs`, and any additionally captured
		    inputs in `fn`.  Note, even if `exclusive_resource_access` is `True`,
		    if another execution in another `CriticalSection` was created without
		    `exclusive_resource_access=True`, a `ValueError` will be raised.
	**/
	public function execute(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var name : Dynamic;
}