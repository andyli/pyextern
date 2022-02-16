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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		    are initialized and `local_init_op` can be run. Must return an empty 1D
		    string tensor when the global variables are initialized, or a non-empty
		    1D string tensor listing the names of the non-initialized global
		    variables.
		  local_init_op: Optional op to initialize local variables.
		  summary_op: Optional op to gather all summaries.  Must return a scalar
		    string tensor containing a serialized `Summary` proto.
		  saver: Optional `tf.compat.v1.train.Saver` object to use to save and
		    restore variables.  May also be a `tf.train.Checkpoint` object, in which
		    case object-based checkpoints are saved. This will also load some
		    object-based checkpoints saved from elsewhere, but that loading may be
		    fragile since it uses fixed keys rather than performing a full
		    graph-based match. For example if a variable has two paths from the
		    `Checkpoint` object because two `Model` objects share the `Layer` object
		    that owns it, removing one `Model` may change the keys and break
		    checkpoint loading through this API, whereas a graph-based match would
		    match the variable through the other `Model`.
		  copy_from_scaffold: Optional scaffold object to copy fields from. Its
		    fields will be overwritten by the provided fields in this function.
		  local_init_feed_dict: Optional session feed dictionary to use when running
		    the local_init_op.
	**/
	@:native("__init__")
	public function ___init__(?init_op:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?local_init_op:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?copy_from_scaffold:Dynamic, ?local_init_feed_dict:Dynamic):Dynamic;
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
		    are initialized and `local_init_op` can be run. Must return an empty 1D
		    string tensor when the global variables are initialized, or a non-empty
		    1D string tensor listing the names of the non-initialized global
		    variables.
		  local_init_op: Optional op to initialize local variables.
		  summary_op: Optional op to gather all summaries.  Must return a scalar
		    string tensor containing a serialized `Summary` proto.
		  saver: Optional `tf.compat.v1.train.Saver` object to use to save and
		    restore variables.  May also be a `tf.train.Checkpoint` object, in which
		    case object-based checkpoints are saved. This will also load some
		    object-based checkpoints saved from elsewhere, but that loading may be
		    fragile since it uses fixed keys rather than performing a full
		    graph-based match. For example if a variable has two paths from the
		    `Checkpoint` object because two `Model` objects share the `Layer` object
		    that owns it, removing one `Model` may change the keys and break
		    checkpoint loading through this API, whereas a graph-based match would
		    match the variable through the other `Model`.
		  copy_from_scaffold: Optional scaffold object to copy fields from. Its
		    fields will be overwritten by the provided fields in this function.
		  local_init_feed_dict: Optional session feed dictionary to use when running
		    the local_init_op.
	**/
	public function new(?init_op:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?local_init_op:Dynamic, ?summary_op:Dynamic, ?saver:Dynamic, ?copy_from_scaffold:Dynamic, ?local_init_feed_dict:Dynamic):Void;
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
		`tf.compat.v1.local_variables_initializer`,
		`tf.compat.v1.tables_initializer`, and also
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
	public var local_init_feed_dict : Dynamic;
	public var local_init_op : Dynamic;
	public var ready_for_local_init_op : Dynamic;
	public var ready_op : Dynamic;
	public var saver : Dynamic;
	public var summary_op : Dynamic;
}