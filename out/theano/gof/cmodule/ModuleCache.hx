/* This file is generated, do not edit! */
package theano.gof.cmodule;
@:pythonImport("theano.gof.cmodule", "ModuleCache") extern class ModuleCache {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dirname:Dynamic, ?check_for_broken_eq:Dynamic, ?do_refresh:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dirname:Dynamic, ?check_for_broken_eq:Dynamic, ?do_refresh:Dynamic):Void;
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
		This function expects the compile lock to be held.
	**/
	public function _add_to_cache(module:Dynamic, key:Dynamic, module_hash:Dynamic):Dynamic;
	public function _get_from_hash(module_hash:Dynamic, key:Dynamic, ?keep_lock:Dynamic):Dynamic;
	/**
		Returns a module if the passed-in key is found in the cache
		and None otherwise.
		
		May raise ValueError if the key is malformed.
	**/
	public function _get_from_key(key:Dynamic, ?key_data:Dynamic):Dynamic;
	/**
		Fetch a compiled module from the loaded cache or the disk.
	**/
	public function _get_module(name:Dynamic):Dynamic;
	public function _on_atexit():Dynamic;
	public function _update_mappings(key:Dynamic, key_data:Dynamic, name:Dynamic, check_in_keys:Dynamic):Dynamic;
	static public var age_thresh_del : Dynamic;
	static public var age_thresh_del_unversioned : Dynamic;
	static public var age_thresh_use : Dynamic;
	/**
		Perform checks to detect broken __eq__ / __hash__ implementations.
		
		Parameters
		----------
		key
		    The key to be checked.
		key_pkl
		    Its associated pickled file containing a KeyData.
	**/
	public function check_key(key:Dynamic, key_pkl:Dynamic):Dynamic;
	/**
		Clear all elements in the cache.
		
		Parameters
		----------
		unversioned_min_age
		    Forwarded to `clear_unversioned`. In particular, you can set it
		    to -1 in order to delete all unversioned cached modules regardless
		    of their age.
		clear_base_files : bool
		    If True, then delete base directories 'cutils_ext',
		    'lazylinker_ext' and 'scan_perform' if they are present.
		    If False, those directories are left intact.
		delete_if_problem
		    See help of refresh() method.
	**/
	public function clear(?unversioned_min_age:Dynamic, ?clear_base_files:Dynamic, ?delete_if_problem:Dynamic):Dynamic;
	/**
		Remove base directories 'cutils_ext', 'lazylinker_ext' and
		'scan_perform' if present.
		
		Note that we do not delete them outright because it may not work on
		some systems due to these modules being currently in use. Instead we
		rename them with the '.delete.me' extension, to mark them to be deleted
		next time we clear the cache.
	**/
	public function clear_base_files():Dynamic;
	/**
		Delete entries from the filesystem for cache entries that are too old.
		
		This refreshes the content of the cache. Don't hold the lock
		while calling this method, this is useless. It will be taken
		if needed.
		
		Parameters
		----------
		age_thresh_del
		    Dynamic modules whose last access time is more than
		    ``age_thresh_del`` seconds ago will be erased.
		    Defaults to 31-day age if not provided.
		delete_if_problem
		    See help of refresh() method.
	**/
	public function clear_old(?age_thresh_del:Dynamic, ?delete_if_problem:Dynamic):Dynamic;
	/**
		Delete unversioned dynamic modules.
		
		They are deleted both from the internal dictionaries and from the
		filesystem.
		
		No need to have the lock when calling this method. It does not
		take the lock as unversioned module aren't shared.
		
		This method does not refresh the cache content, it just
		accesses the in-memory known module(s).
		
		Parameters
		----------
		min_age
		    Minimum age to be deleted, in seconds. Defaults to
		    7-day age if not provided.
	**/
	public function clear_unversioned(?min_age:Dynamic):Dynamic;
	static public var dirname : Dynamic;
	static public var entry_from_key : Dynamic;
	static public var loaded_key_pkl : Dynamic;
	/**
		Return a module from the cache, compiling it if necessary.
		
		Parameters
		----------
		key
		    The key object associated with the module. If this hits a match,
		    we avoid compilation.
		lnk
		    Usually a CLinker instance, but it can be any object that defines
		    the `get_src_code()` and `compile_cmodule(location)` functions. The
		    first one returns the source code of the module to load/compile and
		    the second performs the actual compilation.
		keep_lock : bool
		    If True, the compilation lock will not be released if taken.
	**/
	public function module_from_key(key:Dynamic, ?lnk:Dynamic, ?keep_lock:Dynamic):Dynamic;
	static public var module_from_name : Dynamic;
	static public var module_hash_to_key_data : Dynamic;
	/**
		Update cache data by walking the cache directory structure.
		
		Load key.pkl files that have not been loaded yet.
		Remove entries which have been removed from the filesystem.
		Also, remove malformed cache directories.
		
		Parameters
		----------
		age_thresh_use
		    Do not use modules other than this. Defaults to self.age_thresh_use.
		delete_if_problem : bool
		    If True, cache entries that meet one of those two conditions are
		    deleted:
		    - Those for which unpickling the KeyData file fails with
		      an unknown exception.
		    - Duplicated modules, regardless of their age.
		cleanup : bool
		    Do a cleanup of the cache removing expired and broken modules.
		
		Returns
		-------
		list
		    A list of modules of age higher than age_thresh_use.
	**/
	public function refresh(?age_thresh_use:Dynamic, ?delete_if_problem:Dynamic, ?cleanup:Dynamic):Dynamic;
	static public var similar_keys : Dynamic;
	static public var stats : Dynamic;
}