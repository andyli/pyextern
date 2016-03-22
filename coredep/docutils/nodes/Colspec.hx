/* This file is generated, do not edit! */
package docutils.nodes;
@:pythonImport("docutils.nodes", "colspec") extern class Colspec {
	public function __add__(other:Dynamic):Dynamic;
	/**
		Node instances are always true, even if they're empty.  A node is more
		than a simple container.  Its boolean "truth" does not depend on
		having one or more subnodes in the doctree.
		
		Use `len()` to check node length.  Use `None` to represent a boolean
		false value.
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(attr:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	public function __delitem__(key:Dynamic):Dynamic;
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
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Append a node or a list of nodes to `self.children`.
	**/
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?rawsource:Dynamic, ?children:python.VarArgs<Dynamic>, ?attributes:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?rawsource:Dynamic, ?children:python.VarArgs<Dynamic>, ?attributes:python.KwArgs<Dynamic>):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
	public function __radd__(other:Dynamic):Dynamic;
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
	public function __setitem__(key:Dynamic, item:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Specialized traverse() that doesn't check for a condition.
	**/
	public function _all_traverse():Dynamic;
	public function _dom_node(domroot:Dynamic):Dynamic;
	/**
		Specialized traverse() that only supports instance checks.
	**/
	public function _fast_traverse(cls:Dynamic):Dynamic;
	public function append(item:Dynamic):Dynamic;
	/**
		For each element in values, if it does not exist in self[attr], append
		it.
		
		NOTE: Requires self[attr] and values to be sequence type and the
		former should specifically be a list.
	**/
	public function append_attr_list(attr:Dynamic, values:Dynamic):Dynamic;
	/**
		Return a DOM **fragment** representation of this Node.
	**/
	public function asdom(?dom:Dynamic):Dynamic;
	public function astext():Dynamic;
	public function attlist():Dynamic;
	static public var basic_attributes : Dynamic;
	static public var child_text_separator : Dynamic;
	public function clear():Dynamic;
	/**
		First, convert both self[attr] and value to a non-string sequence
		type; if either is not already a sequence, convert it to a list of one
		element.  Then call append_attr_list.
		
		NOTE: self[attr] and value both must not be None.
	**/
	public function coerce_append_attr_list(attr:Dynamic, value:Dynamic):Dynamic;
	/**
		Return a copy of self.
	**/
	public function copy():Dynamic;
	/**
		If attr is an attribute of self and either self[attr] or value is a
		list, convert all non-sequence values to a sequence of 1 element and
		then concatenate the two sequence, setting the result to self[attr].
		If both self[attr] and value are non-sequences and replace is True or
		self[attr] is None, replace self[attr] with value. Otherwise, do
		nothing.
	**/
	public function copy_attr_coerce(attr:Dynamic, value:Dynamic, replace:Dynamic):Dynamic;
	/**
		If attr is an attribute of self and both self[attr] and value are
		lists, concatenate the two sequences, setting the result to
		self[attr].  If either self[attr] or value are non-sequences and
		replace is True or self[attr] is None, replace self[attr] with value.
		Otherwise, do nothing.
	**/
	public function copy_attr_concatenate(attr:Dynamic, value:Dynamic, replace:Dynamic):Dynamic;
	/**
		If replace is True or selfpattr] is None, replace self[attr] with
		value.  Otherwise, do nothing.
	**/
	public function copy_attr_consistent(attr:Dynamic, value:Dynamic, replace:Dynamic):Dynamic;
	/**
		If attr is an attribute of self, set self[attr] to
		[self[attr], value], otherwise set self[attr] to value.
		
		NOTE: replace is not used by this function and is kept only for
		      compatibility with the other copy functions.
	**/
	public function copy_attr_convert(attr:Dynamic, value:Dynamic, ?replace:Dynamic):Dynamic;
	/**
		Return a deep copy of self (also copying children).
	**/
	public function deepcopy():Dynamic;
	public function delattr(attr:Dynamic):Dynamic;
	static public var document : Dynamic;
	public function emptytag():Dynamic;
	public function endtag():Dynamic;
	public function extend(item:Dynamic):Dynamic;
	/**
		Return the index of the first child whose class exactly matches.
		
		Parameters:
		
		- `childclass`: A `Node` subclass to search for, or a tuple of `Node`
		  classes. If a tuple, any of the classes may match.
		- `start`: Initial index to check.
		- `end`: Initial index to *not* check.
	**/
	public function first_child_matching_class(childclass:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Return the index of the first child whose class does *not* match.
		
		Parameters:
		
		- `childclass`: A `Node` subclass to skip, or a tuple of `Node`
		  classes. If a tuple, none of the classes may match.
		- `start`: Initial index to check.
		- `end`: Initial index to *not* check.
	**/
	public function first_child_not_matching_class(childclass:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	public function get(key:Dynamic, ?failobj:Dynamic):Dynamic;
	/**
		Return node's language tag.
		
		Look iteratively in self and parents for a class argument
		starting with ``language-`` and return the remainder of it
		(which should be a `BCP49` language tag) or the `fallback`.
	**/
	public function get_language_code(?fallback:Dynamic):Dynamic;
	public function has_key(attr:Dynamic):Dynamic;
	public function hasattr(attr:Dynamic):Dynamic;
	public function index(item:Dynamic):Dynamic;
	public function insert(index:Dynamic, item:Dynamic):Dynamic;
	public function is_not_default(key:Dynamic):Dynamic;
	/**
		Returns True if and only if the given attribute is NOT recognized by
		this class.
	**/
	static public function is_not_known_attribute(attr:Dynamic):Dynamic;
	/**
		Returns True if and only if the given attribute is NOT one of the
		basic list attributes defined for all Elements.
	**/
	static public function is_not_list_attribute(attr:Dynamic):Dynamic;
	static public var known_attributes : Dynamic;
	static public var line : Dynamic;
	static public var list_attributes : Dynamic;
	static public var local_attributes : Dynamic;
	/**
		Return the first node in the iterable returned by traverse(),
		or None if the iterable is empty.
		
		Parameter list is the same as of traverse.  Note that
		include_self defaults to 0, though.
	**/
	public function next_node(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	public function non_default_attributes():Dynamic;
	/**
		Note that this Element has been referenced by its name
		`name` or id `id`.
	**/
	public function note_referenced_by(?name:Dynamic, ?id:Dynamic):Dynamic;
	static public var parent : Dynamic;
	/**
		Return an indented pseudo-XML representation, for test purposes.
		
		Override in subclasses.
	**/
	public function pformat(?indent:Dynamic, ?level:Dynamic):Dynamic;
	public function pop(?i:Dynamic):Dynamic;
	public function remove(item:Dynamic):Dynamic;
	/**
		Replace one child `Node` with another child or children.
	**/
	public function replace(old:Dynamic, _new:Dynamic):Dynamic;
	/**
		If self[attr] does not exist or force is True or omitted, set
		self[attr] to value, otherwise do nothing.
	**/
	public function replace_attr(attr:Dynamic, value:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Replace `self` node with `new`, where `new` is a node or a
		list of nodes.
	**/
	public function replace_self(_new:Dynamic):Dynamic;
	/**
		Add a new class to the "classes" attribute.
	**/
	public function set_class(name:Dynamic):Dynamic;
	public function setdefault(key:Dynamic, ?failobj:Dynamic):Dynamic;
	public function setup_child(child:Dynamic):Dynamic;
	public function shortrepr():Dynamic;
	static public var source : Dynamic;
	public function starttag(?quoteattr:Dynamic):Dynamic;
	static public var tagname : Dynamic;
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
		Updates all attributes from node or dictionary `dict_`.
		
		Appends the basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') and then, for all other attributes in
		dict_, updates the same attribute in self.  When attributes with the
		same identifier appear in both self and dict_, the two values are
		merged based on the value of update_fun.  Generally, when replace is
		True, the values in self are replaced or merged with the values in
		dict_; otherwise, the values in self may be preserved or merged.  When
		and_source is True, the 'source' attribute is included in the copy.
		
		NOTE: When replace is False, and self contains a 'source' attribute,
		      'source' is not replaced even when dict_ has a 'source'
		      attribute, though it may still be merged into a list depending
		      on the value of update_fun.
		NOTE: It is easier to call the update-specific methods then to pass
		      the update_fun method to this function.
	**/
	public function update_all_atts(dict_:Dynamic, ?update_fun:Dynamic, ?replace:Dynamic, ?and_source:Dynamic):Dynamic;
	/**
		Updates all attributes from node or dictionary `dict_`.
		
		Appends the basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') and then, for all other attributes in
		dict_, updates the same attribute in self.  When attributes with the
		same identifier appear in both self and dict_ whose values are both
		not lists and replace is True, the values in self are replaced with
		the values in dict_; if either of the values from self and dict_ for
		the given identifier are of list type, then first any non-lists are
		converted to 1-element lists and then the two lists are concatenated
		and the result stored in self; otherwise, the values in self are
		preserved.  When and_source is True, the 'source' attribute is
		included in the copy.
		
		NOTE: When replace is False, and self contains a 'source' attribute,
		      'source' is not replaced even when dict_ has a 'source'
		      attribute, though it may still be merged into a list depending
		      on the value of update_fun.
	**/
	public function update_all_atts_coercion(dict_:Dynamic, ?replace:Dynamic, ?and_source:Dynamic):Dynamic;
	/**
		Updates all attributes from node or dictionary `dict_`.
		
		Appends the basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') and then, for all other attributes in
		dict_, updates the same attribute in self.  When attributes with the
		same identifier appear in both self and dict_ whose values aren't each
		lists and replace is True, the values in self are replaced with the
		values in dict_; if the values from self and dict_ for the given
		identifier are both of list type, then the two lists are concatenated
		and the result stored in self; otherwise, the values in self are
		preserved.  When and_source is True, the 'source' attribute is
		included in the copy.
		
		NOTE: When replace is False, and self contains a 'source' attribute,
		      'source' is not replaced even when dict_ has a 'source'
		      attribute, though it may still be merged into a list depending
		      on the value of update_fun.
	**/
	public function update_all_atts_concatenating(dict_:Dynamic, ?replace:Dynamic, ?and_source:Dynamic):Dynamic;
	/**
		Updates all attributes from node or dictionary `dict_`.
		
		Appends the basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') and then, for all other attributes in
		dict_, updates the same attribute in self.  When attributes with the
		same identifier appear in both self and dict_ and replace is True, the
		values in self are replaced with the values in dict_; otherwise, the
		values in self are preserved.  When and_source is True, the 'source'
		attribute is included in the copy.
		
		NOTE: When replace is False, and self contains a 'source' attribute,
		      'source' is not replaced even when dict_ has a 'source'
		      attribute, though it may still be merged into a list depending
		      on the value of update_fun.
	**/
	public function update_all_atts_consistantly(dict_:Dynamic, ?replace:Dynamic, ?and_source:Dynamic):Dynamic;
	/**
		Updates all attributes from node or dictionary `dict_`.
		
		Appends the basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') and then, for all other attributes in
		dict_, updates the same attribute in self.  When attributes with the
		same identifier appear in both self and dict_ then first any non-lists
		are converted to 1-element lists and then the two lists are
		concatenated and the result stored in self; otherwise, the values in
		self are preserved.  When and_source is True, the 'source' attribute
		is included in the copy.
		
		NOTE: When replace is False, and self contains a 'source' attribute,
		      'source' is not replaced even when dict_ has a 'source'
		      attribute, though it may still be merged into a list depending
		      on the value of update_fun.
	**/
	public function update_all_atts_convert(dict_:Dynamic, ?and_source:Dynamic):Dynamic;
	/**
		Update basic attributes ('ids', 'names', 'classes',
		'dupnames', but not 'source') from node or dictionary `dict_`.
	**/
	public function update_basic_atts(dict_:Dynamic):Dynamic;
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