/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.dynamic_rendezvous;
@:pythonImport("torch.distributed.elastic.rendezvous.dynamic_rendezvous") extern class Dynamic_rendezvous_Module {
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
	static public function Token(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Suspends the current thread for ``seconds``.
		
		Args:
		    seconds:
		        Either the delay, in seconds, or a tuple of a lower and an upper
		        bound within which a random delay will be picked.
	**/
	static public function _delay(seconds:Dynamic):Dynamic;
	static public function _get_timeout(params:Dynamic, key:Dynamic):Dynamic;
	static public function _remove_participant_epilogue(state:Dynamic, settings:Dynamic):Dynamic;
	/**
		Determines whether a keep-alive heartbeat should be sent.
	**/
	static public function _should_keep_alive(ctx:Dynamic):Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function construct_and_record_rdzv_event(run_id:Dynamic, message:Dynamic, node_state:Dynamic, ?name:Dynamic, ?hostname:Dynamic, ?pid:Dynamic, ?master_endpoint:Dynamic, ?local_id:Dynamic, ?rank:Dynamic):Dynamic;
	/**
		Creates a new :py:class:`DynamicRendezvousHandler` from the specified
		parameters.
		
		Args:
		    store:
		        The C10d store to return as part of the rendezvous.
		    backend:
		        The backend to use to hold the rendezvous state.
		
		+-------------------+------------------------------------------------------+
		| Parameter         | Description                                          |
		+===================+======================================================+
		| join_timeout      | The total time, in seconds, within which the         |
		|                   | rendezvous is expected to complete. Defaults to 600  |
		|                   | seconds.                                             |
		+-------------------+------------------------------------------------------+
		| last_call_timeout | An additional wait amount, in seconds, before        |
		|                   | completing the rendezvous once the minimum number of |
		|                   | nodes has been reached. Defaults to 30 seconds.      |
		+-------------------+------------------------------------------------------+
		| close_timeout     | The time, in seconds, within which the rendezvous is |
		|                   | expected to close after a call to                    |
		|                   | :py:meth:`RendezvousHandler.set_closed` or           |
		|                   | :py:meth:`RendezvousHandler.shutdown`. Defaults to   |
		|                   | 30 seconds.                                          |
		+-------------------+------------------------------------------------------+
	**/
	static public function create_handler(store:Dynamic, backend:Dynamic, params:Dynamic):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	static public function get_method_name(?depth:Dynamic):Dynamic;
	static public var log : Dynamic;
}