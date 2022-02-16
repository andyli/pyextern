/* This file is generated, do not edit! */
package torch._package.analyze.is_from_package;
@:pythonImport("torch.package.analyze.is_from_package") extern class Is_from_package_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return whether an object was loaded from a package.
		
		Note: packaged objects from externed modules will return ``False``.
	**/
	static public function is_from_package(obj:Dynamic):Dynamic;
	static public function is_mangled(name:Dynamic):Dynamic;
}