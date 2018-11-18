/* This file is generated, do not edit! */
package torch.cuda.streams;
@:pythonImport("torch.cuda.streams", "Stream") extern class Stream {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(o:Dynamic):Dynamic;
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
	@:native("__init__")
	public function ___init__():Dynamic;
	public function new():Void;
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
	static public function __new__(cls:Dynamic, ?device:Dynamic, ?priority:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _as_parameter_ : Dynamic;
	public var priority : Dynamic;
	static public function priority_range():Dynamic;
	/**
		Checks if all the work submitted has been completed.
		
		Returns:
		    A boolean indicating if all kernels in this stream are completed.
	**/
	public function query():Dynamic;
	/**
		Records an event.
		
		Arguments:
		    event (Event, optional): event to record. If not given, a new one
		        will be allocated.
		
		Returns:
		    Recorded event.
	**/
	public function record_event(?event:Dynamic):Dynamic;
	/**
		Wait for all the kernels in this stream to complete.
		
		.. note:: This is a wrapper around ``cudaStreamSynchronize()``: see
		   `CUDA documentation`_ for more info.
		
		.. _CUDA documentation:
		   http://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__STREAM.html
	**/
	public function synchronize():Dynamic;
	/**
		Makes all future work submitted to the stream wait for an event.
		
		Arguments:
		    event (Event): an event to wait for.
		
		.. note:: This is a wrapper around ``cudaStreamWaitEvent()``: see `CUDA
		   documentation`_ for more info.
		
		   This function returns without waiting for :attr:`event`: only future
		   operations are affected.
		
		.. _CUDA documentation:
		   http://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__STREAM.html
	**/
	public function wait_event(event:Dynamic):Dynamic;
	/**
		Synchronizes with another stream.
		
		All future work submitted to this stream will wait until all kernels
		submitted to a given stream at the time of call complete.
		
		Arguments:
		    stream (Stream): a stream to synchronize.
		
		.. note:: This function returns without waiting for currently enqueued
		   kernels in :attr:`stream`: only future operations are affected.
	**/
	public function wait_stream(stream:Dynamic):Dynamic;
}