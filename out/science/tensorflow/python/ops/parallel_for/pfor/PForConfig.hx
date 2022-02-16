/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor", "PForConfig") extern class PForConfig {
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
	public function __eq__(value:Dynamic):Dynamic;
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
		True if some reductions where performed by loop body.
	**/
	public function _has_reductions():Dynamic;
	/**
		Lookups Tensor `t` in the reduction maps.
	**/
	public function _lookup_reduction(t:Dynamic):Dynamic;
	/**
		Set number of pfor iterations.
	**/
	public function _set_iters(iters:Dynamic):Dynamic;
	/**
		Performs reduction `fn` on `args` vectorized across pfor iterations.
		
		Note that `fn` is traced once inside the loop function context. Hence any
		captures or side-effects will happen in that context. Call to the traced
		version of `fn` happens during the construction of the vectorized code.
		
		Note that this currently may not work inside a control flow construct.
		Args:
		  fn: a reduction function. It will be called with arguments that have the
		    same structure as *args but with individual values whose rank may be
		    higher by 1 since they represent loop invariant vectorized versions of
		    the corresponding Tensors in *args.
		  *args: unvectorized Tensors.
		
		Returns:
		  The result of running `fn` on the vectorized versions of `*args`. These
		  outputs will be available as loop invariant values to all the iterations.
	**/
	public function reduce(fn:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Performs a concat reduction on `x` across pfor iterations.
		
		Note that this currently may not work inside a control flow construct.
		Args:
		  x: an unvectorized Tensor.
		
		Returns:
		  A Tensor that has rank one higher than `x`. The value is the vectorized
		  version of `x`, i.e. stacking the value of `x` across different pfor
		  iterations.
	**/
	public function reduce_concat(x:Dynamic):Dynamic;
	/**
		Performs a mean reduction on `x` across pfor iterations.
		
		Note that this currently may not work inside a control flow construct.
		Args:
		  x: an unvectorized Tensor.
		
		Returns:
		  A Tensor that has same rank as `x`. The value is the mean of the values
		  of `x` across the pfor iterations.
	**/
	public function reduce_mean(x:Dynamic):Dynamic;
	/**
		Performs a sum reduction on `x` across pfor iterations.
		
		Note that this currently may not work inside a control flow construct.
		Args:
		  x: an unvectorized Tensor.
		
		Returns:
		  A Tensor that has same rank as `x`. The value is the sum of the values
		  of `x` across the pfor iterations.
	**/
	public function reduce_sum(x:Dynamic):Dynamic;
}