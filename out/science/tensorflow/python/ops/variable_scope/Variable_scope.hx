/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "variable_scope") extern class Variable_scope {
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
		Initialize the context manager.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  default_name: The default name to use if the `name_or_scope` argument is
		    `None`, this name will be uniquified. If name_or_scope is provided it
		    won't be used and therefore it is not required and can be None.
		  values: The list of `Tensor` arguments that are passed to the op function.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  reuse: `True`, None, or tf.compat.v1.AUTO_REUSE; if `True`, we go into
		    reuse mode for this scope as well as all sub-scopes; if
		    tf.compat.v1.AUTO_REUSE, we create variables if they do not exist, and
		    return them otherwise; if None, we inherit the parent scope's reuse
		    flag. When eager execution is enabled, new variables are always created
		    unless an EagerVariableStore or template is currently active.
		  dtype: type of variables created in this scope (defaults to the type in
		    the passed scope, or inherited from parent scope).
		  use_resource: If False, all variables will be regular Variables. If True,
		    experimental ResourceVariables with well-defined semantics will be used
		    instead. Defaults to False (will later change to True). When eager
		    execution is enabled this argument is always forced to be True.
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
		  auxiliary_name_scope: If `True`, we create an auxiliary name scope with
		    the scope. If `False`, we don't create it. Note that the argument is not
		    inherited, and it only takes effect for once when creating. You should
		    only use it for re-entering a premade variable scope.
		
		Returns:
		  A scope that can be captured and reused.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	@:native("__init__")
	public function ___init__(name_or_scope:Dynamic, ?default_name:Dynamic, ?values:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic, ?auxiliary_name_scope:Dynamic):Dynamic;
	/**
		Initialize the context manager.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  default_name: The default name to use if the `name_or_scope` argument is
		    `None`, this name will be uniquified. If name_or_scope is provided it
		    won't be used and therefore it is not required and can be None.
		  values: The list of `Tensor` arguments that are passed to the op function.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  reuse: `True`, None, or tf.compat.v1.AUTO_REUSE; if `True`, we go into
		    reuse mode for this scope as well as all sub-scopes; if
		    tf.compat.v1.AUTO_REUSE, we create variables if they do not exist, and
		    return them otherwise; if None, we inherit the parent scope's reuse
		    flag. When eager execution is enabled, new variables are always created
		    unless an EagerVariableStore or template is currently active.
		  dtype: type of variables created in this scope (defaults to the type in
		    the passed scope, or inherited from parent scope).
		  use_resource: If False, all variables will be regular Variables. If True,
		    experimental ResourceVariables with well-defined semantics will be used
		    instead. Defaults to False (will later change to True). When eager
		    execution is enabled this argument is always forced to be True.
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
		  auxiliary_name_scope: If `True`, we create an auxiliary name scope with
		    the scope. If `False`, we don't create it. Note that the argument is not
		    inherited, and it only takes effect for once when creating. You should
		    only use it for re-entering a premade variable scope.
		
		Returns:
		  A scope that can be captured and reused.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	public function new(name_or_scope:Dynamic, ?default_name:Dynamic, ?values:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic, ?auxiliary_name_scope:Dynamic):Void;
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
	/**
		Enters the context manager when there is no cached scope yet.
		
		Returns:
		  The entered variable scope.
		
		Raises:
		  TypeError: A wrong type is passed as `scope` at __init__().
		  ValueError: `reuse` is incorrectly set at __init__().
	**/
	public function _enter_scope_uncached():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}