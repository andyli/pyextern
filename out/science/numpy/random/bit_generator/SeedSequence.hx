/* This file is generated, do not edit! */
package numpy.random.bit_generator;
@:pythonImport("numpy.random.bit_generator", "SeedSequence") extern class SeedSequence {
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
	public var entropy : Dynamic;
	/**
		generate_state(n_words, dtype=np.uint32)
		
		Return the requested number of words for PRNG seeding.
		
		A BitGenerator should call this method in its constructor with
		an appropriate `n_words` parameter to properly seed itself.
		
		Parameters
		----------
		n_words : int
		dtype : np.uint32 or np.uint64, optional
		    The size of each word. This should only be either `uint32` or
		    `uint64`. Strings (`'uint32'`, `'uint64'`) are fine. Note that
		    requesting `uint64` will draw twice as many bits as `uint32` for
		    the same `n_words`. This is a convenience for `BitGenerator`s that
		    express their states as `uint64` arrays.
		
		Returns
		-------
		state : uint32 or uint64 array, shape=(n_words,)
	**/
	public function generate_state(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var n_children_spawned : Dynamic;
	public var pool : Dynamic;
	public var pool_size : Dynamic;
	/**
		spawn(n_children)
		
		Spawn a number of child `SeedSequence` s by extending the
		`spawn_key`.
		
		Parameters
		----------
		n_children : int
		
		Returns
		-------
		seqs : list of `SeedSequence` s
	**/
	public function spawn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var spawn_key : Dynamic;
	public var state : Dynamic;
}