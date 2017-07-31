/* This file is generated, do not edit! */
package tensorflow.contrib.session_bundle.bundle_shim;
@:pythonImport("tensorflow.contrib.session_bundle.bundle_shim") extern class Bundle_shim_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add input tensor to signature_def.
		
		Args:
		  tensor_name: string name of tensor to add to signature_def inputs
		  map_key: string key to key into signature_def inputs map
		  signature_def: object of type  meta_graph_pb2.SignatureDef()
		
		Sideffect:
		  adds a TensorInfo with tensor_name to signature_def inputs map keyed with
		  map_key
	**/
	static public function _add_input_to_signature_def(tensor_name:Dynamic, map_key:Dynamic, signature_def:Dynamic):Dynamic;
	/**
		Add output tensor to signature_def.
		
		Args:
		  tensor_name: string name of tensor to add to signature_def outputs
		  map_key: string key to key into signature_def outputs map
		  signature_def: object of type  meta_graph_pb2.SignatureDef()
		
		Sideffect:
		  adds a TensorInfo with tensor_name to signature_def outputs map keyed with
		  map_key
	**/
	static public function _add_output_to_signature_def(tensor_name:Dynamic, map_key:Dynamic, signature_def:Dynamic):Dynamic;
	/**
		Convert default signature to object of type SignatureDef.
		
		Args:
		  signatures: object of type manifest_pb2.Signatures()
		
		Returns:
		  object of type SignatureDef which contains a converted version of default
		  signature from input signatures object
		
		  Returns None if signature is of generic type because it cannot be converted
		  to SignatureDef.
	**/
	static public function _convert_default_signature_to_signature_def(signatures:Dynamic):Dynamic;
	/**
		Convert named signatures to object of type SignatureDef.
		
		Args:
		  signatures: object of type manifest_pb2.Signatures()
		
		Returns:
		  object of type SignatureDef which contains a converted version of named
		  signatures from input signatures object
		
		Raises:
		  RuntimeError: if input and output named signatures are not of type
		  GenericSignature
	**/
	static public function _convert_named_signatures_to_signature_def(signatures:Dynamic):Dynamic;
	/**
		Produce default and named upconverted SignatureDef objects from Signatures.
		
		Args:
		  metagraph_def: object of type meta_graph_pb2.MetaGraphDef containing legacy
		  format Session Bundle signatures
		
		Returns:
		  default_signature_def: object of type SignatureDef which contains an
		      upconverted version of default signatures in metagraph_def
		  named_signature_def: object of type SignatureDef which contains an
		      upconverted version of named signatures in metagraph_def
	**/
	static public function _convert_signatures_to_signature_defs(metagraph_def:Dynamic):Dynamic;
	/**
		Load legacy TF Exporter/SessionBundle checkpoint.
		
		Args:
		  export_dir: the directory that contains files exported by exporter.
		  target: The execution engine to connect to. See target in tf.Session()
		  config: A ConfigProto proto with configuration options. See config in
		  tf.Session()
		
		Returns:
		  session: a tensorflow session created from the variable files.
		  metagraph_def: The `MetaGraphDef` protocol buffer loaded in the provided
		  session. This can be used to further extract signature-defs,
		  collection-defs, etc.
		  This model is up-converted to SavedModel format. Specifically, metagraph_def
		  SignatureDef field is populated with Signatures converted from legacy
		  signatures contained within CollectionDef
		
		Raises:
		  RuntimeError: If metagraph already contains signature_def and cannot be
		  up-converted.
	**/
	static public function _load_saved_model_from_session_bundle_path(export_dir:Dynamic, target:Dynamic, config:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Load session bundle from the given path.
		
		The function reads input from the export_dir, constructs the graph data to the
		default graph and restores the parameters for the session created.
		
		Args:
		  export_dir: the directory that contains files exported by exporter.
		  tags: Set of string tags to identify the required MetaGraphDef when model is
		        saved as SavedModel. These should correspond to the tags used when
		        saving the variables using the SavedModel `save()` API.
		  target: The execution engine to connect to. See target in tf.Session()
		  config: A ConfigProto proto with configuration options. See config in
		          tf.Session()
		
		Returns:
		  session: a tensorflow session created from the variable files.
		  meta_graph: a meta graph proto saved in the exporter directory.
		
		Raises:
		  RuntimeError: if the required files are missing or contain unrecognizable
		  fields, i.e. the exported model is invalid.
	**/
	static public function load_session_bundle_or_saved_model_bundle_from_path(export_dir:Dynamic, ?tags:Dynamic, ?target:Dynamic, ?config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}