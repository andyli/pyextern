/* This file is generated, do not edit! */
package pandas._libs.sparse;
@:pythonImport("pandas._libs.sparse", "BlockIndex") extern class BlockIndex {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var blengths : Dynamic;
	public var blocs : Dynamic;
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var indices : Dynamic;
	/**
		Intersect two BlockIndex objects
		
		Returns
		-------
		BlockIndex
	**/
	public function intersect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var length : Dynamic;
	/**
		Return the internal location if value exists on given index.
		Return -1 otherwise.
	**/
	public function lookup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vectorized lookup, returns ndarray[int32_t]
	**/
	public function lookup_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Combine together two BlockIndex objects, accepting indices if contained
		in one or the other
		
		Parameters
		----------
		other : SparseIndex
		
		Notes
		-----
		union is a protected keyword in Cython, hence make_union
		
		Returns
		-------
		BlockIndex
	**/
	public function make_union(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var nblocks : Dynamic;
	public var nbytes : Dynamic;
	public var ngaps : Dynamic;
	public var npoints : Dynamic;
	public function to_block_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function to_int_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
}