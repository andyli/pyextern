/* This file is generated, do not edit! */
package torch.futures;
@:pythonImport("torch.futures") extern class Futures_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PY37 : Dynamic;
	static public var S : Dynamic;
	static public var T : Dynamic;
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
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Collects the provided :class:`~torch.futures.Future` objects into a single
		combined :class:`~torch.futures.Future` that is completed when all of the
		sub-futures are completed.
		
		Args:
		    futures (list): a list of :class:`~torch.futures.Future` objects.
		
		Returns:
		    Returns a :class:`~torch.futures.Future` object to a list of the passed
		    in Futures.
		
		Example::
		    >>> fut0 = torch.futures.Future()
		    >>> fut1 = torch.futures.Future()
		    >>> fut = torch.futures.collect_all([fut0, fut1])
		    >>> fut0.set_result(0)
		    >>> fut1.set_result(1)
		    >>> fut_list = fut.wait()
		    >>> print(f"fut0 result = {fut_list[0].wait()}")
		    fut0 result = 0
		    >>> print(f"fut1 result = {fut_list[1].wait()}")
		    fut1 result = 1
	**/
	static public function collect_all(futures:Dynamic):Dynamic;
	/**
		Waits for all provided futures to be complete, and returns
		the list of completed values. If any of the futures encounters an error,
		the method will exit early and report the error not waiting for other
		futures to complete.
		
		Args:
		    futures (list): a list of :class:`~torch.futures.Future` object.
		
		Returns:
		    A list of the completed :class:`~torch.futures.Future` results. This
		    method will throw an error if ``wait`` on any
		    :class:`~torch.futures.Future` throws.
	**/
	static public function wait_all(futures:Dynamic):Dynamic;
}