/* This file is generated, do not edit! */
package tensorflow.contrib.cluster_resolver.python.training.cluster_resolver;
@:pythonImport("tensorflow.contrib.cluster_resolver.python.training.cluster_resolver", "UnionClusterResolver") extern class UnionClusterResolver {
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
		Initializes a UnionClusterResolver with other ClusterResolvers.
		
		Args:
		  *args: `ClusterResolver` objects to be unionized.
		
		Raises:
		  TypeError: If any argument is not a subclass of `ClusterResolvers`.
		  ValueError: If there are no arguments passed.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initializes a UnionClusterResolver with other ClusterResolvers.
		
		Args:
		  *args: `ClusterResolver` objects to be unionized.
		
		Raises:
		  TypeError: If any argument is not a subclass of `ClusterResolvers`.
		  ValueError: If there are no arguments passed.
	**/
	public function new(?args:python.VarArgs<Dynamic>):Void;
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
		Returns a union of all the ClusterSpecs from the ClusterResolvers.
		
		Returns:
		  A ClusterSpec containing host information merged from all the underlying
		  ClusterResolvers.
		
		Raises:
		  KeyError: If there are conflicting keys detected when merging two or
		  more dictionaries, this exception is raised.
		
		Note: If there are multiple ClusterResolvers exposing ClusterSpecs with the
		same job name, we will merge the list/dict of workers.
		
		If *all* underlying ClusterSpecs expose the set of workers as lists, we will
		concatenate the lists of workers, starting with the list of workers from
		the first ClusterResolver passed into the constructor.
		
		If *any* of the ClusterSpecs expose the set of workers as a dict, we will
		treat all the sets of workers as dicts (even if they are returned as lists)
		and will only merge them into a dict if there is no conflicting keys. If
		there is a conflicting key, we will raise a `KeyError`.
	**/
	public function cluster_spec():Dynamic;
	/**
		master returns the master address from the first cluster resolver.
	**/
	public function master():Dynamic;
}