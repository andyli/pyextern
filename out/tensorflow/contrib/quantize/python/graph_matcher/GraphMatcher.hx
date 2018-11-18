/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.graph_matcher;
@:pythonImport("tensorflow.contrib.quantize.python.graph_matcher", "GraphMatcher") extern class GraphMatcher {
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
		Initializes a GraphMatcher.
		
		Args:
		  pattern: The `Pattern` against which `GraphMatcher` matches
		    subgraphs.
	**/
	@:native("__init__")
	public function ___init__(pattern:Dynamic):Dynamic;
	/**
		Initializes a GraphMatcher.
		
		Args:
		  pattern: The `Pattern` against which `GraphMatcher` matches
		    subgraphs.
	**/
	public function new(pattern:Dynamic):Void;
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
	/**
		Returns whether an TF expression rooted at `op` matches `pattern`.
		
		If there is a match, adds to `self._match_result` the matching op and tensor
		with key `pattern`.
		
		Args:
		  pattern: An `Pattern`.
		  op: A `tf.Operation` to match against the pattern.
		  tensor: the output `tf.Tensor` of `op` that is used by the matching op of
		    `pattern`'s parent. Can be None if `pattern` is already the root of the
		    pattern tree.
		
		Returns:
		  True if an TF expression rooted at `op` matches `pattern`.
	**/
	public function _match_pattern(pattern:Dynamic, op:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Matches each operation in `graph` against `self._pattern`.
		
		Args:
		  graph: `tf.Graph` containing operations to match.
		
		Yields:
		  `MatchResult` for each `tf.Operation` in `graph` that matches the pattern.
	**/
	public function match_graph(graph:Dynamic):Dynamic;
	/**
		Matches `op` against `self._pattern`.
		
		Args:
		  op: `tf.Operation` to match against the pattern.
		
		Returns:
		  Returns a `MatchResult` if `op` matches the pattern; otherwise, returns
		  None.
	**/
	public function match_op(op:Dynamic):Dynamic;
	/**
		Matches each operation in `ops` against `self._pattern`.
		
		Args:
		  ops: collection of `tf.Operation` to match against the pattern.
		
		Yields:
		  `MatchResult` for each `tf.Operation` that matches the pattern.
	**/
	public function match_ops(ops:Dynamic):Dynamic;
}