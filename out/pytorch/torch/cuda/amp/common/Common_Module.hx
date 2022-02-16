/* This file is generated, do not edit! */
package torch.cuda.amp.common;
@:pythonImport("torch.cuda.amp.common") extern class Common_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function amp_definitely_not_available():Dynamic;
	/**
		Return the spec for the specified module.
		
		First, sys.modules is checked to see if the module was already imported. If
		so, then sys.modules[name].__spec__ is returned. If that happens to be
		set to None, then ValueError is raised. If the module is not in
		sys.modules, then sys.meta_path is searched for a suitable spec with the
		value of 'path' given to the finders. None is returned if no spec could
		be found.
		
		If the name is for submodule (contains a dot), the parent module is
		automatically imported.
		
		The name and package arguments work the same as importlib.import_module().
		In other words, relative module names (with leading dots) work.
	**/
	static public function find_spec(name:Dynamic, ?_package:Dynamic):Dynamic;
}