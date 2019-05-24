/* This file is generated, do not edit! */
package importlib._bootstrap;
@:pythonImport("importlib._bootstrap") extern class _Bootstrap_Module {
	static public var _ERR_MSG : Dynamic;
	static public var _ERR_MSG_PREFIX : Dynamic;
	static public var _NEEDS_LOADING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	/**
		Import a module.
		
		The 'globals' argument is used to infer where the import is occurring from
		to handle relative imports. The 'locals' argument is ignored. The
		'fromlist' argument specifies what should exist as attributes on the module
		being imported (e.g. ``from module import <fromlist>``).  The 'level'
		argument represents the package location to import from in a relative
		import (e.g. ``from ..pkg import mod`` would have a 'level' of 2).
	**/
	static public function __import__(name:Dynamic, ?globals:Dynamic, ?locals:Dynamic, ?fromlist:Dynamic, ?level:Dynamic):Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var _blocking_on : Dynamic;
	static public function _builtin_from_name(name:Dynamic):Dynamic;
	/**
		Calculate what __package__ should be.
		
		__package__ is not guaranteed to be defined or could be set to None
		to represent that its proper value is unknown.
	**/
	static public function _calc___package__(globals:Dynamic):Dynamic;
	/**
		remove_importlib_frames in import.c will always remove sequences
		of importlib frames that end with a call to this function
		
		Use it instead of a normal call in places where including the importlib
		frames introduces unwanted noise into the traceback (e.g. when executing
		module code)
	**/
	static public function _call_with_frames_removed(f:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Execute the spec's specified module in an existing module's namespace.
	**/
	static public function _exec(spec:Dynamic, module:Dynamic):Dynamic;
	/**
		Find and load the module.
	**/
	static public function _find_and_load(name:Dynamic, import_:Dynamic):Dynamic;
	static public function _find_and_load_unlocked(name:Dynamic, import_:Dynamic):Dynamic;
	/**
		Find a module's spec.
	**/
	static public function _find_spec(name:Dynamic, path:Dynamic, ?target:Dynamic):Dynamic;
	static public function _find_spec_legacy(finder:Dynamic, name:Dynamic, path:Dynamic):Dynamic;
	/**
		Import and return the module based on its name, the package the call is
		being made from, and the level adjustment.
		
		This function represents the greatest common denominator of functionality
		between import_module and __import__. This includes setting __package__ if
		the loader did not.
	**/
	static public function _gcd_import(name:Dynamic, ?_package:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Get or create the module lock for a given module name.
		
		Acquire/release internally the global import lock to protect
		_module_locks.
	**/
	static public function _get_module_lock(name:Dynamic):Dynamic;
	/**
		Figure out what __import__ should return.
		
		The import_ parameter is a callable which takes the name of module to
		import. It is required to decouple the function from assuming importlib's
		import implementation is desired.
	**/
	static public function _handle_fromlist(module:Dynamic, fromlist:Dynamic, import_:Dynamic, ?recursive:Dynamic):Dynamic;
	static public function _init_module_attrs(spec:Dynamic, module:Dynamic, ?_override:Dynamic):Dynamic;
	/**
		Install importlib as the implementation of import.
	**/
	static public function _install(sys_module:Dynamic, _imp_module:Dynamic):Dynamic;
	/**
		Return a new module object, loaded by the spec's loader.
		
		The module is not added to its parent.
		
		If a module is already in sys.modules, that existing module gets
		clobbered.
	**/
	static public function _load(spec:Dynamic):Dynamic;
	static public function _load_backward_compatible(spec:Dynamic):Dynamic;
	/**
		Load the specified module into sys.modules and return it.
		
		This method is deprecated.  Use loader.exec_module instead.
	**/
	static public function _load_module_shim(self:Dynamic, fullname:Dynamic):Dynamic;
	static public function _load_unlocked(spec:Dynamic):Dynamic;
	/**
		Acquires then releases the module lock for a given module name.
		
		This is used to ensure a module is completely initialized, in the
		event it is being imported by another thread.
	**/
	static public function _lock_unlock_module(name:Dynamic):Dynamic;
	static public var _module_locks : Dynamic;
	static public function _module_repr(module:Dynamic):Dynamic;
	/**
		Return the repr to use for the module.
	**/
	static public function _module_repr_from_spec(spec:Dynamic):Dynamic;
	static public function _new_module(name:Dynamic):Dynamic;
	/**
		Decorator to verify the named module is built-in.
	**/
	static public function _requires_builtin(fxn:Dynamic):Dynamic;
	/**
		Decorator to verify the named module is frozen.
	**/
	static public function _requires_frozen(fxn:Dynamic):Dynamic;
	/**
		Resolve a relative module name to an absolute one.
	**/
	static public function _resolve_name(name:Dynamic, _package:Dynamic, level:Dynamic):Dynamic;
	/**
		Verify arguments are "sane".
	**/
	static public function _sanity_check(name:Dynamic, _package:Dynamic, level:Dynamic):Dynamic;
	/**
		Setup importlib by importing needed built-in modules and injecting them
		into the global namespace.
		
		As sys is needed for sys.modules access and _imp is needed to load built-in
		modules, those two modules must be explicitly passed in.
	**/
	static public function _setup(sys_module:Dynamic, _imp_module:Dynamic):Dynamic;
	static public function _spec_from_module(module:Dynamic, ?loader:Dynamic, ?origin:Dynamic):Dynamic;
	/**
		Print the message to stderr if -v/PYTHONVERBOSE is turned on.
	**/
	static public function _verbose_message(message:Dynamic, ?args:python.VarArgs<Dynamic>, ?verbosity:Dynamic):Dynamic;
	/**
		Simple substitute for functools.update_wrapper.
	**/
	static public function _wrap(_new:Dynamic, old:Dynamic):Dynamic;
	/**
		Create a module based on the provided spec.
	**/
	static public function module_from_spec(spec:Dynamic):Dynamic;
	/**
		Return a module spec based on various loader methods.
	**/
	static public function spec_from_loader(name:Dynamic, loader:Dynamic, ?origin:Dynamic, ?is_package:Dynamic):Dynamic;
}