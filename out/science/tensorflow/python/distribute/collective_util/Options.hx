/* This file is generated, do not edit! */
package tensorflow.python.distribute.collective_util;
@:pythonImport("tensorflow.python.distribute.collective_util", "Options") extern class Options {
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
		Creates a CollectiveHints.
		
		Args:
		  bytes_per_pack: a non-negative integer. Breaks collective operations into
		    packs of certain size. If it's zero, the value is determined
		    automatically. This only applies to all-reduce with
		    `MultiWorkerMirroredStrategy` currently.
		  timeout_seconds: a float or None, timeout in seconds. If not None, the
		    collective raises `tf.errors.DeadlineExceededError` if it takes longer
		    than this timeout. Zero disables timeout. This can be useful when
		    debugging hanging issues.  This should only be used for debugging since
		    it creates a new thread for each collective, i.e. an overhead of
		    `timeout_seconds * num_collectives_per_second` more threads. This only
		    works for `tf.distribute.experimental.MultiWorkerMirroredStrategy`.
		  implementation: a
		    `tf.distribute.experimental.CommunicationImplementation`. This is a hint
		    on the preferred communication implementation. Possible values include
		    `AUTO`, `RING`, and `NCCL`. NCCL is generally more performant for GPU,
		    but doesn't work for CPU. This only works for
		    `tf.distribute.experimental.MultiWorkerMirroredStrategy`.
		
		Raises:
		  ValueError: When arguments have invalid value.
	**/
	@:native("__init__")
	public function ___init__(?bytes_per_pack:Dynamic, ?timeout_seconds:Dynamic, ?implementation:Dynamic):Dynamic;
	/**
		Creates a CollectiveHints.
		
		Args:
		  bytes_per_pack: a non-negative integer. Breaks collective operations into
		    packs of certain size. If it's zero, the value is determined
		    automatically. This only applies to all-reduce with
		    `MultiWorkerMirroredStrategy` currently.
		  timeout_seconds: a float or None, timeout in seconds. If not None, the
		    collective raises `tf.errors.DeadlineExceededError` if it takes longer
		    than this timeout. Zero disables timeout. This can be useful when
		    debugging hanging issues.  This should only be used for debugging since
		    it creates a new thread for each collective, i.e. an overhead of
		    `timeout_seconds * num_collectives_per_second` more threads. This only
		    works for `tf.distribute.experimental.MultiWorkerMirroredStrategy`.
		  implementation: a
		    `tf.distribute.experimental.CommunicationImplementation`. This is a hint
		    on the preferred communication implementation. Possible values include
		    `AUTO`, `RING`, and `NCCL`. NCCL is generally more performant for GPU,
		    but doesn't work for CPU. This only works for
		    `tf.distribute.experimental.MultiWorkerMirroredStrategy`.
		
		Raises:
		  ValueError: When arguments have invalid value.
	**/
	public function new(?bytes_per_pack:Dynamic, ?timeout_seconds:Dynamic, ?implementation:Dynamic):Void;
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
	/**
		Merges with another options and returns a new one.
		
		Values specified in the `options` takes precedence if they're not the
		default.
		
		Args:
		  options: a `tf.distribute.experimental.CollectiveCommunication`.
		
		Returns:
		  A new `tf.distribute.experimental.CollectiveCommunication`.
	**/
	public function merge(options:Dynamic):Dynamic;
}