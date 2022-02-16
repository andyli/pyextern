/* This file is generated, do not edit! */
package torch.multiprocessing.spawn;
@:pythonImport("torch.multiprocessing.spawn") extern class Spawn_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_prctl_pr_set_pdeathsig(arg0: int) -> None
	**/
	static public function _prctl_pr_set_pdeathsig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _wrap(fn:Dynamic, i:Dynamic, args:Dynamic, error_queue:Dynamic):Dynamic;
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