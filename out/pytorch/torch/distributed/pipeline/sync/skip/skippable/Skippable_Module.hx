/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.skip.skippable;
@:pythonImport("torch.distributed.pipeline.sync.skip.skippable") extern class Skippable_Module {
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
	static public function ClassVar(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function FrozenSet(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function StashPop(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function StashPopGenerator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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
		Gets the skip tracker on the current thread.
	**/
	static public function current_skip_tracker():Dynamic;
	/**
		The decorator to define a :class:`nn.Module <torch.nn.Module>` with skip
		connections. Decorated modules are called "skippable". This functionality
		works perfectly fine even when the module is not wrapped by
		:class:`~torch.distributed.pipeline.sync.Pipe`.
		
		Each skip tensor is managed by its name. Before manipulating skip tensors,
		a skippable module must statically declare the names for skip tensors by
		`stash` and/or `pop` parameters. Skip tensors with pre-declared name can be
		stashed by ``yield stash(name, tensor)`` or popped by ``tensor = yield
		pop(name)``.
		
		Here is an example with three layers. A skip tensor named "1to3" is stashed
		and popped at the first and last layer, respectively::
		
		    @skippable(stash=['1to3'])
		    class Layer1(nn.Module):
		        def forward(self, input):
		            yield stash('1to3', input)
		            return f1(input)
		
		    class Layer2(nn.Module):
		        def forward(self, input):
		            return f2(input)
		
		    @skippable(pop=['1to3'])
		    class Layer3(nn.Module):
		        def forward(self, input):
		            skip_1to3 = yield pop('1to3')
		            return f3(input) + skip_1to3
		
		    model = nn.Sequential(Layer1(), Layer2(), Layer3())
		
		One skippable module can stash or pop multiple skip tensors::
		
		    @skippable(stash=['alice', 'bob'], pop=['carol'])
		    class StashStashPop(nn.Module):
		        def forward(self, input):
		            yield stash('alice', f_alice(input))
		            yield stash('bob', f_bob(input))
		            carol = yield pop('carol')
		            return input + carol
		
		Every skip tensor must be associated with exactly one pair of `stash` and
		`pop`. :class:`~torch.distributed.pipeline.sync.Pipe` checks this
		restriction automatically when wrapping a module. You can also check the
		restriction by :func:`verify_skippables`
		without :class:`~torch.distributed.pipeline.sync.Pipe`.
	**/
	static public function skippable(?stash:Dynamic, ?pop:Dynamic):Dynamic;
	/**
		Verifies if the underlying skippable modules satisfy integrity.
		
		Every skip tensor must have only one pair of `stash` and `pop`. If there
		are one or more unmatched pairs, it will raise :exc:`TypeError` with the
		detailed messages.
		
		Here are a few failure cases. :func:`verify_skippables` will report failure
		for these cases::
		
		    # Layer1 stashes "1to3".
		    # Layer3 pops "1to3".
		
		    nn.Sequential(Layer1(), Layer2())
		    #               └──── ?
		
		    nn.Sequential(Layer2(), Layer3())
		    #                   ? ────┘
		
		    nn.Sequential(Layer1(), Layer2(), Layer3(), Layer3())
		    #               └───────────────────┘       ^^^^^^
		
		    nn.Sequential(Layer1(), Layer1(), Layer2(), Layer3())
		    #             ^^^^^^      └───────────────────┘
		
		To use the same name for multiple skip tensors, they must be isolated by
		different namespaces. See :meth:`isolate()
		<torchpipe.skip.skippable.Skippable.isolate>`.
		
		Raises:
		    TypeError:
		        one or more pairs of `stash` and `pop` are not matched.
	**/
	static public function verify_skippables(module:Dynamic):Dynamic;
}