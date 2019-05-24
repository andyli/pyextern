/* This file is generated, do not edit! */
package tensorflow.tools.compatibility.ast_edits;
@:pythonImport("tensorflow.tools.compatibility.ast_edits", "ASTCodeUpgrader") extern class ASTCodeUpgrader {
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
	public function ___init__(api_change_spec:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(api_change_spec:Dynamic):Void;
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
		Process the given python file for incompatible changes.
		
		Args:
		  in_filename: filename to parse
		  out_filename: output file to write to
		Returns:
		  A tuple representing number of files processed, log of actions, errors
	**/
	public function process_file(in_filename:Dynamic, out_filename:Dynamic):Dynamic;
	/**
		Process the given python file for incompatible changes.
		
		This function is split out to facilitate StringIO testing from
		tf_upgrade_test.py.
		
		Args:
		  in_filename: filename to parse
		  in_file: opened file (or StringIO)
		  out_filename: output file to write to
		  out_file: opened file (or StringIO)
		Returns:
		  A tuple representing number of files processed, log of actions, errors
	**/
	public function process_opened_file(in_filename:Dynamic, in_file:Dynamic, out_filename:Dynamic, out_file:Dynamic):Dynamic;
	/**
		Processes upgrades on an entire tree of python files in place.
		
		Note that only Python files. If you have custom code in other languages,
		you will need to manually upgrade those.
		
		Args:
		  root_directory: Directory to walk and process.
		  output_root_directory: Directory to use as base.
		  copy_other_files: Copy files that are not touched by this converter.
		
		Returns:
		  A tuple of files processed, the report string ofr all files, and errors
	**/
	public function process_tree(root_directory:Dynamic, output_root_directory:Dynamic, copy_other_files:Dynamic):Dynamic;
}