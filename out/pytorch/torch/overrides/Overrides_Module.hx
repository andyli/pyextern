/* This file is generated, do not edit! */
package torch.overrides;
@:pythonImport("torch.overrides") extern class Overrides_Module {
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
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a list of arguments on which to call __torch_function__.
		
		Checks arguments in relevant_args for __torch_function__ implementations,
		storing references to the arguments and their types in overloaded_args and
		overloaded_types in order of calling precedence. Only distinct types are
		considered. If a type is a subclass of another type it will have higher
		precedence, otherwise the precedence order is the same as the order of
		arguments in relevant_args, that is, from left-to-right in the argument list.
		
		The precedence-determining algorithm implemented in this function is
		described in `NEP-0018`_.
		
		See torch::append_overloaded_arg for the equivalent function in the C++
		implementation.
		
		Parameters
		----------
		relevant_args : iterable of array-like
		    Iterable of array-like arguments to check for __torch_function__
		    methods.
		
		Returns
		-------
		overloaded_args : list
		    Arguments from relevant_args on which to call __torch_function__
		    methods, in the order in which they should be called.
		
		.. _NEP-0018:
		   https://numpy.org/neps/nep-0018-array-function-protocol.html
	**/
	static public function _get_overloaded_args(relevant_args:Dynamic):Array<Dynamic>;
	/**
		Returns a set of the overridable methods on ``torch.Tensor`` 
	**/
	static public function _get_tensor_methods():Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function _has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` for single inputs.
		Instead of:
		  `has_torch_function((t,))`
		call:
		  `has_torch_function_unary(t)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function _has_torch_function_unary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` that skips tuple creation.
		
		This uses the METH_FASTCALL protocol introduced in Python 3.7; for 3.6
		and before it has roughly equivilent performance compared to
		`has_torch_function`.
		
		Instead of:
		  `has_torch_function((a, b))`
		call:
		  `has_torch_function_variadic(a, b)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function _has_torch_function_variadic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return public functions that do not wrap in a subclass when invoked by
		the default ``Tensor.__torch_function__`` that preserves subclasses.  Typically,
		these functions represent field accesses (i.e., retrieving a Tensor that
		is stored somewhere on the Tensor) as opposed to computation.  Users of
		these functions expect object identity to be preserved over multiple accesses
		(e.g., ``a.grad is a.grad``) which cannot be upheld if we're wrapping on
		the fly every time (furthermore, the tensor stored here might already be
		the subclass, in which case wrapping really ought not to happen).
		
		Not ALL property accessors have this property; for example ``Tensor.T`` actually
		just creates a new transposed tensor on the fly, and so we SHOULD interpose on
		these calls (you need to check the implementation of the function to see if
		this is the case or not).  Additionally, if a property accessor doesn't return a Tensor,
		it doesn't have to be on this list (though it is harmless if it is).
	**/
	static public function get_default_nowrap_functions():Dynamic;
	/**
		Return public functions that cannot be overridden by ``__torch_function__``.
		
		Returns
		-------
		Set[Callable]
		    A tuple of functions that are publicly available in the torch API but cannot
		    be overridden with ``__torch_function__``. Mostly this is because none of the
		    arguments of these functions are tensors or tensor-likes.
		
		Examples
		--------
		>>> torch.Tensor.as_subclass in torch.overrides.get_ignored_functions()
		True
		>>> torch.add in torch.overrides.get_ignored_functions()
		False
	**/
	static public function get_ignored_functions():Dynamic;
	/**
		List functions that are overridable via __torch_function__
		
		Returns
		-------
		Dict[Any, List[Callable]]
		    A dictionary that maps namespaces that contain overridable functions
		    to functions in that namespace that can be overridden.
	**/
	static public function get_overridable_functions():Dynamic;
	/**
		Return a dict containing dummy overrides for all overridable functions
		
		Returns
		-------
		Dict[Callable, Callable]
		    A dictionary that maps overridable functions in the PyTorch API to
		    lambda functions that have the same signature as the real function
		    and unconditionally return -1. These lambda functions are useful
		    for testing API coverage for a type that defines ``__torch_function__``.
		
		Examples
		--------
		>>> import inspect
		>>> my_add = torch.overrides.get_testing_overrides()[torch.add]
		>>> inspect.signature(my_add)
		<Signature (input, other, out=None)>
	**/
	static public function get_testing_overrides():Dynamic;
	/**
		Implement a function with checks for ``__torch_function__`` overrides.
		
		See torch::autograd::handle_torch_function for the equivalent of this
		function in the C++ implementation.
		
		Arguments
		---------
		public_api : function
		    Function exposed by the public torch API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __torch_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : tuple
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		object
		    Result from calling ``implementation`` or an ``__torch_function__``
		    method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
		
		Example
		-------
		>>> def func(a):
		...     if type(a) is not torch.Tensor:  # This will make func dispatchable by __torch_function__
		...         return handle_torch_function(func, (a,), a)
		...     return a + 0
	**/
	static public function handle_torch_function(public_api:Dynamic, relevant_args:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` for single inputs.
		Instead of:
		  `has_torch_function((t,))`
		call:
		  `has_torch_function_unary(t)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_unary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` that skips tuple creation.
		
		This uses the METH_FASTCALL protocol introduced in Python 3.7; for 3.6
		and before it has roughly equivilent performance compared to
		`has_torch_function`.
		
		Instead of:
		  `has_torch_function((a, b))`
		call:
		  `has_torch_function_variadic(a, b)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_variadic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns ``True`` if the passed-in input is a Tensor-like.
		
		Currently, this occurs whenever there's a ``__torch_function__``
		attribute on the type of the input.
		
		Examples
		--------
		A subclass of tensor is generally a Tensor-like.
		
		>>> class SubTensor(torch.Tensor): ...
		>>> is_tensor_like(SubTensor([0]))
		True
		
		Built-in or user types aren't usually Tensor-like.
		
		>>> is_tensor_like(6)
		False
		>>> is_tensor_like(None)
		False
		>>> class NotATensor: ...
		>>> is_tensor_like(NotATensor())
		False
		
		But, they can be made Tensor-like by implementing __torch_function__.
		
		>>> class TensorLike:
		...     @classmethod
		...     def __torch_function__(cls, func, types, args, kwargs):
		...         return -1
		>>> is_tensor_like(TensorLike())
		True
	**/
	static public function is_tensor_like(inp:Dynamic):Dynamic;
	/**
		Returns True if the function passed in is a handler for a
		method or property belonging to ``torch.Tensor``, as passed
		into ``__torch_function__``.
		
		.. note::
		   For properties, their ``__get__`` method must be passed in.
		
		This may be needed, in particular, for the following reasons:
		
		1. Methods/properties sometimes don't contain a `__module__` slot.
		2. They require that the first passed-in argument is an instance
		   of ``torch.Tensor``.
		
		Examples
		--------
		>>> is_tensor_method_or_property(torch.Tensor.add)
		True
		>>> is_tensor_method_or_property(torch.add)
		False
	**/
	static public function is_tensor_method_or_property(func:Dynamic):Dynamic;
	/**
		Wraps a given function with ``__torch_function__`` -related functionality.
		
		Parameters
		----------
		dispatcher: Callable
		    A callable that returns an iterable of Tensor-likes passed into the function.
		
		Note
		----
		This decorator may reduce the performance of your code. Generally, it's enough to express
		your code as a series of functions that, themselves, support __torch_function__. If you
		find yourself in the rare situation where this is not the case, e.g. if you're wrapping a
		low-level library and you also need it to work for Tensor-likes, then this function is available.
		
		Examples
		--------
		>>> def dispatcher(a): # Must have the same signature as func
		...     return (a,)
		>>> @torch.overrides.wrap_torch_function(dispatcher)
		>>> def func(a): # This will make func dispatchable by __torch_function__
		...     return a + 0
	**/
	static public function wrap_torch_function(dispatcher:Dynamic):Dynamic;
}