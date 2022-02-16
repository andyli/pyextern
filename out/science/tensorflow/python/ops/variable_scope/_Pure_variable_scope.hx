/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "_pure_variable_scope") extern class _Pure_variable_scope {
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
		Begins the scope block.
		
		Returns:
		  A VariableScope.
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope, or if reuse is not `None` or `True`.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type_arg:Dynamic, value_arg:Dynamic, traceback_arg:Dynamic):Dynamic;
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
		Creates a context for the variable_scope, see `variable_scope` for docs.
		
		Note: this does not create a name scope.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  reuse: `True` or None, or tf.compat.v1.AUTO_REUSE; if `None`, we inherit
		    the parent scope's reuse flag.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  old_name_scope: the original name scope when re-entering a variable scope.
		  dtype: type of the variables within this scope (defaults to `DT_FLOAT`).
		  use_resource: If False, variables in this scope will be regular Variables.
		    If True, experimental ResourceVariables will be creates instead, with
		    well-defined semantics. Defaults to False (will later change to True).
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
	**/
	@:native("__init__")
	public function ___init__(name_or_scope:Dynamic, ?reuse:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?old_name_scope:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Creates a context for the variable_scope, see `variable_scope` for docs.
		
		Note: this does not create a name scope.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  reuse: `True` or None, or tf.compat.v1.AUTO_REUSE; if `None`, we inherit
		    the parent scope's reuse flag.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  old_name_scope: the original name scope when re-entering a variable scope.
		  dtype: type of the variables within this scope (defaults to `DT_FLOAT`).
		  use_resource: If False, variables in this scope will be regular Variables.
		    If True, experimental ResourceVariables will be creates instead, with
		    well-defined semantics. Defaults to False (will later change to True).
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
	**/
	public function new(name_or_scope:Dynamic, ?reuse:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?old_name_scope:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Void;
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
}