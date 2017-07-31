/* This file is generated, do not edit! */
package tensorflow.python.summary.writer.event_file_writer;
@:pythonImport("tensorflow.python.summary.writer.event_file_writer", "EventFileWriter") extern class EventFileWriter {
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
		Creates a `EventFileWriter` and an event file to write to.
		
		On construction the summary writer creates a new event file in `logdir`.
		This event file will contain `Event` protocol buffers, which are written to
		disk via the add_event method.
		
		The other arguments to the constructor control the asynchronous writes to
		the event file:
		
		*  `flush_secs`: How often, in seconds, to flush the added summaries
		   and events to disk.
		*  `max_queue`: Maximum number of summaries or events pending to be
		   written to disk before one of the 'add' calls block.
		
		Args:
		  logdir: A string. Directory where event file will be written.
		  max_queue: Integer. Size of the queue for pending events and summaries.
		  flush_secs: Number. How often, in seconds, to flush the
		    pending events and summaries to disk.
		  filename_suffix: A string. Every event file's name is suffixed with
		    `filename_suffix`.
	**/
	@:native("__init__")
	public function ___init__(logdir:Dynamic, ?max_queue:Dynamic, ?flush_secs:Dynamic, ?filename_suffix:Dynamic):Dynamic;
	/**
		Creates a `EventFileWriter` and an event file to write to.
		
		On construction the summary writer creates a new event file in `logdir`.
		This event file will contain `Event` protocol buffers, which are written to
		disk via the add_event method.
		
		The other arguments to the constructor control the asynchronous writes to
		the event file:
		
		*  `flush_secs`: How often, in seconds, to flush the added summaries
		   and events to disk.
		*  `max_queue`: Maximum number of summaries or events pending to be
		   written to disk before one of the 'add' calls block.
		
		Args:
		  logdir: A string. Directory where event file will be written.
		  max_queue: Integer. Size of the queue for pending events and summaries.
		  flush_secs: Number. How often, in seconds, to flush the
		    pending events and summaries to disk.
		  filename_suffix: A string. Every event file's name is suffixed with
		    `filename_suffix`.
	**/
	public function new(logdir:Dynamic, ?max_queue:Dynamic, ?flush_secs:Dynamic, ?filename_suffix:Dynamic):Void;
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
	/**
		Generate a sentinel event for terminating worker.
	**/
	public function _get_sentinel_event():Dynamic;
	/**
		Adds an event to the event file.
		
		Args:
		  event: An `Event` protocol buffer.
	**/
	public function add_event(event:Dynamic):Dynamic;
	/**
		Flushes the event file to disk and close the file.
		
		Call this method when you do not need the summary writer anymore.
	**/
	public function close():Dynamic;
	/**
		Flushes the event file to disk.
		
		Call this method to make sure that all pending events have been written to
		disk.
	**/
	public function flush():Dynamic;
	/**
		Returns the directory where event file will be written.
	**/
	public function get_logdir():Dynamic;
	/**
		Reopens the EventFileWriter.
		
		Can be called after `close()` to add more events in the same directory.
		The events will go into a new events file.
		
		Does nothing if the EventFileWriter was not closed.
	**/
	public function reopen():Dynamic;
}