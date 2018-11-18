/* This file is generated, do not edit! */
package docutils.nodes;
@:pythonImport("docutils.nodes", "Text") extern class Text {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Node instances are always true, even if they're empty.  A node is more
		than a simple container.  Its boolean "truth" does not depend on
		having one or more subnodes in the doctree.
		
		Use `len()` to check node length.  Use `None` to represent a boolean
		false value.
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		S.__format__(format_spec) -> str
		
		Return a formatted version of S as described by format_spec.
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getnewargs__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(data:Dynamic, ?rawsource:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, ?rawsource:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Prevent the rawsource argument from propagating to str.
	**/
	static public function __new__(cls:Dynamic, data:Dynamic, ?rawsource:Dynamic):Dynamic;
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
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		S.__sizeof__() -> size of S in memory, in bytes
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
		Specialized traverse() that doesn't check for a condition.
	**/
	public function _all_traverse():Dynamic;
	public function _dom_node(domroot:Dynamic):Dynamic;
	/**
		Specialized traverse() that only supports instance checks.
	**/
	public function _fast_traverse(cls:Dynamic):Dynamic;
	/**
		Return a DOM **fragment** representation of this Node.
	**/
	public function asdom(?dom:Dynamic):Dynamic;
	public function astext():Dynamic;
	/**
		S.capitalize() -> str
		
		Return a capitalized version of S, i.e. make the first character
		have upper case and the rest lower case.
	**/
	public function capitalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.casefold() -> str
		
		Return a version of S suitable for caseless comparisons.
	**/
	public function casefold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.center(width[, fillchar]) -> str
		
		Return S centered in a string of length width. Padding is
		done using the specified fill character (default is a space)
	**/
	public function center(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var children : Dynamic;
	/**
		Return a copy of self.
	**/
	public function copy():Dynamic;
	/**
		S.count(sub[, start[, end]]) -> int
		
		Return the number of non-overlapping occurrences of substring sub in
		string S[start:end].  Optional arguments start and end are
		interpreted as in slice notation.
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a deep copy of self (also copying children).
	**/
	public function deepcopy():Dynamic;
	static public var document : Dynamic;
	/**
		S.encode(encoding='utf-8', errors='strict') -> bytes
		
		Encode S using the codec registered for encoding. Default encoding
		is 'utf-8'. errors may be given to set a different error
		handling scheme. Default is 'strict' meaning that encoding errors raise
		a UnicodeEncodeError. Other possible values are 'ignore', 'replace' and
		'xmlcharrefreplace' as well as any other name registered with
		codecs.register_error that can handle UnicodeEncodeErrors.
	**/
	public function encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.endswith(suffix[, start[, end]]) -> bool
		
		Return True if S ends with the specified suffix, False otherwise.
		With optional start, test S beginning at that position.
		With optional end, stop comparing S at that position.
		suffix can also be a tuple of strings to try.
	**/
	public function endswith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.expandtabs(tabsize=8) -> str
		
		Return a copy of S where all tab characters are expanded using spaces.
		If tabsize is not given, a tab size of 8 characters is assumed.
	**/
	public function expandtabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.find(sub[, start[, end]]) -> int
		
		Return the lowest index in S where substring sub is found,
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Return -1 on failure.
	**/
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.format(*args, **kwargs) -> str
		
		Return a formatted version of S, using substitutions from args and kwargs.
		The substitutions are identified by braces ('{' and '}').
	**/
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.format_map(mapping) -> str
		
		Return a formatted version of S, using substitutions from mapping.
		The substitutions are identified by braces ('{' and '}').
	**/
	public function format_map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.index(sub[, start[, end]]) -> int
		
		Like S.find() but raise ValueError when the substring is not found.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isalnum() -> bool
		
		Return True if all characters in S are alphanumeric
		and there is at least one character in S, False otherwise.
	**/
	public function isalnum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isalpha() -> bool
		
		Return True if all characters in S are alphabetic
		and there is at least one character in S, False otherwise.
	**/
	public function isalpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isdecimal() -> bool
		
		Return True if there are only decimal characters in S,
		False otherwise.
	**/
	public function isdecimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isdigit() -> bool
		
		Return True if all characters in S are digits
		and there is at least one character in S, False otherwise.
	**/
	public function isdigit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isidentifier() -> bool
		
		Return True if S is a valid identifier according
		to the language definition.
		
		Use keyword.iskeyword() to test for reserved identifiers
		such as "def" and "class".
	**/
	public function isidentifier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.islower() -> bool
		
		Return True if all cased characters in S are lowercase and there is
		at least one cased character in S, False otherwise.
	**/
	public function islower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isnumeric() -> bool
		
		Return True if there are only numeric characters in S,
		False otherwise.
	**/
	public function isnumeric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isprintable() -> bool
		
		Return True if all characters in S are considered
		printable in repr() or S is empty, False otherwise.
	**/
	public function isprintable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isspace() -> bool
		
		Return True if all characters in S are whitespace
		and there is at least one character in S, False otherwise.
	**/
	public function isspace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.istitle() -> bool
		
		Return True if S is a titlecased string and there is at least one
		character in S, i.e. upper- and titlecase characters may only
		follow uncased characters and lowercase characters only cased ones.
		Return False otherwise.
	**/
	public function istitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isupper() -> bool
		
		Return True if all cased characters in S are uppercase and there is
		at least one cased character in S, False otherwise.
	**/
	public function isupper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.join(iterable) -> str
		
		Return a string which is the concatenation of the strings in the
		iterable.  The separator between elements is S.
	**/
	public function join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var line : Dynamic;
	/**
		S.ljust(width[, fillchar]) -> str
		
		Return S left-justified in a Unicode string of length width. Padding is
		done using the specified fill character (default is a space).
	**/
	public function ljust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.lower() -> str
		
		Return a copy of the string S converted to lowercase.
	**/
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.lstrip([chars]) -> str
		
		Return a copy of the string S with leading whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function lstrip(?chars:Dynamic):Dynamic;
	/**
		Return a translation table usable for str.translate().
		
		If there is only one argument, it must be a dictionary mapping Unicode
		ordinals (integers) or characters to Unicode ordinals, strings or None.
		Character keys will be then converted to ordinals.
		If there are two arguments, they must be strings of equal length, and
		in the resulting dictionary, each character in x will be mapped to the
		character at the same position in y. If there is a third argument, it
		must be a string, whose characters will be mapped to None in the result.
	**/
	static public function maketrans(x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic;
	/**
		Return the first node in the iterable returned by traverse(),
		or None if the iterable is empty.
		
		Parameter list is the same as of traverse.  Note that
		include_self defaults to 0, though.
	**/
	public function next_node(?condition:Dynamic, ?include_self:Dynamic, ?descend:Dynamic, ?siblings:Dynamic, ?ascend:Dynamic):Dynamic;
	static public var parent : Dynamic;
	/**
		S.partition(sep) -> (head, sep, tail)
		
		Search for the separator sep in S, and return the part before it,
		the separator itself, and the part after it.  If the separator is not
		found, return S and two empty strings.
	**/
	public function partition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an indented pseudo-XML representation, for test purposes.
		
		Override in subclasses.
	**/
	public function pformat(?indent:Dynamic, ?level:Dynamic):Dynamic;
	/**
		S.replace(old, new[, count]) -> str
		
		Return a copy of S with all occurrences of substring
		old replaced by new.  If the optional argument count is
		given, only the first count occurrences are replaced.
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rfind(sub[, start[, end]]) -> int
		
		Return the highest index in S where substring sub is found,
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Return -1 on failure.
	**/
	public function rfind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rindex(sub[, start[, end]]) -> int
		
		Like S.rfind() but raise ValueError when the substring is not found.
	**/
	public function rindex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rjust(width[, fillchar]) -> str
		
		Return S right-justified in a string of length width. Padding is
		done using the specified fill character (default is a space).
	**/
	public function rjust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rpartition(sep) -> (head, sep, tail)
		
		Search for the separator sep in S, starting at the end of S, and return
		the part before it, the separator itself, and the part after it.  If the
		separator is not found, return two empty strings and S.
	**/
	public function rpartition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rsplit(sep=None, maxsplit=-1) -> list of strings
		
		Return a list of the words in S, using sep as the
		delimiter string, starting at the end of the string and
		working to the front.  If maxsplit is given, at most maxsplit
		splits are done. If sep is not specified, any whitespace string
		is a separator.
	**/
	public function rsplit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rstrip([chars]) -> str
		
		Return a copy of the string S with trailing whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function rstrip(?chars:Dynamic):Dynamic;
	public function setup_child(child:Dynamic):Dynamic;
	public function shortrepr(?maxlen:Dynamic):Dynamic;
	static public var source : Dynamic;
	/**
		S.split(sep=None, maxsplit=-1) -> list of strings
		
		Return a list of the words in S, using sep as the
		delimiter string.  If maxsplit is given, at most maxsplit
		splits are done. If sep is not specified or is None, any
		whitespace string is a separator and empty strings are
		removed from the result.
	**/
	public function split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.splitlines([keepends]) -> list of strings
		
		Return a list of the lines in S, breaking at line boundaries.
		Line breaks are not included in the resulting list unless keepends
		is given and true.
	**/
	public function splitlines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.startswith(prefix[, start[, end]]) -> bool
		
		Return True if S starts with the specified prefix, False otherwise.
		With optional start, test S beginning at that position.
		With optional end, stop comparing S at that position.
		prefix can also be a tuple of strings to try.
	**/
	public function startswith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.strip([chars]) -> str
		
		Return a copy of the string S with leading and trailing
		whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function strip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.swapcase() -> str
		
		Return a copy of S with uppercase characters converted to lowercase
		and vice versa.
	**/
	public function swapcase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var tagname : Dynamic;
	/**
		S.title() -> str
		
		Return a titlecased version of S, i.e. words start with title case
		characters, all remaining cased characters have lower case.
	**/
	public function title(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.translate(table) -> str
		
		Return a copy of the string S in which each character has been mapped
		through the given translation table. The table must implement
		lookup/indexing via __getitem__, for instance a dictionary or list,
		mapping Unicode ordinals to Unicode ordinals, strings, or None. If
		this operation raises LookupError, the character is left untouched.
		Characters mapped to None are deleted.
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		S.upper() -> str
		
		Return a copy of S converted to uppercase.
	**/
	public function upper(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		S.zfill(width) -> str
		
		Pad a numeric string S with zeros on the left, to fill a field
		of the specified width. The string S is never truncated.
	**/
	public function zfill(args:haxe.extern.Rest<Dynamic>):Dynamic;
}