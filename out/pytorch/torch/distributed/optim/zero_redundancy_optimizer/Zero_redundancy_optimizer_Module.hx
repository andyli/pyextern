/* This file is generated, do not edit! */
package torch.distributed.optim.zero_redundancy_optimizer;
@:pythonImport("torch.distributed.optim.zero_redundancy_optimizer") extern class Zero_redundancy_optimizer_Module {
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
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Broadcasts an object to the given group, sending the object if called from
		the source rank and receiving the object otherwise.
		
		Arguments:
		    obj: object to broadcast; only used if called on the source rank.
		    src_rank (int): source rank.
		    group (``ProcessGroup``, optional): group used for the broadcast
		        (default: ``dist.group.WORLD``).
		    device (``torch.device``, optional): device to send from or receive
		        to (default: ``torch.device("cpu")``).
		
		Returns:
		    The broadcasted object.
	**/
	static public function _broadcast_object(obj:Dynamic, src_rank:Dynamic, ?group:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Returns the global rank for the given group and rank.
	**/
	static public function _get_global_rank(group:Dynamic, rank:Dynamic):Dynamic;
	/**
		Returns if a parameter is trainable, where trainability is equivalent to
		requiring a gradient.
	**/
	static public function _is_trainable(param:Dynamic):Dynamic;
	/**
		Recursively searches lists, tuples, dicts and copies tensors to device if
		possible. Non-tensor values are passed as-is in the result.
		
		.. note:  These are all copies, so if there are two objects that reference
		the same object, then after this call, there will be two different objects
		referenced on the device.
	**/
	static public function _recursive_copy_to_device(value:Dynamic, non_blocking:Dynamic, device:Dynamic):Dynamic;
	static public var functional_optim_map : Dynamic;
}