/* This file is generated, do not edit! */
package tensorflow.contrib.recurrent.python.ops.recurrent;
@:pythonImport("tensorflow.contrib.recurrent.python.ops.recurrent", "_Recurrent") extern class _Recurrent {
	public function Compute():Dynamic;
	public function _MaybeComputeMaxInputLength(inputs:Dynamic, max_input_length:Dynamic):Dynamic;
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
		RNN helper class.
		
		Args:
		  cell_fn: A python function, which computes:
		     state1, extras = cell_fn(theta, state0, inputs[t, :])
		  cell_grad: A python function which computes:
		     dtheta, dstate0, dinputs[t, :] = cell_grad(
		       theta, state0, inputs[t, :], extras, dstate1)
		  theta: weights. A structure of tensors.
		  state0: initial state. A structure of tensors.
		  inputs: inputs. A structure of tensors.
		  max_input_length: None, or the maximum effective length of the input over
		    all batches. A scalar tensor.
		  extras: A structure of tensors. The 2nd return value of every
		    invocation of cell_fn is a structure of tensors with matching keys
		    and shapes of this `extras`.
		  use_tpu: A boolean indicating whether the computation is mean to
		    run on a TPU.
		  aligned_end: A boolean indicating whether the sequence is aligned at
		    the end.
	**/
	@:native("__init__")
	public function ___init__(cell_fn:Dynamic, cell_grad:Dynamic, theta:Dynamic, state0:Dynamic, inputs:Dynamic, max_input_length:Dynamic, extras:Dynamic, use_tpu:Dynamic, ?aligned_end:Dynamic):Dynamic;
	/**
		RNN helper class.
		
		Args:
		  cell_fn: A python function, which computes:
		     state1, extras = cell_fn(theta, state0, inputs[t, :])
		  cell_grad: A python function which computes:
		     dtheta, dstate0, dinputs[t, :] = cell_grad(
		       theta, state0, inputs[t, :], extras, dstate1)
		  theta: weights. A structure of tensors.
		  state0: initial state. A structure of tensors.
		  inputs: inputs. A structure of tensors.
		  max_input_length: None, or the maximum effective length of the input over
		    all batches. A scalar tensor.
		  extras: A structure of tensors. The 2nd return value of every
		    invocation of cell_fn is a structure of tensors with matching keys
		    and shapes of this `extras`.
		  use_tpu: A boolean indicating whether the computation is mean to
		    run on a TPU.
		  aligned_end: A boolean indicating whether the sequence is aligned at
		    the end.
	**/
	public function new(cell_fn:Dynamic, cell_grad:Dynamic, theta:Dynamic, state0:Dynamic, inputs:Dynamic, max_input_length:Dynamic, extras:Dynamic, use_tpu:Dynamic, ?aligned_end:Dynamic):Void;
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
}