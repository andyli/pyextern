/* This file is generated, do not edit! */
package theano.gof.compilelock;
@:pythonImport("theano.gof.compilelock") extern class Compilelock_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function _get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Delete the compilation lock if someone else has it.
	**/
	static public function force_unlock():Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var hostname : Dynamic;
	/**
		Obtain lock access by creating a given temporary directory (whose base will
		be created if needed, but will not be deleted after the lock is removed).
		If access is refused by the same lock owner during more than 'timeout'
		seconds, then the current lock is overridden. If timeout is None, then no
		timeout is performed.
		
		The lock is performed by creating a 'lock' file in 'tmp_dir' that contains
		a unique id identifying the owner of the lock (the process id, followed by
		a random string).
		
		When there is already a lock, the process sleeps for a random amount of
		time between min_wait and max_wait seconds before trying again.
		
		If 'verbosity' is >= 1, then a message will be displayed when we need to
		wait for the lock. If it is set to a value >1, then this message will be
		displayed each time we re-check for the presence of the lock. Otherwise it
		is displayed only when we notice the lock's owner has changed.
		
		Parameters
		----------
		tmp_dir : str
		    Lock directory that will be created when acquiring the lock.
		timeout : int or None
		    Time (in seconds) to wait before replacing an existing lock (default
		    config 'compile.timeout').
		min_wait: int
		    Minimum time (in seconds) to wait before trying again to get the lock
		    (default config 'compile.wait').
		max_wait: int
		    Maximum time (in seconds) to wait before trying again to get the lock
		    (default 2 * min_wait).
		verbosity : int
		    Amount of feedback displayed to screen (default 1).
	**/
	static public function lock(tmp_dir:Dynamic, ?timeout:Dynamic, ?min_wait:Dynamic, ?max_wait:Dynamic, ?verbosity:Dynamic):Dynamic;
	static public function lock_ctx(?lock_dir:Dynamic, ?keep_lock:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var notset : Dynamic;
	static public var print_function : Dynamic;
	static public var random : Dynamic;
	/**
		'Refresh' an existing lock by re-writing the file containing the owner's
		unique id, using a new (randomly generated) id, which is also returned.
	**/
	static public function refresh_lock(lock_file:Dynamic):Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Enable or disable the lock on the compilation directory (which is enabled
		by default). Disabling may make compilation slightly faster (but is not
		recommended for parallel execution).
		
		Parameters
		----------
		use_lock : bool
		    Whether to use the compilation lock or not.
	**/
	static public function set_lock_status(use_lock:Dynamic):Dynamic;
}