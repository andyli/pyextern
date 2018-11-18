/* This file is generated, do not edit! */
package theano.sparse.sharedvar;
@:pythonImport("theano.sparse.sharedvar", "SparseTensorSharedVariable") extern class SparseTensorSharedVariable {
	/**
		Return aliased transpose of self (read-only)
	**/
	public var T : Dynamic;
	static public function __add__(left:Dynamic, right:Dynamic):Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
	static public var __count__ : Dynamic;
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
	static public function __dot__(left:Dynamic, right:Dynamic):Dynamic;
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
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(args:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, type:Dynamic, value:Dynamic, strict:Dynamic, ?allow_downcast:Dynamic, ?container:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, type:Dynamic, value:Dynamic, strict:Dynamic, ?allow_downcast:Dynamic, ?container:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	static public function __mul__(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __radd__(right:Dynamic, left:Dynamic):Dynamic;
	static public function __rdot__(right:Dynamic, left:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a repr of the Variable.
		
		Return a printable name or description of the Variable. If
		config.print_test_value is True it will also print the test_value if
		any.
	**/
	public function __repr__(?firstPass:Dynamic):Dynamic;
	/**
		Return a repr of the test value.
		
		Return a printable representation of the test value. It can be
		overridden by classes with non printable test_value to provide a
		suitable representation of the test_value.
	**/
	public function __repr_test_value__():Dynamic;
	static public function __rmul__(left:Dynamic, right:Dynamic):Dynamic;
	static public function __rsub__(right:Dynamic, left:Dynamic):Dynamic;
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
		Return a str representation of the Variable.
		
		        
	**/
	public function __str__():Dynamic;
	static public function __sub__(left:Dynamic, right:Dynamic):Dynamic;
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
	public function _value_get():Dynamic;
	public function _value_set(new_value:Dynamic):Dynamic;
	static public function append_construction_observer(observer:Dynamic):Dynamic;
	public function astype(dtype:Dynamic):Dynamic;
	/**
		Return a new Variable like self.
		
		Returns
		-------
		Variable instance
		    A new Variable instance (or subclass instance) with no owner or
		    index.
		
		Notes
		-----
		Tags are copied to the returned instance.
		
		Name is copied to the returned instance.
	**/
	public function clone():Dynamic;
	static public var construction_observers : Dynamic;
	static public var container : Dynamic;
	public var dtype : Dynamic;
	/**
		Evaluates this variable.
		
		Parameters
		----------
		inputs_to_values
		    A dictionary mapping theano Variables to values.
		
		Examples
		--------
		
		>>> import numpy as np
		>>> import theano.tensor as T
		>>> x = T.dscalar('x')
		>>> y = T.dscalar('y')
		>>> z = x + y
		>>> np.allclose(z.eval({x : 16.3, y : 12.1}), 28.4)
		True
		
		We passed :func:`eval` a dictionary mapping symbolic theano
		variables to the values to substitute for them, and it returned
		the numerical value of the expression.
		
		Notes
		-----
		
		`eval` will be slow the first time you call it on a variable --
		it needs to call :func:`function` to compile the expression behind
		the scenes. Subsequent calls to :func:`eval` on that same variable
		will be fast, because the variable caches the compiled function.
		
		This way of computing has more overhead than a normal Theano
		function, so don't use it too much in real scripts.
	**/
	public function eval(?inputs_to_values:Dynamic):Dynamic;
	public var format : Dynamic;
	/**
		Return a list of the parents of this node.
		Should return a copy--i.e., modifying the return
		value should not modify the graph structure.
	**/
	public function get_parents():Dynamic;
	/**
		Get the non-symbolic value associated with this SharedVariable.
		
		Parameters
		----------
		borrow : bool
		    True to permit returning of an object aliased to internal memory.
		return_internal_type : bool
		    True to permit the returning of an arbitrary type object used
		    internally to store the shared variable.
		
		Only with borrow=False and return_internal_type=True does this function
		guarantee that you actually get the internal object.
		But in that case, you may get different return types when using
		different compute devices.
	**/
	public function get_value(?borrow:Dynamic, ?return_internal_type:Dynamic):Dynamic;
	public var ndim : Dynamic;
	static public function notify_construction_observers(instance:Dynamic):Dynamic;
	static public function remove_construction_observer(observer:Dynamic):Dynamic;
	/**
		Set the non-symbolic value associated with this SharedVariable.
		
		Parameters
		----------
		borrow : bool
		    True to use the new_value directly, potentially creating problems
		    related to aliased memory.
		
		Changes to this value will be visible to all functions using
		this SharedVariable.
		
		Notes
		-----
		Set_value will work in-place on the GPU, if
		the following conditions are met:
		
		    * The destination on the GPU must be c_contiguous.
		    * The source is on the CPU.
		    * The old value must have the same dtype as the new value
		      (which is a given for now, since only float32 is
		      supported).
		    * The old and new value must have the same shape.
		    * The old value is being completely replaced by the new
		      value (not partially modified, e.g. by replacing some
		      subtensor of it).
		
		It is also worth mentioning that, for efficient transfer to the GPU,
		Theano will make the new data ``c_contiguous``. This can require an
		extra copy of the data on the host.
		
		The inplace on gpu memory work when borrow is either True or False.
	**/
	public function set_value(new_value:Dynamic, ?borrow:Dynamic):Dynamic;
	public var shape : Dynamic;
	public var size : Dynamic;
	public function toarray():Dynamic;
	public var value : Dynamic;
	/**
		Set the values of a shared variable to 0.
		
		Parameters
		----------
		borrow : bbol
		    True to modify the value of a shared variable directly by using
		    its previous value. Potentially this can cause problems
		    regarding to the aliased memory.
		
		Changes done with this function will be visible to all functions using
		this SharedVariable.
	**/
	public function zero(?borrow:Dynamic):Dynamic;
	static public function zeros_like(model:Dynamic):Dynamic;
}