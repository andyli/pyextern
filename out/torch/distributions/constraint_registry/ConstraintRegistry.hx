/* This file is generated, do not edit! */
package torch.distributions.constraint_registry;
@:pythonImport("torch.distributions.constraint_registry", "ConstraintRegistry") extern class ConstraintRegistry {
	/**
		Looks up a transform to constrained space, given a constraint object.
		Usage::
		
		    constraint = Normal.arg_constraints['scale']
		    scale = transform_to(constraint)(torch.zeros(1))  # constrained
		    u = transform_to(constraint).inv(scale)           # unconstrained
		
		Args:
		    constraint (:class:`~torch.distributions.constraints.Constraint`):
		        A constraint object.
		
		Returns:
		    A :class:`~torch.distributions.transforms.Transform` object.
		
		Raises:
		    `NotImplementedError` if no transform has been registered.
	**/
	public function __call__(constraint:Dynamic):Dynamic;
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
		Registers a :class:`~torch.distributions.constraints.Constraint`
		subclass in this registry. Usage::
		
		    @my_registry.register(MyConstraintClass)
		    def construct_transform(constraint):
		        assert isinstance(constraint, MyConstraint)
		        return MyTransform(constraint.arg_constraints)
		
		Args:
		    constraint (subclass of :class:`~torch.distributions.constraints.Constraint`):
		        A subclass of :class:`~torch.distributions.constraints.Constraint`, or
		        a singleton object of the desired class.
		    factory (callable): A callable that inputs a constraint object and returns
		        a  :class:`~torch.distributions.transforms.Transform` object.
	**/
	public function register(constraint:Dynamic, ?factory:Dynamic):Dynamic;
}