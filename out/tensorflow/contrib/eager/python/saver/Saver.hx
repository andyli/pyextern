/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.saver;
@:pythonImport("tensorflow.contrib.eager.python.saver", "Saver") extern class Saver {
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
		A  tf.train.Saver adapter for use when eager execution is enabled.
		
		  The API, and on-disk format, mimic tf.train.Saver except that no
		  Session is needed.
		
		Args:
		  var_list: The list of variables that will be saved and restored. Either a
		    list of `tf.Variable` objects, or a dictionary mapping names to
		    `tf.Variable` objects.
		
		Raises:
		  RuntimeError: if invoked when eager execution has not been enabled.
	**/
	@:native("__init__")
	public function ___init__(var_list:Dynamic):Dynamic;
	/**
		A  tf.train.Saver adapter for use when eager execution is enabled.
		
		  The API, and on-disk format, mimic tf.train.Saver except that no
		  Session is needed.
		
		Args:
		  var_list: The list of variables that will be saved and restored. Either a
		    list of `tf.Variable` objects, or a dictionary mapping names to
		    `tf.Variable` objects.
		
		Raises:
		  RuntimeError: if invoked when eager execution has not been enabled.
	**/
	public function new(var_list:Dynamic):Void;
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
		Restores previously saved variables.
		
		Args:
		  file_prefix: Path prefix where parameters were previously saved.
		    Typically obtained from a previous `save()` call, or from
		    `tf.train.latest_checkpoint`.
	**/
	public function restore(file_prefix:Dynamic):Dynamic;
	/**
		Saves variables.
		
		Args:
		  file_prefix: Path prefix of files created for the checkpoint.
		  global_step: If provided the global step number is appended to file_prefix
		    to create the checkpoint filename. The optional argument can be a
		    Tensor, a Variable, or an integer.
		
		Returns:
		  A string: prefix of filenames created for the checkpoint. This may be
		   an extension of file_prefix that is suitable to pass as an argument
		   to a subsequent call to `restore()`.
	**/
	public function save(file_prefix:Dynamic, ?global_step:Dynamic):Dynamic;
}