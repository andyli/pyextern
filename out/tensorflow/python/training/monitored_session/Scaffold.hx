/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session", "Scaffold") extern class Scaffold {
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
		Create a scaffold.
		
		Args:
		  init_op: Optional op for initializing variables.
		  init_feed_dict: Optional session feed dictionary to use when running the
		    init_op.
		  init_fn: Optional function to use to initialize the model after running
		    the init_op.  Will be called as `init_fn(scaffold, session)`.
		  ready_op: Optional op to verify that the variables are initialized.  Must
		    return an empty 1D string tensor when the variables are initialized, or
		    a non-empty 1D string tensor listing the names of the non-initialized
		    variables.
		  ready_for_local_init_op: Optional op to verify that the global variables
		    are initialized and `local_init_op` can be run. Must return an empty
		    1D string tensor when the global variables are initialized, or a
		    non-empty 1D string tensor listing the names of the non-initialized
		    global variables.
		  local_init_op: Optional op to initialize local variables.
		  summary_op: Optional op to gather all summaries.  Must return a scalar
		    string tensor containing a serialized `Summary` proto.
		  saver: Optional `tf.train.Saver` object to use to save and restore
		    variables.
		  copy_from_scaffold: Optional scaffold object to copy fields from. Its
		    fields will be overwritten by the provided fields in this function.
	**/
	@:native("__init__")
	public function ___init__(?init_op:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?local_init_op:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?copy_from_scaffold:Dynamic):Dynamic;
	/**
		Create a scaffold.
		
		Args:
		  init_op: Optional op for initializing variables.
		  init_feed_dict: Optional session feed dictionary to use when running the
		    init_op.
		  init_fn: Optional function to use to initialize the model after running
		    the init_op.  Will be called as `init_fn(scaffold, session)`.
		  ready_op: Optional op to verify that the variables are initialized.  Must
		    return an empty 1D string tensor when the variables are initialized, or
		    a non-empty 1D string tensor listing the names of the non-initialized
		    variables.
		  ready_for_local_init_op: Optional op to verify that the global variables
		    are initialized and `local_init_op` can be run. Must return an empty
		    1D string tensor when the global variables are initialized, or a
		    non-empty 1D string tensor listing the names of the non-initialized
		    global variables.
		  local_init_op: Optional op to initialize local variables.
		  summary_op: Optional op to gather all summaries.  Must return a scalar
		    string tensor containing a serialized `Summary` proto.
		  saver: Optional `tf.train.Saver` object to use to save and restore
		    variables.
		  copy_from_scaffold: Optional scaffold object to copy fields from. Its
		    fields will be overwritten by the provided fields in this function.
	**/
	public function new(?init_op:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?local_init_op:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?copy_from_scaffold:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns an op that groups the default local init ops.
		
		This op is used during session initialization when a Scaffold is
		initialized without specifying the local_init_op arg. It includes
		`tf.local_variables_initializer`, `tf.tables_initializer`, and also
		initializes local session resources.
		
		Returns:
		  The default Scaffold local init op.
	**/
	static public function default_local_init_op():Dynamic;
	/**
		Creates operations if needed and finalizes the graph.
	**/
	public function finalize():Dynamic;
	/**
		Get from cache or create a default operation.
	**/
	static public function get_or_default(arg_name:Dynamic, collection_key:Dynamic, default_constructor:Dynamic):Dynamic;
	public var init_feed_dict : Dynamic;
	public var init_fn : Dynamic;
	public var init_op : Dynamic;
	public var local_init_op : Dynamic;
	public var ready_for_local_init_op : Dynamic;
	public var ready_op : Dynamic;
	public var saver : Dynamic;
	public var summary_op : Dynamic;
}