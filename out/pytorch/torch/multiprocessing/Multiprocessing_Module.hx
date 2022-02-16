/* This file is generated, do not edit! */
package torch.multiprocessing;
@:pythonImport("torch.multiprocessing") extern class Multiprocessing_Module {
	/**
		Returns a synchronized shared array
	**/
	static public function Array(typecode_or_type:Dynamic, size_or_initializer:Dynamic, ?lock:Dynamic):Dynamic;
	/**
		Returns a barrier object
	**/
	static public function Barrier(parties:Dynamic, ?action:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Returns a bounded semaphore object
	**/
	static public function BoundedSemaphore(?value:Dynamic):Dynamic;
	/**
		Returns a condition object
	**/
	static public function Condition(?lock:Dynamic):Dynamic;
	/**
		Returns an event object
	**/
	static public function Event():Dynamic;
	/**
		Returns a queue object
	**/
	static public function JoinableQueue(?maxsize:Dynamic):Dynamic;
	/**
		Returns a non-recursive lock object
	**/
	static public function Lock():Dynamic;
	/**
		Returns a manager associated with a running server process
		
		The managers methods such as `Lock()`, `Condition()` and `Queue()`
		can be used to create shared objects.
	**/
	static public function Manager():Dynamic;
	/**
		Returns two connection object connected by a pipe
	**/
	static public function Pipe(?duplex:Dynamic):Dynamic;
	/**
		Returns a process pool object
	**/
	static public function Pool(?processes:Dynamic, ?initializer:Dynamic, ?initargs:Dynamic, ?maxtasksperchild:Dynamic):Dynamic;
	/**
		Returns a queue object
	**/
	static public function Queue(?maxsize:Dynamic):Dynamic;
	/**
		Returns a recursive lock object
	**/
	static public function RLock():Dynamic;
	/**
		Returns a shared array
	**/
	static public function RawArray(typecode_or_type:Dynamic, size_or_initializer:Dynamic):Dynamic;
	/**
		Returns a shared object
	**/
	static public function RawValue(typecode_or_type:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a semaphore object
	**/
	static public function Semaphore(?value:Dynamic):Dynamic;
	/**
		Returns a queue object
	**/
	static public function SimpleQueue():Dynamic;
	/**
		Returns a synchronized shared object
	**/
	static public function Value(typecode_or_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?lock:Dynamic):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _all_sharing_strategies : Dynamic;
	/**
		_prctl_pr_set_pdeathsig(arg0: int) -> None
	**/
	static public function _prctl_pr_set_pdeathsig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _sharing_strategy : Dynamic;
	/**
		Return list of process objects corresponding to live child processes
	**/
	static public function active_children():Dynamic;
	/**
		Install support for sending connections and sockets
		between processes
	**/
	static public function allow_connection_pickling():Dynamic;
	/**
		Returns the number of CPUs in the system
	**/
	static public function cpu_count():Dynamic;
	/**
		Return process object representing the current process
	**/
	static public function current_process():Dynamic;
	/**
		Check whether this is a fake forked process in a frozen executable.
		If so then run code specified by commandline and exit.
	**/
	static public function freeze_support():Dynamic;
	/**
		Returns a set of sharing strategies supported on a current system.
	**/
	static public function get_all_sharing_strategies():Dynamic;
	static public function get_all_start_methods():Dynamic;
	static public function get_context(?method:Dynamic):Dynamic;
	/**
		Return package logger -- if it does not already exist then
		it is created.
	**/
	static public function get_logger():Dynamic;
	/**
		Returns the current strategy for sharing CPU tensors.
	**/
	static public function get_sharing_strategy():Dynamic;
	static public function get_start_method(?allow_none:Dynamic):Dynamic;
	static public function init_reductions():Dynamic;
	/**
		Turn on logging and add a handler which prints to stderr
	**/
	static public function log_to_stderr(?level:Dynamic):Dynamic;
	/**
		Return process object representing the parent process
	**/
	static public function parent_process():Dynamic;
	/**
		Sets the path to a python.exe or pythonw.exe binary used to run
		child processes instead of sys.executable when using the 'spawn'
		start method.  Useful for people embedding Python.
	**/
	static public function set_executable(executable:Dynamic):Dynamic;
	/**
		Set list of module names to try to load in forkserver process.
		This is really just a hint.
	**/
	static public function set_forkserver_preload(module_names:Dynamic):Dynamic;
	/**
		Sets the strategy for sharing CPU tensors.
		
		Args:
		    new_strategy (str): Name of the selected strategy. Should be one of
		        the values returned by :func:`get_all_sharing_strategies()`.
	**/
	static public function set_sharing_strategy(new_strategy:Dynamic):Dynamic;
	static public function set_start_method(method:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Spawns ``nprocs`` processes that run ``fn`` with ``args``.
		
		If one of the processes exits with a non-zero exit status, the
		remaining processes are killed and an exception is raised with the
		cause of termination. In the case an exception was caught in the
		child process, it is forwarded and its traceback is included in
		the exception raised in the parent process.
		
		Args:
		    fn (function): Function is called as the entrypoint of the
		        spawned process. This function must be defined at the top
		        level of a module so it can be pickled and spawned. This
		        is a requirement imposed by multiprocessing.
		
		        The function is called as ``fn(i, *args)``, where ``i`` is
		        the process index and ``args`` is the passed through tuple
		        of arguments.
		
		    args (tuple): Arguments passed to ``fn``.
		    nprocs (int): Number of processes to spawn.
		    join (bool): Perform a blocking join on all processes.
		    daemon (bool): The spawned processes' daemon flag. If set to True,
		                   daemonic processes will be created.
		    start_method (string): (deprecated) this method will always use ``spawn``
		                           as the start method. To use a different start method
		                           use ``start_processes()``.
		
		Returns:
		    None if ``join`` is ``True``,
		    :class:`~ProcessContext` if ``join`` is ``False``
	**/
	static public function spawn(fn:Dynamic, ?args:Dynamic, ?nprocs:Dynamic, ?join:Dynamic, ?daemon:Dynamic, ?start_method:Dynamic):Dynamic;
	static public function start_processes(fn:Dynamic, ?args:Dynamic, ?nprocs:Dynamic, ?join:Dynamic, ?daemon:Dynamic, ?start_method:Dynamic):Dynamic;
}