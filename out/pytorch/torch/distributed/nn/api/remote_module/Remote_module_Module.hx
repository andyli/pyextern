/* This file is generated, do not edit! */
package torch.distributed.nn.api.remote_module;
@:pythonImport("torch.distributed.nn.api.remote_module") extern class Remote_module_Module {
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
	static public var _REMOTE_MODULE_ATTRIBUTES_IGNORE_FOR_PICKLING : Dynamic;
	static public var _REMOTE_MODULE_PICKLED_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_module(module_cls:Dynamic, args:Dynamic, kwargs:Dynamic, device:Dynamic):Dynamic;
	static public function _create_module_with_interface(module_cls:Dynamic, args:Dynamic, kwargs:Dynamic, device:Dynamic, module_interface_cls:Dynamic):Dynamic;
	static public function _grad_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _instantiate_template(module_interface_cls:Dynamic, enable_moving_cpu_tensors_to_cuda:Dynamic):Dynamic;
	static public var _internal_rpc_pickler : Dynamic;
	static public function _param_rrefs(module_rref:Dynamic, recurse:Dynamic):Dynamic;
	static public function _raise_not_supported(name:Dynamic):Dynamic;
	/**
		Deserializes a RecursiveScirptModule that does not contain a script RemoteModule.
	**/
	static public function _recursive_script_module_receiver(recursive_script_module_serialized:Dynamic):Dynamic;
	/**
		Serializes a RecursiveScirptModule that does not contain a script RemoteModule,
		and raises an error otherwise.
	**/
	static public function _recursive_script_module_reducer(recursive_script_module:Dynamic):Dynamic;
	/**
		Deserializes a RemoteModule.
	**/
	static public function _remote_module_receiver(?remote_module_pickled_attrs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Serializes a RemoteModule.
	**/
	static public function _remote_module_reducer(remote_module:Dynamic):Dynamic;
}