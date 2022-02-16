/* This file is generated, do not edit! */
package torch.cuda.amp.grad_scaler;
@:pythonImport("torch.cuda.amp.grad_scaler", "GradScaler") extern class GradScaler {
	static public var __annotations__ : Dynamic;
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
	public function ___init__(?init_scale:Dynamic, ?growth_factor:Dynamic, ?backoff_factor:Dynamic, ?growth_interval:Dynamic, ?enabled:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?init_scale:Dynamic, ?growth_factor:Dynamic, ?backoff_factor:Dynamic, ?growth_interval:Dynamic, ?enabled:Dynamic):Void;
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
	public function _check_inf_per_device(optimizer:Dynamic):Dynamic;
	public function _check_scale_growth_tracker(funcname:Dynamic):Dynamic;
	public function _found_inf_per_device(optimizer:Dynamic):Dynamic;
	public function _get_growth_tracker():Dynamic;
	public function _get_scale_async():Dynamic;
	public function _lazy_init_scale_growth_tracker(dev:Dynamic):Dynamic;
	public function _maybe_opt_step(optimizer:Dynamic, optimizer_state:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _unscale_grads_(optimizer:Dynamic, inv_scale:Dynamic, found_inf:Dynamic, allow_fp16:Dynamic):Dynamic;
	/**
		Returns a Python float containing the scale backoff factor.
	**/
	public function get_backoff_factor():Dynamic;
	/**
		Returns a Python float containing the scale growth factor.
	**/
	public function get_growth_factor():Dynamic;
	/**
		Returns a Python int containing the growth interval.
	**/
	public function get_growth_interval():Dynamic;
	/**
		Returns a Python float containing the current scale, or 1.0 if scaling is disabled.
		
		.. warning::
		    :meth:`get_scale` incurs a CPU-GPU sync.
	**/
	public function get_scale():Dynamic;
	/**
		Returns a bool indicating whether this instance is enabled.
	**/
	public function is_enabled():Dynamic;
	/**
		Loads the scaler state.  If this instance is disabled, :meth:`load_state_dict` is a no-op.
		
		Args:
		   state_dict(dict): scaler state.  Should be an object returned from a call to :meth:`state_dict`.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Multiplies ('scales') a tensor or list of tensors by the scale factor.
		
		Returns scaled outputs.  If this instance of :class:`GradScaler` is not enabled, outputs are returned
		unmodified.
		
		Args:
		    outputs (Tensor or iterable of Tensors):  Outputs to scale.
	**/
	public function scale(outputs:Dynamic):Dynamic;
	/**
		Args:
		    new_scale (float):  Value to use as the new scale backoff factor.
	**/
	public function set_backoff_factor(new_factor:Dynamic):Dynamic;
	/**
		Args:
		    new_scale (float):  Value to use as the new scale growth factor.
	**/
	public function set_growth_factor(new_factor:Dynamic):Dynamic;
	/**
		Args:
		    new_interval (int):  Value to use as the new growth interval.
	**/
	public function set_growth_interval(new_interval:Dynamic):Dynamic;
	/**
		Returns the state of the scaler as a :class:`dict`.  It contains five entries:
		
		* ``"scale"`` - a Python float containing the current scale
		* ``"growth_factor"`` - a Python float containing the current growth factor
		* ``"backoff_factor"`` - a Python float containing the current backoff factor
		* ``"growth_interval"`` - a Python int containing the current growth interval
		* ``"_growth_tracker"`` - a Python int containing the number of recent consecutive unskipped steps.
		
		If this instance is not enabled, returns an empty dict.
		
		.. note::
		   If you wish to checkpoint the scaler's state after a particular iteration, :meth:`state_dict`
		   should be called after :meth:`update`.
	**/
	public function state_dict():Dynamic;
	/**
		:meth:`step` carries out the following two operations:
		
		1.  Internally invokes ``unscale_(optimizer)`` (unless :meth:`unscale_` was explicitly called for ``optimizer``
		    earlier in the iteration).  As part of the :meth:`unscale_`, gradients are checked for infs/NaNs.
		2.  If no inf/NaN gradients are found, invokes ``optimizer.step()`` using the unscaled
		    gradients.  Otherwise, ``optimizer.step()`` is skipped to avoid corrupting the params.
		
		``*args`` and ``**kwargs`` are forwarded to ``optimizer.step()``.
		
		Returns the return value of ``optimizer.step(*args, **kwargs)``.
		
		Args:
		    optimizer (torch.optim.Optimizer):  Optimizer that applies the gradients.
		    args:  Any arguments.
		    kwargs:  Any keyword arguments.
		
		.. warning::
		    Closure use is not currently supported.
	**/
	public function step(optimizer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Divides ("unscales") the optimizer's gradient tensors by the scale factor.
		
		:meth:`unscale_` is optional, serving cases where you need to
		:ref:`modify or inspect gradients<working-with-unscaled-gradients>`
		between the backward pass(es) and :meth:`step`.
		If :meth:`unscale_` is not called explicitly,  gradients will be unscaled  automatically during :meth:`step`.
		
		Simple example, using :meth:`unscale_` to enable clipping of unscaled gradients::
		
		    ...
		    scaler.scale(loss).backward()
		    scaler.unscale_(optimizer)
		    torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm)
		    scaler.step(optimizer)
		    scaler.update()
		
		Args:
		    optimizer (torch.optim.Optimizer):  Optimizer that owns the gradients to be unscaled.
		
		.. note::
		    :meth:`unscale_` does not incur a CPU-GPU sync.
		
		.. warning::
		    :meth:`unscale_` should only be called once per optimizer per :meth:`step` call,
		    and only after all gradients for that optimizer's assigned parameters have been accumulated.
		    Calling :meth:`unscale_` twice for a given optimizer between each :meth:`step` triggers a RuntimeError.
		
		.. warning::
		    :meth:`unscale_` may unscale sparse gradients out of place, replacing the ``.grad`` attribute.
	**/
	public function unscale_(optimizer:Dynamic):Dynamic;
	/**
		Updates the scale factor.
		
		If any optimizer steps were skipped the scale is multiplied by ``backoff_factor``
		to reduce it. If ``growth_interval`` unskipped iterations occurred consecutively,
		the scale is multiplied by ``growth_factor`` to increase it.
		
		Passing ``new_scale`` sets the new scale value manually. (``new_scale`` is not
		used directly, it's used to fill GradScaler's internal scale tensor. So if
		``new_scale`` was a tensor, later in-place changes to that tensor will not further
		affect the scale GradScaler uses internally.)
		
		Args:
		    new_scale (float or :class:`torch.cuda.FloatTensor`, optional, default=None):  New scale factor.
		
		.. warning::
		    :meth:`update` should only be called at the end of the iteration, after ``scaler.step(optimizer)`` has
		    been invoked for all optimizers used this iteration.
	**/
	public function update(?new_scale:Dynamic):Dynamic;
}