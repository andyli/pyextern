/* This file is generated, do not edit! */
package tensorflow.contrib.bigtable.python.ops.bigtable_api;
@:pythonImport("tensorflow.contrib.bigtable.python.ops.bigtable_api", "BigtableClient") extern class BigtableClient {
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
		Creates a BigtableClient that can be used to open connections to tables.
		
		Args:
		  project_id: A string representing the GCP project id to connect to.
		  instance_id: A string representing the Bigtable instance to connect to.
		  connection_pool_size: (Optional.) A number representing the number of
		    concurrent connections to the Cloud Bigtable service to make.
		  max_receive_message_size: (Optional.) The maximum bytes received in a
		    single gRPC response.
		
		Raises:
		  ValueError: if the arguments are invalid (e.g. wrong type, or out of
		    expected ranges (e.g. negative).)
	**/
	@:native("__init__")
	public function ___init__(project_id:Dynamic, instance_id:Dynamic, ?connection_pool_size:Dynamic, ?max_receive_message_size:Dynamic):Dynamic;
	/**
		Creates a BigtableClient that can be used to open connections to tables.
		
		Args:
		  project_id: A string representing the GCP project id to connect to.
		  instance_id: A string representing the Bigtable instance to connect to.
		  connection_pool_size: (Optional.) A number representing the number of
		    concurrent connections to the Cloud Bigtable service to make.
		  max_receive_message_size: (Optional.) The maximum bytes received in a
		    single gRPC response.
		
		Raises:
		  ValueError: if the arguments are invalid (e.g. wrong type, or out of
		    expected ranges (e.g. negative).)
	**/
	public function new(project_id:Dynamic, instance_id:Dynamic, ?connection_pool_size:Dynamic, ?max_receive_message_size:Dynamic):Void;
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
		Opens a table and returns a `tf.contrib.bigtable.BigtableTable` object.
		
		Args:
		  name: A `tf.string` `tf.Tensor` name of the table to open.
		  snapshot: Either a `tf.string` `tf.Tensor` snapshot id, or `True` to
		    request the creation of a snapshot. (Note: currently unimplemented.)
		
		Returns:
		  A `tf.contrib.bigtable.BigtableTable` Python object representing the
		  operations available on the table.
	**/
	public function table(name:Dynamic, ?snapshot:Dynamic):Dynamic;
}