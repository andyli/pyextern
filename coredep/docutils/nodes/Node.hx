/* This file is generated, do not edit! */
package docutils.nodes;
@:pythonImport("docutils.nodes", "Node") extern class Node {
	/**
		Node instances are always true, even if they're empty.  A node is more
		than a simple container.  Its boolean "truth" does not depend on
		having one or more subnodes in the doctree.
		
		Use `len()` to check node length.
	**/
	public function __bool__():Dynamic;
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
	static public var _document : Dynamic;
	/**
		Return iterator that only supports instance checks.
	**/
	public function _fast_findall(cls:Dynamic):Dynamic;
	/**
		Return iterator that doesn't check for a condition.
	**/
	public function _superfast_findall():Dynamic;
	/**
		Return a DOM **fragment** representation of this Node.
	**/
	public function asdom(?dom:Dynamic):Dynamic;
	/**
		Return a string representation of this Node.
	**/
	public function astext():Dynamic;
	/**
		Return a copy of self.
	**/
	public function copy():Dynamic;
	/**
		Return a deep copy of self (also copying children).
	**/
	public function deepcopy():Dynamic;
	/**
		Return the `document` node at the root of the tree containing this Node.
	**/
	public var document : Dynamic;
	/**
		Return an iterator yielding nodes following `self`:
		
		* self (if `include_self` is true)
		* all descendants in tree traversal order (if `descend` is true)
		* the following siblings (if `siblings` is true) and their
		  descendants (if also `descend` is true)
		* the following siblings of the parent (if `ascend` is true) and
		  their descendants (if also `descend` is true), and so on.
		
		If `condition` is not None, the iterator yields only nodes
		for which ``condition(node)`` is true.  If `condition` is a
		node class ``cls``, it is equivalent to a function consisting
		of ``return isinstance(node, cls)``.
		
		If `ascend` is true, assume `siblings` to be true as well.
		
		If the tree structure is modified during iteration, the result
		is undefined.
		
		For example, given the following tree::
		
		    <paragraph>
		        <emphasis>      <--- emphasis.traverse() and
		            <strong>    <--- strong.traverse() are called.
		                Foo
		            Bar
		        <reference name="Baz" refid="baz">
		            Baz
		
		Then tuple(emphasis.traverse()) equals ::
		
		    (<emphasis>, <strong>, <#text: Foo>, <#text: Bar>)
		
		and list(strong.traverse(ascend=True) equals ::
		
		    [<strong>, <#text: Foo>, <#text: Bar>, <reference>, <#text: Baz>]
	**/
	public function findall(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	static public var line : Dynamic;
	/**
		Return the first node in the iterator returned by findall(),
		or None if the iterable is empty.
		
		Parameter list is the same as of traverse.  Note that `include_self`
		defaults to False, though.
	**/
	public function next_node(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	static public var parent : Dynamic;
	/**
		Return an indented pseudo-XML representation, for test purposes.
		
		Override in subclasses.
	**/
	public function pformat(?indent:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return preceding sibling node or ``None``.
	**/
	public function previous_sibling():Dynamic;
	public function setup_child(child:Dynamic):Dynamic;
	static public var source : Dynamic;
	/**
		Return list of nodes following `self`.
		
		For looping, Node.findall() is faster and more memory efficient.
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