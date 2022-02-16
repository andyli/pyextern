/* This file is generated, do not edit! */
package tensorflow.python.client.session;
@:pythonImport("tensorflow.python.client.session", "_FetchHandler") extern class _FetchHandler {
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
		Creates a fetch handler.
		
		Args:
		  graph: Graph of the fetches.   Used to check for fetchability and to
		    convert all fetches to tensors or ops as needed.
		  fetches: An arbitrary fetch structure: singleton, list, tuple, namedtuple,
		    or dict.
		  feeds: A feed dict where keys are Tensors.
		  feed_handles: A dict from feed Tensors to TensorHandle objects used as
		    direct feeds.
	**/
	@:native("__init__")
	public function ___init__(graph:Dynamic, fetches:Dynamic, feeds:Dynamic, ?feed_handles:Dynamic):Dynamic;
	/**
		Creates a fetch handler.
		
		Args:
		  graph: Graph of the fetches.   Used to check for fetchability and to
		    convert all fetches to tensors or ops as needed.
		  fetches: An arbitrary fetch structure: singleton, list, tuple, namedtuple,
		    or dict.
		  feeds: A feed dict where keys are Tensors.
		  feed_handles: A dict from feed Tensors to TensorHandle objects used as
		    direct feeds.
	**/
	public function new(graph:Dynamic, fetches:Dynamic, feeds:Dynamic, ?feed_handles:Dynamic):Void;
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
	public function _assert_fetchable(graph:Dynamic, op:Dynamic):Dynamic;
	/**
		Build results matching the original fetch shape.
		
		`tensor_values` must be a list of the same length as
		the one returned by `fetches()`, and holding the requested
		fetch values.
		
		This method builds a struct with the same shape as the original `fetches`
		passed to the constructor, in which the fetches are replaced by their
		fetched value.
		
		Args:
		  session: The enclosing session.  Used for tensor handles.
		  tensor_values: List of values matching the list returned by fetches().
		
		Returns:
		  A structure of the same shape as the original `fetches` argument but
		    containing tensors or None (for fetched ops).
	**/
	public function build_results(session:Dynamic, tensor_values:Dynamic):Dynamic;
	/**
		Return the unique names of tensors to fetch.
		
		Returns:
		  A list of strings.
	**/
	public function fetches():Dynamic;
	/**
		Return the unique names of ops to run.
		
		Returns:
		  A list of strings.
	**/
	public function targets():Dynamic;
}