/* This file is generated, do not edit! */
package theano.scalar.basic;
@:pythonImport("theano.scalar.basic", "ScalarVariable") extern class ScalarVariable {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
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
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
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
	public function ___init__(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
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
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
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
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(other:Dynamic):Dynamic;
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
	/**
		Return a list of the parents of this node.
		Should return a copy--i.e., modifying the return
		value should not modify the graph structure.
	**/
	public function get_parents():Dynamic;
	static public var ndim : Dynamic;
	static public function notify_construction_observers(instance:Dynamic):Dynamic;
	public function ones_like(?dtype:Dynamic):Dynamic;
	static public function remove_construction_observer(observer:Dynamic):Dynamic;
	public function zeros_like(?dtype:Dynamic):Dynamic;
}