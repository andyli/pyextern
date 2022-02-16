/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_process_lib;
@:pythonImport("tensorflow.python.distribute.multi_process_lib", "AbslForkServerContext") extern class AbslForkServerContext {
	/**
		Returns a synchronized shared array
	**/
	public function Array(typecode_or_type:Dynamic, size_or_initializer:Dynamic, ?lock:Dynamic):Dynamic;
	/**
		Common base class for all non-exit exceptions.
	**/
	public function AuthenticationError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a barrier object
	**/
	public function Barrier(parties:Dynamic, ?action:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Returns a bounded semaphore object
	**/
	public function BoundedSemaphore(?value:Dynamic):Dynamic;
	/**
		Common base class for all non-exit exceptions.
	**/
	public function BufferTooShort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a condition object
	**/
	public function Condition(?lock:Dynamic):Dynamic;
	/**
		Returns an event object
	**/
	public function Event():Dynamic;
	/**
		Returns a queue object
	**/
	public function JoinableQueue(?maxsize:Dynamic):Dynamic;
	/**
		Returns a non-recursive lock object
	**/
	public function Lock():Dynamic;
	/**
		Returns a manager associated with a running server process
		
		The managers methods such as `Lock()`, `Condition()` and `Queue()`
		can be used to create shared objects.
	**/
	public function Manager():Dynamic;
	/**
		Returns two connection object connected by a pipe
	**/
	public function Pipe(?duplex:Dynamic):Dynamic;
	/**
		Returns a process pool object
	**/
	public function Pool(?processes:Dynamic, ?initializer:Dynamic, ?initargs:Dynamic, ?maxtasksperchild:Dynamic):Dynamic;
	/**
		An absl-compatible Forkserver process.
		
		Note: Forkserver is not available in windows.
	**/
	static public function Process(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Common base class for all non-exit exceptions.
	**/
	public function ProcessError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a queue object
	**/
	public function Queue(?maxsize:Dynamic):Dynamic;
	/**
		Returns a recursive lock object
	**/
	public function RLock():Dynamic;
	/**
		Returns a shared array
	**/
	public function RawArray(typecode_or_type:Dynamic, size_or_initializer:Dynamic):Dynamic;
	/**
		Returns a shared object
	**/
	public function RawValue(typecode_or_type:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a semaphore object
	**/
	public function Semaphore(?value:Dynamic):Dynamic;
	/**
		Returns a queue object
	**/
	public function SimpleQueue():Dynamic;
	/**
		Common base class for all non-exit exceptions.
	**/
	public function TimeoutError(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a synchronized shared object
	**/
	public function Value(typecode_or_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?lock:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _check_available():Dynamic;
	static public var _name : Dynamic;
	/**
		Return list of process objects corresponding to live child processes
	**/
	static public function active_children():Dynamic;
	/**
		Install support for sending connections and sockets
		between processes
	**/
	public function allow_connection_pickling():Dynamic;
	/**
		Returns the number of CPUs in the system
	**/
	public function cpu_count():Dynamic;
	/**
		Return process object representing the current process
	**/
	static public function current_process():Dynamic;
	/**
		Check whether this is a fake forked process in a frozen executable.
		If so then run code specified by commandline and exit.
	**/
	public function freeze_support():Dynamic;
	public function get_context(?method:Dynamic):Dynamic;
	/**
		Return package logger -- if it does not already exist then
		it is created.
	**/
	public function get_logger():Dynamic;
	public function get_start_method(?allow_none:Dynamic):Dynamic;
	/**
		Turn on logging and add a handler which prints to stderr
	**/
	public function log_to_stderr(?level:Dynamic):Dynamic;
	/**
		Return process object representing the parent process
	**/
	static public function parent_process():Dynamic;
	/**
		Controls how objects will be reduced to a form that can be
		shared with other processes.
	**/
	public var reducer : Dynamic;
	/**
		Sets the path to a python.exe or pythonw.exe binary used to run
		child processes instead of sys.executable when using the 'spawn'
		start method.  Useful for people embedding Python.
	**/
	public function set_executable(executable:Dynamic):Dynamic;
	/**
		Set list of module names to try to load in forkserver process.
		This is really just a hint.
	**/
	public function set_forkserver_preload(module_names:Dynamic):Dynamic;
	public function set_start_method(method:Dynamic, ?force:Dynamic):Dynamic;
}