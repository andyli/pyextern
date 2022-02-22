/* This file is generated, do not edit! */
package pyarrow.fs;
@:pythonImport("pyarrow.fs", "FSSpecHandler") extern class FSSpecHandler {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(fs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fs:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public var _abc_impl : Dynamic;
	static public function _create_file_info(path:Dynamic, info:Dynamic):Dynamic;
	public function _delete_dir_contents(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.copy_file(self, src, dest)
		
		Implement PyFileSystem.copy_file(...).
		
		Parameters
		----------
		src : str
		    path of what should be copied.
		dest : str
		    path of where it should be copied to.
	**/
	public function copy_file(src:Dynamic, dest:Dynamic):Dynamic;
	/**
		FileSystemHandler.create_dir(self, path, recursive)
		
		Implement PyFileSystem.create_dir(...).
		
		Parameters
		----------
		path : str
		    path of the directory.
		recursive : bool
		    if the parent directories should be created too.
	**/
	public function create_dir(path:Dynamic, recursive:Dynamic):Dynamic;
	/**
		FileSystemHandler.delete_dir(self, path)
		
		Implement PyFileSystem.delete_dir(...).
		
		Parameters
		----------
		path : str
		    path of the directory.
	**/
	public function delete_dir(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.delete_dir_contents(self, path)
		
		Implement PyFileSystem.delete_dir_contents(...).
		
		Parameters
		----------
		path : str
		    path of the directory.
	**/
	public function delete_dir_contents(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.delete_file(self, path)
		
		Implement PyFileSystem.delete_file(...).
		
		Parameters
		----------
		path : str
		    path of the file.
	**/
	public function delete_file(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.delete_root_dir_contents(self)
		
		Implement PyFileSystem.delete_dir_contents("/", accept_root_dir=True).
	**/
	public function delete_root_dir_contents():Dynamic;
	/**
		FileSystemHandler.get_file_info(self, paths)
		
		Implement PyFileSystem.get_file_info(paths).
		
		Parameters
		----------
		paths : list of str
		    paths for which we want to retrieve the info.
	**/
	public function get_file_info(paths:Dynamic):Dynamic;
	/**
		FileSystemHandler.get_file_info_selector(self, selector)
		
		Implement PyFileSystem.get_file_info(selector).
		
		Parameters
		----------
		selector : FileSelector
		    selector for which we want to retrieve the info.
	**/
	public function get_file_info_selector(selector:Dynamic):Dynamic;
	/**
		FileSystemHandler.get_type_name(self)
		
		Implement PyFileSystem.type_name.
	**/
	public function get_type_name():Dynamic;
	/**
		FileSystemHandler.move(self, src, dest)
		
		Implement PyFileSystem.move(...).
		
		Parameters
		----------
		src : str
		    path of what should be moved.
		dest : str
		    path of where it should be moved to.
	**/
	public function move(src:Dynamic, dest:Dynamic):Dynamic;
	/**
		FileSystemHandler.normalize_path(self, path)
		
		Implement PyFileSystem.normalize_path(...).
		
		Parameters
		----------
		path : str
		    path of what should be normalized.
	**/
	public function normalize_path(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.open_append_stream(self, path, metadata)
		
		Implement PyFileSystem.open_append_stream(...).
		
		Parameters
		----------
		path : str
		    path of what should be opened.
		metadata :  mapping
		    Mapping of string keys to string values.
		    Some filesystems support storing metadata along the file
		    (such as "Content-Type").
	**/
	public function open_append_stream(path:Dynamic, metadata:Dynamic):Dynamic;
	/**
		FileSystemHandler.open_input_file(self, path)
		
		Implement PyFileSystem.open_input_file(...).
		
		Parameters
		----------
		path : str
		    path of what should be opened.
	**/
	public function open_input_file(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.open_input_stream(self, path)
		
		Implement PyFileSystem.open_input_stream(...).
		
		Parameters
		----------
		path : str
		    path of what should be opened.
	**/
	public function open_input_stream(path:Dynamic):Dynamic;
	/**
		FileSystemHandler.open_output_stream(self, path, metadata)
		
		Implement PyFileSystem.open_output_stream(...).
		
		Parameters
		----------
		path : str
		    path of what should be opened.
		metadata :  mapping
		    Mapping of string keys to string values.
		    Some filesystems support storing metadata along the file
		    (such as "Content-Type").
	**/
	public function open_output_stream(path:Dynamic, metadata:Dynamic):Dynamic;
}