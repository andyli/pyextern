/* This file is generated, do not edit! */
package torch.distributed.elastic.agent.server.api;
@:pythonImport("torch.distributed.elastic.agent.server.api") extern class Api_Module {
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
	static public var DEFAULT_ROLE : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _TERMINAL_STATE_SYNC_ID : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_fq_hostname():Dynamic;
	/**
		Returns a free port on localhost that is "reserved" by binding a temporary
		socket on it. Close the socket before passing the port to the entity
		that requires it. Usage example
		
		::
		
		sock = _get_socket_with_port()
		with closing(sock):
		    port = sock.getsockname()[1]
		    sock.close()
		    # there is still a race-condition that some other process
		    # may grab this port before func() runs
		    func(port)
	**/
	static public function _get_socket_with_port():Dynamic;
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
	/**
		Return an object to identify dataclass fields.
		
		default is the default value of the field.  default_factory is a
		0-argument function called to initialize a field's value.  If init
		is True, the field will be a parameter to the class's __init__()
		function.  If repr is True, the field will be included in the
		object's repr().  If hash is True, the field will be included in
		the object's hash().  If compare is True, the field will be used
		in comparison functions.  metadata, if specified, must be a
		mapping which is stored but not otherwise examined by dataclass.
		
		It is an error to specify both default and default_factory.
	**/
	static public function field(?_default:Dynamic, ?default_factory:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?hash:Dynamic, ?compare:Dynamic, ?metadata:Dynamic):Dynamic;
	/**
		Util function to set up a simple logger that writes
		into stderr. The loglevel is fetched from the LOGLEVEL
		env. variable or WARNING as default. The function will use the
		module name of the caller if no name is provided.
		
		Args:
		    name: Name of the logger. If no name provided, the name will
		          be derived from the call stack.
	**/
	static public function get_logger(?name:Dynamic):Dynamic;
	static public var log : Dynamic;
	/**
		@profile decorator publishes duration.ms, count, success, failure
		metrics for the function that it decorates. The metric name defaults
		to the qualified name (``class_name.def_name``) of the function.
		If the function does not belong to a class, it uses the leaf module name
		instead.
		
		Usage
		
		::
		
		 @metrics.prof
		 def x():
		     pass
		
		 @metrics.prof(group="agent")
		 def y():
		     pass
	**/
	static public function prof(?fn:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Publishes a metric data point.
		
		Usage
		
		::
		
		 put_metric("metric_name", 1)
		 put_metric("metric_name", 1, "metric_group_name")
	**/
	static public function put_metric(metric_name:Dynamic, metric_value:Dynamic, ?metric_group:Dynamic):Dynamic;
	static public function record(event:Dynamic, ?destination:Dynamic):Dynamic;
}