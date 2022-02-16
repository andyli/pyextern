/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_process_lib;
@:pythonImport("tensorflow.python.distribute.multi_process_lib", "AbslForkServerProcess") extern class AbslForkServerProcess {
	static public function _Popen(process_obj:Dynamic):Dynamic;
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
	public function _bootstrap(?parent_sentinel:Dynamic):Dynamic;
	public function _check_closed():Dynamic;
	public function _run_with_absl():Dynamic;
	static public var _start_method : Dynamic;
	public var authkey : Dynamic;
	/**
		Close the Process object.
		
		This method releases resources held by the Process object.  It is
		an error to call this method if the child process is still running.
	**/
	public function close():Dynamic;
	/**
		Return whether process is a daemon
	**/
	public var daemon : Dynamic;
	/**
		Return exit code of process or `None` if it has yet to stop
	**/
	public var exitcode : Dynamic;
	/**
		Return identifier (PID) of process or `None` if it has yet to start
	**/
	public var ident : Dynamic;
	/**
		Return whether process is alive
	**/
	public function is_alive():Dynamic;
	/**
		Wait until child process terminates
	**/
	public function join(?timeout:Dynamic):Dynamic;
	/**
		Terminate process; sends SIGKILL signal or uses TerminateProcess()
	**/
	public function kill():Dynamic;
	public var name : Dynamic;
	/**
		Return identifier (PID) of process or `None` if it has yet to start
	**/
	public var pid : Dynamic;
	/**
		Method to be run in sub-process; can be overridden in sub-class
	**/
	public function run():Dynamic;
	/**
		Return a file descriptor (Unix) or handle (Windows) suitable for
		waiting for process termination.
	**/
	public var sentinel : Dynamic;
	/**
		Start child process
	**/
	public function start():Dynamic;
	/**
		Terminate process; sends SIGTERM signal or uses TerminateProcess()
	**/
	public function terminate():Dynamic;
}