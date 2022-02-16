/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.pipeline;
@:pythonImport("torch.distributed.pipeline.sync.pipeline") extern class Pipeline_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ExcInfo(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function TensorOrTensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generates schedules for each clock cycle.
	**/
	static public function _clock_cycles(m:Dynamic, n:Dynamic):Dynamic;
	static public function _copy(batch:Dynamic, prev_stream:Dynamic, next_stream:Dynamic):Dynamic;
	static public function _depend(fork_from:Dynamic, join_to:Dynamic):Dynamic;
	static public function _wait(batch:Dynamic, prev_stream:Dynamic, next_stream:Dynamic):Dynamic;
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
		Spawns worker threads. A worker thread is bound to a device.
	**/
	static public function create_workers(devices:Dynamic):Dynamic;
	/**
		:func:`torch.cuda.current_stream` for either CPU or CUDA device.
	**/
	static public function current_stream(device:Dynamic):Dynamic;
	/**
		Branches out from an autograd lane of the given tensor.
	**/
	static public function fork(input:Dynamic):Dynamic;
	/**
		Merges two autograd lanes.
	**/
	static public function join(input:Dynamic, phony:Dynamic):Dynamic;
	/**
		:func:`torch.cuda.device` for either CPU or CUDA device.
	**/
	static public function use_device(device:Dynamic):Dynamic;
	/**
		Registers the given skip tracker on the current thread within a
		context::
		
		    with use_skip_tracker(my_skip_tracker):
		        ...
	**/
	static public function use_skip_tracker(skip_tracker:Dynamic):Dynamic;
}