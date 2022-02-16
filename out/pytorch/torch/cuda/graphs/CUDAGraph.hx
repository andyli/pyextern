/* This file is generated, do not edit! */
package torch.cuda.graphs;
@:pythonImport("torch.cuda.graphs", "CUDAGraph") extern class CUDAGraph {
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
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
	static public function __new__(cls:Dynamic):Dynamic;
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
		Begins capturing CUDA work on the current stream.
		
		Typically, you shouldn't call ``capture_begin`` yourself.
		Use :class:`~torch.cuda.graph` or :func:`~torch.cuda.make_graphed_callables`,
		which call ``capture_begin`` internally.
		
		Arguments:
		    pool (optional): Token (returned by :func:`~torch.cuda.graph_pool_handle` or
		        :meth:`other_Graph_instance.pool()<torch.cuda.CUDAGraph.pool>`) that hints this graph may share memory
		        with the indicated pool.  See :ref:`Graph memory management<graph-memory-management>`.
	**/
	public function capture_begin(?pool:Dynamic):Dynamic;
	/**
		Ends CUDA graph capture on the current stream.
		After ``capture_end``, ``replay`` may be called on this instance.
		
		Typically, you shouldn't call ``capture_end`` yourself.
		Use :class:`~torch.cuda.graph` or :func:`~torch.cuda.make_graphed_callables`,
		which call ``capture_end`` internally.
	**/
	public function capture_end():Dynamic;
	/**
		Returns an opaque token representing the id of this graph's memory pool.
		This id can optionally be passed to another graph's ``capture_begin``,
		which hints the other graph may share the same memory pool.
	**/
	public function pool():Dynamic;
	/**
		Replays the CUDA work captured by this graph.
	**/
	public function replay():Dynamic;
	/**
		Deletes the graph currently held by this instance.
	**/
	public function reset():Dynamic;
}