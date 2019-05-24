/* This file is generated, do not edit! */
package tensorflow.python.saved_model.builder_impl;
@:pythonImport("tensorflow.python.saved_model.builder_impl", "SavedModelBuilder") extern class SavedModelBuilder {
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
	public function ___init__(export_dir:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(export_dir:Dynamic):Void;
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
		Add asset and op collections to be saved.
	**/
	public function _add_collections(assets_collection:Dynamic, main_op:Dynamic, train_op:Dynamic):Dynamic;
	/**
		Add train op to the SavedModel.
		
		Note that this functionality is in development, and liable to be
		moved elsewhere.
		
		Args:
		  train_op: Op or group of ops that are used for training. These are stored
		    as a collection with key TRAIN_OP_KEY, but not executed.
		
		Raises:
		  TypeError if Train op is not of type `Operation`.
	**/
	public function _add_train_op(train_op:Dynamic):Dynamic;
	/**
		Adds main op to the SavedModel.
		
		Args:
		  main_op: Main op to run as part of graph initialization. If None, no main
		    op will be added to the graph.
		
		Raises:
		  TypeError: if main op is provided but is not of type `Operation`.
		  ValueError: if the Graph already contains an init op.
	**/
	public function _maybe_add_main_op(main_op:Dynamic):Dynamic;
	/**
		Creates a sharded saver if one does not already exist.
	**/
	public function _maybe_create_saver(?saver:Dynamic):Dynamic;
	/**
		Saves asset to the meta graph and writes asset files to disk.
		
		Args:
		  assets_collection_to_add: The collection where the asset paths are setup.
	**/
	public function _save_and_write_assets(?assets_collection_to_add:Dynamic):Dynamic;
	/**
		Tags the meta graph def and adds it to the SavedModel.
		
		Tags the meta graph def with the supplied tags, adds signature defs to it if
		provided and appends the meta graph def to the SavedModel proto.
		
		Args:
		  meta_graph_def: The meta graph def to add to the SavedModel.
		  tags: The set of tags to annotate the meta graph def with.
		  signature_def_map: The map of signature defs to be added to the meta graph
		      def.
	**/
	public function _tag_and_add_meta_graph(meta_graph_def:Dynamic, tags:Dynamic, signature_def_map:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Validates the `SignatureDef` entries in the signature def map.
		
		Validation of entries in the signature def map includes ensuring that the
		`name` and `dtype` fields of the TensorInfo protos of the `inputs` and
		`outputs` of each `SignatureDef` are populated. Also ensures that reserved
		SigantureDef keys for the initialization and train ops are not used.
		
		Args:
		  signature_def_map: The map of signature defs to be validated.
		
		Raises:
		  AssertionError: If a TensorInfo is not valid.
		  KeyError: If a reserved signature key is used in the map.
	**/
	public function _validate_signature_def_map(signature_def_map:Dynamic):Dynamic;
	/**
		Validates the `TensorInfo` proto.
		
		Checks if the `encoding` (`name` or `coo_sparse`) and `dtype` fields exist
		and are non-empty.
		
		Args:
		  tensor_info: `TensorInfo` protocol buffer to validate.
		
		Raises:
		  AssertionError: If the `name` or `dtype` fields of the supplied
		      `TensorInfo` proto are not populated.
	**/
	public function _validate_tensor_info(tensor_info:Dynamic):Dynamic;
	/**
		Adds the current meta graph to the SavedModel.
		
		Creates a Saver in the current scope and uses the Saver to export the meta
		graph def. Invoking this API requires the `add_meta_graph_and_variables()`
		API to have been invoked before.
		
		Args:
		  tags: The set of tags to annotate the meta graph def with.
		  signature_def_map: The map of signature defs to be added to the meta graph
		      def.
		  assets_collection: Assets to be saved with SavedModel. Note
		      that this list should be a subset of the assets saved as part of
		      the first meta graph in the SavedModel.
		  clear_devices: Set to true if the device info on the default graph should
		      be cleared.
		  init_op: Op or group of ops to execute when the graph is loaded. Note
		      that when the init_op is specified it is run after the restore op at
		      load-time.
		  train_op: Op or group of opts that trains the model when run. This will
		    not be run automatically when the graph is loaded, instead saved in
		    a SignatureDef accessible through the exported MetaGraph.
		  saver: An instance of tf.train.Saver that will be used to export the
		    metagraph. If None, a sharded Saver that restores all variables will
		    be used.
		
		Raises:
		  AssertionError: If the variables for the SavedModel have not been saved
		      yet, or if the graph already contains one or more legacy init ops.
	**/
	public function add_meta_graph(tags:Dynamic, ?signature_def_map:Dynamic, ?assets_collection:Dynamic, ?legacy_init_op:Dynamic, ?clear_devices:Dynamic, ?main_op:Dynamic, ?strip_default_attrs:Dynamic, ?saver:Dynamic):Dynamic;
	/**
		Adds the current meta graph to the SavedModel and saves variables.
		
		Creates a Saver to save the variables from the provided session. Exports the
		corresponding meta graph def. This function assumes that the variables to be
		saved have been initialized. For a given `SavedModelBuilder`, this API must
		be called exactly once and for the first meta graph to save. For subsequent
		meta graph defs to be added, the `add_meta_graph()` API must be used.
		
		Args:
		  sess: The TensorFlow session from which to save the meta graph and
		    variables.
		  tags: The set of tags with which to save the meta graph.
		  signature_def_map: The map of signature def map to add to the meta graph
		    def.
		  assets_collection: Assets to be saved with SavedModel.
		  clear_devices: Set to true if the device info on the default graph should
		      be cleared.
		  init_op: Op or group of ops to execute when the graph is loaded. Note
		      that when the init_op is specified it is run after the restore op at
		      load-time.
		  train_op: Op or group of ops that trains the model when run. This will
		    not be run automatically when the graph is loaded, instead saved in
		    a SignatureDef accessible through the exported MetaGraph.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  saver: An instance of tf.train.Saver that will be used to export the
		    metagraph and save variables. If None, a sharded Saver that restores
		    all variables will be used.
	**/
	public function add_meta_graph_and_variables(sess:Dynamic, tags:Dynamic, ?signature_def_map:Dynamic, ?assets_collection:Dynamic, ?legacy_init_op:Dynamic, ?clear_devices:Dynamic, ?main_op:Dynamic, ?strip_default_attrs:Dynamic, ?saver:Dynamic):Dynamic;
	/**
		Writes a `SavedModel` protocol buffer to disk.
		
		The function writes the SavedModel protocol buffer to the export directory
		in serialized format.
		
		Args:
		  as_text: Writes the SavedModel protocol buffer in text format to disk.
		
		Returns:
		  The path to which the SavedModel protocol buffer was written.
	**/
	public function save(?as_text:Dynamic):Dynamic;
}