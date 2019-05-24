/* This file is generated, do not edit! */
package theano.gof.opt;
@:pythonImport("theano.gof.opt", "SeqOptimizer") extern class SeqOptimizer {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Same as self.optimize(fgraph).
	**/
	public function __call__(fgraph:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
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
	public function __eq__(other:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Implement self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
	/**
		Parameters
		----------
		*opts :
		    The List of optimizers to be applied to a node
		failure_callback : callable or None
		    Keyword only argument. A callback used when a failure
		    happen during optimization.
	**/
	@:native("__init__")
	public function ___init__(?opts:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		*opts :
		    The List of optimizers to be applied to a node
		failure_callback : callable or None
		    Keyword only argument. A callback used when a failure
		    happen during optimization.
	**/
	public function new(?opts:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Void;
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
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
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
		L.__reversed__() -- return a reverse iterator over the list
	**/
	public function __reversed__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		L.__sizeof__() -- size of L in memory, in bytes
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
		Add features to the fgraph that are required to apply the optimization.
		For example:
		  fgraph.attach_feature(History())
		  fgraph.attach_feature(MyFeature())
		  etc.
	**/
	public function add_requirements(fgraph:Dynamic):Dynamic;
	/**
		L.append(object) -> None -- append object to end
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies each L{Optimizer} in self in turn.
	**/
	public function apply(fgraph:Dynamic):Dynamic;
	/**
		L.clear() -> None -- remove all items from L
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.copy() -> list -- a shallow copy of L
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.extend(iterable) -> None -- extend list by appending elements from the iterable
	**/
	public function extend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.insert(index, object) -- insert object before index
	**/
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Merge 2 profiles returned by this cass apply() fct.
	**/
	static public function merge_profile(prof1:Dynamic, prof2:Dynamic):Dynamic;
	/**
		This is meant as a shortcut to:
		  opt.add_requirements(fgraph)
		  opt.apply(fgraph)
	**/
	public function optimize(fgraph:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		L.pop([index]) -> item -- remove and return item at index (default last).
		Raises IndexError if list is empty or index is out of range.
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function print_profile(stream:Dynamic, prof:Dynamic, ?level:Dynamic):Dynamic;
	public function print_summary(?stream:Dynamic, ?level:Dynamic, ?depth:Dynamic):Dynamic;
	/**
		L.remove(value) -> None -- remove first occurrence of value.
		Raises ValueError if the value is not present.
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.reverse() -- reverse *IN PLACE*
	**/
	public function reverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.sort(key=None, reverse=False) -> None -- stable sort *IN PLACE*
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Default failure_callback for SeqOptimizer.
	**/
	static public function warn(exc:Dynamic, self:Dynamic, optimizer:Dynamic):Dynamic;
}