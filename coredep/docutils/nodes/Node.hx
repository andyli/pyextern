/* This file is generated, do not edit! */
package docutils.nodes;
@:pythonImport("docutils.nodes", "Node") extern class Node {
	/**
		Node instances are always true, even if they're empty.  A node is more
		than a simple container.  Its boolean "truth" does not depend on
		having one or more subnodes in the doctree.
		
		Use `len()` to check node length.  Use `None` to represent a boolean
		false value.
	**/
	public function __bool__():Dynamic;
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
		Specialized traverse() that doesn't check for a condition.
	**/
	public function _all_traverse():Dynamic;
	/**
		Specialized traverse() that only supports instance checks.
	**/
	public function _fast_traverse(cls:Dynamic):Dynamic;
	/**
		Return a DOM **fragment** representation of this Node.
	**/
	public function asdom(?dom:Dynamic):Dynamic;
	/**
		Return a copy of self.
	**/
	public function copy():Dynamic;
	/**
		Return a deep copy of self (also copying children).
	**/
	public function deepcopy():Dynamic;
	static public var document : Dynamic;
	static public var line : Dynamic;
	/**
		Return the first node in the iterable returned by traverse(),
		or None if the iterable is empty.
		
		Parameter list is the same as of traverse.  Note that
		include_self defaults to 0, though.
	**/
	public function next_node(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	static public var parent : Dynamic;
	/**
		Return an indented pseudo-XML representation, for test purposes.
		
		Override in subclasses.
	**/
	public function pformat(?indent:Dynamic, ?level:Dynamic):Dynamic;
	public function setup_child(child:Dynamic):Dynamic;
	static public var source : Dynamic;
	/**
		Return an iterable containing
		
		* self (if include_self is true)
		* all descendants in tree traversal order (if descend is true)
		* all siblings (if siblings is true) and their descendants (if
		  also descend is true)
		* the siblings of the parent (if ascend is true) and their
		  descendants (if also descend is true), and so on
		
		If `condition` is not None, the iterable contains only nodes
		for which ``condition(node)`` is true.  If `condition` is a
		node class ``cls``, it is equivalent to a function consisting
		of ``return isinstance(node, cls)``.
		
		If ascend is true, assume siblings to be true as well.
		
		For example, given the following tree::
		
		    <paragraph>
		        <emphasis>      <--- emphasis.traverse() and
		            <strong>    <--- strong.traverse() are called.
		                Foo
		            Bar
		        <reference name="Baz" refid="baz">
		            Baz
		
		Then list(emphasis.traverse()) equals ::
		
		    [<emphasis>, <strong>, <#text: Foo>, <#text: Bar>]
		
		and list(strong.traverse(ascend=True)) equals ::
		
		    [<strong>, <#text: Foo>, <#text: Bar>, <reference>, <#text: Baz>]
	**/
	public function traverse(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	/**
		Traverse a tree of `Node` objects, calling the
		`dispatch_visit()` method of `visitor` when entering each
		node.  (The `walkabout()` method is similar, except it also
		calls the `dispatch_departure()` method before exiting each
		node.)
		
		This tree traversal supports limited in-place tree
		modifications.  Replacing one node with one or more nodes is
		OK, as is removing an element.  However, if the node removed
		or replaced occurs after the current node, the old node will
		still be traversed, and any new nodes will not.
		
		Within ``visit`` methods (and ``depart`` methods for
		`walkabout()`), `TreePruningException` subclasses may be raised
		(`SkipChildren`, `SkipSiblings`, `SkipNode`, `SkipDeparture`).
		
		Parameter `visitor`: A `NodeVisitor` object, containing a
		``visit`` implementation for each `Node` subclass encountered.
		
		Return true if we should stop the traversal.
	**/
	public function walk(visitor:Dynamic):Dynamic;
	/**
		Perform a tree traversal similarly to `Node.walk()` (which
		see), except also call the `dispatch_departure()` method
		before exiting each node.
		
		Parameter `visitor`: A `NodeVisitor` object, containing a
		``visit`` and ``depart`` implementation for each `Node`
		subclass encountered.
		
		Return true if we should stop the traversal.
	**/
	public function walkabout(visitor:Dynamic):Dynamic;
}