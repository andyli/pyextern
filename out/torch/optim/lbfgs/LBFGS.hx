/* This file is generated, do not edit! */
package torch.optim.lbfgs;
@:pythonImport("torch.optim.lbfgs", "LBFGS") extern class LBFGS {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(params:Dynamic, ?lr:Dynamic, ?max_iter:Dynamic, ?max_eval:Dynamic, ?tolerance_grad:Dynamic, ?tolerance_change:Dynamic, ?history_size:Dynamic, ?line_search_fn:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(params:Dynamic, ?lr:Dynamic, ?max_iter:Dynamic, ?max_eval:Dynamic, ?tolerance_grad:Dynamic, ?tolerance_change:Dynamic, ?history_size:Dynamic, ?line_search_fn:Dynamic):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_grad(step_size:Dynamic, update:Dynamic):Dynamic;
	public function _gather_flat_grad():Dynamic;
	public function _numel():Dynamic;
	/**
		Loads the optimizer state.
		
		Arguments:
		    state_dict (dict): optimizer state. Should be an object returned
		        from a call to :meth:`state_dict`.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Returns the state of the optimizer as a :class:`dict`.
		
		It contains two entries:
		
		* state - a dict holding current optimization state. Its content
		    differs between optimizer classes.
		* param_groups - a dict containig all parameter groups
	**/
	public function state_dict():Dynamic;
	/**
		Performs a single optimization step.
		
		Arguments:
		    closure (callable): A closure that reevaluates the model
		        and returns the loss.
	**/
	public function step(closure:Dynamic):Dynamic;
	/**
		Clears the gradients of all optimized :class:`Variable` s.
	**/
	public function zero_grad():Dynamic;
}