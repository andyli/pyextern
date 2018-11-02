/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "RecordInput") extern class RecordInput {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs a RecordInput Op.
		
		Args:
		  file_pattern: File path to the dataset, possibly containing wildcards.
		    All matching files will be iterated over each epoch.
		  batch_size: How many records to return at a time.
		  buffer_size: The maximum number of records the buffer will contain.  This
		    _must_ be smaller than the total number of records in an epoch or
		    deadlock can occur.
		  parallelism: How many reader threads to use for reading from files.
		  shift_ratio: What percentage of the total number files to move the start
		    file forward by each epoch.
		  seed: Specify the random number seed used by generator that randomizes
		    records.
		  name: Optional name for the operation.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(file_pattern:Dynamic, ?batch_size:Dynamic, ?buffer_size:Dynamic, ?parallelism:Dynamic, ?shift_ratio:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs a RecordInput Op.
		
		Args:
		  file_pattern: File path to the dataset, possibly containing wildcards.
		    All matching files will be iterated over each epoch.
		  batch_size: How many records to return at a time.
		  buffer_size: The maximum number of records the buffer will contain.  This
		    _must_ be smaller than the total number of records in an epoch or
		    deadlock can occur.
		  parallelism: How many reader threads to use for reading from files.
		  shift_ratio: What percentage of the total number files to move the start
		    file forward by each epoch.
		  seed: Specify the random number seed used by generator that randomizes
		    records.
		  name: Optional name for the operation.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	public function new(file_pattern:Dynamic, ?batch_size:Dynamic, ?buffer_size:Dynamic, ?parallelism:Dynamic, ?shift_ratio:Dynamic, ?seed:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add a node that yields a minibatch every time it is executed.
	**/
	public function get_yield_op():Dynamic;
}