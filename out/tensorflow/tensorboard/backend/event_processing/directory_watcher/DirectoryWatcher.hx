/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.directory_watcher;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.directory_watcher", "DirectoryWatcher") extern class DirectoryWatcher {
	/**
		Loads new values.
		
		The watcher will load from one path at a time; as soon as that path stops
		yielding events, it will move on to the next path. We assume that old paths
		are never modified after a newer path has been written. As a result, Load()
		can be called multiple times in a row without losing events that have not
		been yielded yet. In other words, we guarantee that every event will be
		yielded exactly once.
		
		Yields:
		  All values that have not been yielded yet.
		
		Raises:
		  DirectoryDeletedError: If the directory has been permanently deleted
		    (as opposed to being temporarily unavailable).
	**/
	public function Load():Dynamic;
	/**
		Returns whether any out-of-order writes have been detected.
		
		Out-of-order writes are only checked as part of the Load() iterator. Once an
		out-of-order write is detected, this function will always return true.
		
		Note that out-of-order write detection is not performed on GCS paths, so
		this function will always return false.
		
		Returns:
		  Whether any out-of-order write has ever been detected by this watcher.
	**/
	public function OutOfOrderWritesDetected():Dynamic;
	/**
		Gets the next path to load from.
		
		This function also does the checking for out-of-order writes as it iterates
		through the paths.
		
		Returns:
		  The next path to load events from, or None if there are no more paths.
	**/
	public function _GetNextPath():Dynamic;
	/**
		Returns whether the path has had an out-of-order write.
	**/
	public function _HasOOOWrite(path:Dynamic):Dynamic;
	public function _InitializeLoader():Dynamic;
	/**
		Internal implementation of Load().
		
		The only difference between this and Load() is that the latter will throw
		DirectoryDeletedError on I/O errors if it thinks that the directory has been
		permanently deleted.
		
		Yields:
		  All values that have not been yielded yet.
	**/
	public function _LoadInternal():Dynamic;
	static public var _OOO_WRITE_CHECK_COUNT : Dynamic;
	/**
		Sets the current path to watch for new events.
		
		This also records the size of the old path, if any. If the size can't be
		found, an error is logged.
		
		Args:
		  path: The full path of the file to watch.
	**/
	public function _SetPath(path:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs a new DirectoryWatcher.
		
		Args:
		  directory: The directory to load files from.
		  loader_factory: A factory for creating loaders. The factory should take a
		    path and return an object that has a Load method returning an
		    iterator that will yield all events that have not been yielded yet.
		  path_filter: If specified, only paths matching this filter are loaded.
		
		Raises:
		  ValueError: If path_provider or loader_factory are None.
	**/
	@:native("__init__")
	public function ___init__(directory:Dynamic, loader_factory:Dynamic, ?path_filter:Dynamic):Dynamic;
	/**
		Constructs a new DirectoryWatcher.
		
		Args:
		  directory: The directory to load files from.
		  loader_factory: A factory for creating loaders. The factory should take a
		    path and return an object that has a Load method returning an
		    iterator that will yield all events that have not been yielded yet.
		  path_filter: If specified, only paths matching this filter are loaded.
		
		Raises:
		  ValueError: If path_provider or loader_factory are None.
	**/
	public function new(directory:Dynamic, loader_factory:Dynamic, ?path_filter:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}