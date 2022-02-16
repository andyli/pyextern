/* This file is generated, do not edit! */
package torch.distributed.elastic.multiprocessing.api;
@:pythonImport("torch.distributed.elastic.multiprocessing.api", "PContext") extern class PContext {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, entrypoint:Dynamic, args:Dynamic, envs:Dynamic, stdouts:Dynamic, stderrs:Dynamic, tee_stdouts:Dynamic, tee_stderrs:Dynamic, error_files:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, entrypoint:Dynamic, args:Dynamic, envs:Dynamic, stdouts:Dynamic, stderrs:Dynamic, tee_stdouts:Dynamic, tee_stderrs:Dynamic, error_files:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Terminates all processes managed by this context and cleans up any
		meta resources (e.g. redirect, error_file files).
	**/
	public function _close(death_sig:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Polls the run status of the processes running under this context.
		This method follows an "all-or-nothing" policy and returns
		a ``RunProcessResults`` object if either all processes complete
		successfully or any process fails. Returns ``None`` if
		all processes are still running.
	**/
	public function _poll():Dynamic;
	/**
		Start processes using strategy defined in a particular context.
	**/
	public function _start():Dynamic;
	/**
		Terminates all processes managed by this context and cleans up any
		meta resources (e.g. redirect, error_file files).
		
		Args:
		    death_sig: Death signal to terminate porcesses.
		    timeout: Time to wait for processes to finish, if process is
		        still alive after this time, it will be terminated via SIGKILL.
	**/
	public function close(?death_sig:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Returns pids of processes mapped by their respective local_ranks
	**/
	public function pids():Dynamic;
	/**
		Start processes using parameters defined in the constructor.
	**/
	public function start():Dynamic;
	/**
		Waits for the specified ``timeout`` seconds, polling every ``period`` seconds
		for the processes to be done. Returns ``None`` if the processes are still running
		on timeout expiry. Negative timeout values are interpreted as "wait-forever".
		A timeout value of zero simply queries the status of the processes (e.g. equivalent
		to a poll).
		
		..note: Multiprocesing library registers SIGTERM and SIGINT signal handlers that raise
		        ``SignalException`` when the signals received. It is up to the consumer of the code
		        to properly handle the exception. It is important not to swallow the exception otherwise
		        the process would not terminate. Example of the typical workflow can be:
		
		.. code-block:: python
		    pc = start_processes(...)
		    try:
		        pc.wait(1)
		        .. do some other work
		    except SignalException as e:
		        pc.shutdown(e.sigval, timeout=30)
		
		If SIGTERM or SIGINT occurs, the code above will try to shutdown child processes by propagating
		received signal. If child processes will not terminate in the timeout time, the process will send
		the SIGKILL.
	**/
	public function wait(?timeout:Dynamic, ?period:Dynamic):Dynamic;
}