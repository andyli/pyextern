/* This file is generated, do not edit! */
package torch.nn.modules.module;
@:pythonImport("torch.nn.modules.module") extern class Module_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _EXTRA_STATE_KEY_SUFFIX : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _addindent(s_:Dynamic, numSpaces:Dynamic):Dynamic;
	/**
		Defines the computation performed at every call.
		
		Should be overridden by all subclasses.
		
		.. note::
		    Although the recipe for forward pass needs to be defined within
		    this function, one should call the :class:`Module` instance afterwards
		    instead of this since the former takes care of running the
		    registered hooks while the latter silently ignores them.
	**/
	static public function _forward_unimplemented(self:Dynamic, ?input:python.VarArgs<Dynamic>):Dynamic;
	static public var _global_backward_hooks : Dynamic;
	static public var _global_forward_hooks : Dynamic;
	static public var _global_forward_pre_hooks : Dynamic;
	static public var _global_is_full_backward_hook : Dynamic;
	static public function _grad_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Registers a backward hook common to all the modules.
		
		This function is deprecated in favor of
		:func:`torch.nn.modules.module.register_module_full_backward_hook`
		and the behavior of this function will change in future versions.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	static public function register_module_backward_hook(hook:Dynamic):Dynamic;
	/**
		Registers a global forward hook for all the modules
		
		.. warning ::
		
		    This adds global state to the `nn.module` module
		    and it is only intended for debugging/profiling purposes.
		
		The hook will be called every time after :func:`forward` has computed an output.
		It should have the following signature::
		
		    hook(module, input, output) -> None or modified output
		
		The input contains only the positional arguments given to the module.
		Keyword arguments won't be passed to the hooks and only to the ``forward``.
		The hook can modify the output. It can modify the input inplace but
		it will not have effect on forward since this is called after
		:func:`forward` is called.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
		
		This hook will be executed before specific module hooks registered with
		``register_forward_hook``.
	**/
	static public function register_module_forward_hook(hook:Dynamic):Dynamic;
	/**
		Registers a forward pre-hook common to all modules.
		
		.. warning ::
		
		    This adds global state to the `nn.module` module
		    and it is only intended for debugging/profiling purposes.
		
		The hook will be called every time before :func:`forward` is invoked.
		It should have the following signature::
		
		    hook(module, input) -> None or modified input
		
		The input contains only the positional arguments given to the module.
		Keyword arguments won't be passed to the hooks and only to the ``forward``.
		The hook can modify the input. User can either return a tuple or a
		single modified value in the hook. We will wrap the value into a tuple
		if a single value is returned(unless that value is already a tuple).
		
		This hook has precedence over the specific module hooks registered with
		``register_forward_pre_hook``.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	static public function register_module_forward_pre_hook(hook:Dynamic):Dynamic;
	/**
		Registers a backward hook common to all the modules.
		
		.. warning ::
		    This adds global state to the `nn.module` module
		    and it is only intended for debugging/profiling purposes.
		
		The hook will be called every time the gradients with respect to module
		inputs are computed. The hook should have the following signature::
		
		    hook(module, grad_input, grad_output) -> Tensor or None
		
		The :attr:`grad_input` and :attr:`grad_output` are tuples. The hook should
		not modify its arguments, but it can optionally return a new gradient with
		respect to the input that will be used in place of :attr:`grad_input` in
		subsequent computations. :attr:`grad_input` will only correspond to the inputs given
		as positional arguments and all kwarg arguments will not appear in the hook. Entries
		in :attr:`grad_input` and :attr:`grad_output` will be ``None`` for all non-Tensor
		arguments.
		
		For technical reasons, when this hook is applied to a Module, its forward function will
		receive a view of each Tensor passed to the Module. Similarly the caller will receive a view
		of each Tensor returned by the Module's forward function.
		
		Global hooks are called before hooks registered with `register_backward_hook`
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	static public function register_module_full_backward_hook(hook:Dynamic):Dynamic;
}