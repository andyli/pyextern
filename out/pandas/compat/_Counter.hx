/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat", "_Counter") extern class _Counter {
	/**
		Add counts from two counters.
		
		>>> Counter('abbb') + Counter('bcc')
		Counter({'b': 4, 'c': 2, 'a': 1})
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Intersection is the minimum of corresponding counts.
		
		>>> Counter('abbb') & Counter('bcc')
		Counter({'b': 1})
	**/
	public function __and__(other:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if D has a key k, else False.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Like dict.__delitem__() but does not raise KeyError for missing
		values.
	**/
	public function __delitem__(elem:Dynamic):Dynamic;
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
		x.__getitem__(y) <==> x[y]
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Create a new, empty Counter object.  And if given, count elements
		from an input iterable.  Or, initialize the count from another mapping
		of elements to their counts.
		
		>>> c = Counter()                    # a new, empty counter
		>>> c = Counter('gallahad')          # a new counter from an iterable
		>>> c = Counter({'a': 4, 'b': 2})    # a new counter from a mapping
		>>> c = Counter(a=4, b=2)            # a new counter from keyword args
	**/
	@:native("__init__")
	public function ___init__(?iterable:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	public function __missing__(key:Dynamic):Dynamic;
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
		Union is the maximum of value in either of the input counters.
		
		>>> Counter('abbb') | Counter('bcc')
		Counter({'b': 3, 'c': 2, 'a': 1})
	**/
	public function __or__(other:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		D.__sizeof__() -> size of D in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Subtract count, but keep only results with positive counts.
		
		>>> Counter('abbbc') - Counter('bccd')
		Counter({'b': 2, 'a': 1})
	**/
	public function __sub__(other:Dynamic):Dynamic;
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
		D.clear() -> None.  Remove all items from D.
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Like dict.copy() but returns a Counter instance instead of a dict.
		        
	**/
	public function copy():Dynamic;
	/**
		Iterator over elements repeating each as many times as its count.
		
		>>> c = Counter('ABCABC')
		>>> sorted(c.elements())
		['A', 'A', 'B', 'B', 'C', 'C']
		
		If an element's count has been set to zero or is a negative number,
		elements() will ignore it.
	**/
	public function elements():Dynamic;
	/**
		Returns a new dict with keys from iterable and values equal to value.
	**/
	static public function fromkeys(iterable:Dynamic, ?v:Dynamic):Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		List the n most common elements and their counts from the most
		common to the least.  If n is None, then list all element counts.
		
		>>> Counter('abracadabra').most_common(3)
		[('a', 5), ('r', 2), ('b', 2)]
	**/
	public function most_common(?n:Dynamic):Dynamic;
	/**
		D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
		If key is not found, d is returned if given, otherwise KeyError is raised
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.popitem() -> (k, v), remove and return some (key, value) pair as a
		2-tuple; but raise KeyError if D is empty.
	**/
	public function popitem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D
	**/
	public function setdefault(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Like dict.update() but add counts instead of replacing them.
		
		Source can be an iterable, a dictionary, or another Counter instance.
		
		>>> c = Counter('which')
		>>> c.update('witch')           # add elements from another iterable
		>>> d = Counter('watch')
		>>> c.update(d)                 # add elements from another counter
		>>> c['h']                      # four 'h' in which, witch, and watch
		4
	**/
	public function update(?iterable:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}