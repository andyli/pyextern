/* This file is generated, do not edit! */
package torch.distributed.elastic.agent.server.local_elastic_agent;
@:pythonImport("torch.distributed.elastic.agent.server.local_elastic_agent") extern class Local_elastic_agent_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Starts ``n`` copies of ``entrypoint`` processes with the provided options.
		``entrypoint`` is either a ``Callable`` (function) or a ``str`` (binary).
		The number of copies is determined by the number of entries for ``args`` and
		``envs`` arguments, which need to have the same key set.
		
		``args`` and ``env`` parameters are the arguments and environment variables
		to pass down to the entrypoint mapped by the replica index (local rank).
		All local ranks must be accounted for.
		That is, the keyset should be ``{0,1,...,(nprocs-1)}``.
		
		.. note:: When the ``entrypoint`` is a binary (``str``), ``args`` can only be strings.
		          If any other type is given, then it is casted to a string representation
		          (e.g. ``str(arg1)``). Furthermore, a binary failure will only write
		          an ``error.json`` error file if the main function is annotated with
		          ``torch.distributed.elastic.multiprocessing.errors.record``. For function launches,
		          this is done by default and there is no need to manually annotate
		          with the ``@record`` annotation.
		
		``redirects`` and ``tees`` are bitmasks specifying which std stream(s) to redirect
		to a log file in the ``log_dir``. Valid mask values are defined in ``Std``.
		To redirect/tee only certain local ranks, pass ``redirects`` as a map with the key as
		the local rank to specify the redirect behavior for.
		Any missing local ranks will default to ``Std.NONE``.
		
		``tee`` acts like the unix "tee" command in that it redirects + prints to console.
		To avoid worker stdout/stderr from printing to console, use the ``redirects`` parameter.
		
		For each process, the ``log_dir`` will contain:
		
		#. ``{local_rank}/error.json``: if the process failed, a file with the error info
		#. ``{local_rank}/stdout.json``: if ``redirect & STDOUT == STDOUT``
		#. ``{local_rank}/stderr.json``: if ``redirect & STDERR == STDERR``
		
		.. note:: It is expected that the ``log_dir`` exists, is empty, and is a directory.
		
		Example:
		
		::
		
		 log_dir = "/tmp/test"
		
		 # ok; two copies of foo: foo("bar0"), foo("bar1")
		 start_processes(
		    name="trainer",
		    entrypoint=foo,
		    args:{0:("bar0",), 1:("bar1",),
		    envs:{0:{}, 1:{}},
		    log_dir=log_dir
		 )
		
		 # invalid; envs missing for local rank 1
		 start_processes(
		    name="trainer",
		    entrypoint=foo,
		    args:{0:("bar0",), 1:("bar1",),
		    envs:{0:{}},
		    log_dir=log_dir
		 )
		
		 # ok; two copies of /usr/bin/touch: touch file1, touch file2
		 start_processes(
		    name="trainer",
		    entrypoint="/usr/bin/touch",
		    args:{0:("file1",), 1:("file2",),
		    envs:{0:{}, 1:{}},
		    log_dir=log_dir
		  )
		
		 # caution; arguments casted to string, runs:
		 # echo "1" "2" "3" and echo "[1, 2, 3]"
		 start_processes(
		    name="trainer",
		    entrypoint="/usr/bin/echo",
		    args:{0:(1,2,3), 1:([1,2,3],),
		    envs:{0:{}, 1:{}},
		    log_dir=log_dir
		  )
		
		Args:
		    name: a human readable short name that describes what the processes are
		          (used as header when tee'ing stdout/stderr outputs)
		    entrypoint: either a ``Callable`` (function) or ``cmd`` (binary)
		    args: arguments to each replica
		    envs: env vars to each replica
		    log_dir: directory used to write log files
		    nprocs: number of copies to create (one on each process)
		    start_method: multiprocessing start method (spawn, fork, forkserver)
		                  ignored for binaries
		    redirects: which std streams to redirect to a log file
		    tees: which std streams to redirect + print to console
	**/
	static public function start_processes(name:Dynamic, entrypoint:Dynamic, args:Dynamic, envs:Dynamic, log_dir:Dynamic, ?start_method:Dynamic, ?redirects:Dynamic, ?tee:Dynamic):Dynamic;
}