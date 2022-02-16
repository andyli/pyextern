/* This file is generated, do not edit! */
package torch.optim.nadam;
@:pythonImport("torch.optim.nadam", "NAdam") extern class NAdam {
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
	public function ___init__(params:Dynamic, ?lr:Dynamic, ?betas:Dynamic, ?eps:Dynamic, ?weight_decay:Dynamic, ?momentum_decay:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(params:Dynamic, ?lr:Dynamic, ?betas:Dynamic, ?eps:Dynamic, ?weight_decay:Dynamic, ?momentum_decay:Dynamic):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	public function _hook_for_profile():Dynamic;
	/**
		Add a param group to the :class:`Optimizer` s `param_groups`.
		
		This can be useful when fine tuning a pre-trained network as frozen layers can be made
		trainable and added to the :class:`Optimizer` as training progresses.
		
		Args:
		    param_group (dict): Specifies what Tensors should be optimized along with group
		    specific optimization options.
	**/
	public function add_param_group(param_group:Dynamic):Dynamic;
	/**
		Loads the optimizer state.
		
		Args:
		    state_dict (dict): optimizer state. Should be an object returned
		        from a call to :meth:`state_dict`.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Returns the state of the optimizer as a :class:`dict`.
		
		It contains two entries:
		
		* state - a dict holding current optimization state. Its content
		    differs between optimizer classes.
		* param_groups - a list containing all parameter groups where each
		    parameter group is a dict
	**/
	public function state_dict():Dynamic;
	/**
		Performs a single optimization step.
		
		Args:
		    closure (callable, optional): A closure that reevaluates the model
		        and returns the loss.
	**/
	public function step(?closure:Dynamic):Dynamic;
	/**
		Sets the gradients of all optimized :class:`torch.Tensor` s to zero.
		
		Args:
		    set_to_none (bool): instead of setting to zero, set the grads to None.
		        This will in general have lower memory footprint, and can modestly improve performance.
		        However, it changes certain behaviors. For example:
		        1. When the user tries to access a gradient and perform manual ops on it,
		        a None attribute or a Tensor full of 0s will behave differently.
		        2. If the user requests ``zero_grad(set_to_none=True)`` followed by a backward pass, ``.grad``\ s
		        are guaranteed to be None for params that did not receive a gradient.
		        3. ``torch.optim`` optimizers have a different behavior if the gradient is 0 or None
		        (in one case it does the step with a gradient of 0 and in the other it skips
		        the step altogether).
	**/
	public function zero_grad(?set_to_none:Dynamic):Dynamic;
}