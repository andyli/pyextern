/* This file is generated, do not edit! */
package tensorflow.python.ops.summary_op_util;
@:pythonImport("tensorflow.python.ops.summary_op_util") extern class Summary_op_util_Module {
	static public var _INVALID_TAG_CHARACTERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Cleans a tag. Removes illegal characters for instance.
		
		Args:
		  name: The original tag name to be processed.
		
		Returns:
		  The cleaned tag name.
	**/
	static public function clean_tag(name:Dynamic):Dynamic;
	/**
		Adds keys to a collection.
		
		Args:
		  val: The value to add per each key.
		  collections: A collection of keys to add.
		  default_collections: Used if collections is None.
	**/
	static public function collect(val:Dynamic, collections:Dynamic, default_collections:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Determines if summary should be skipped.
		
		If using multiple replicas in distributed strategy, skip summaries on all
		replicas except the first one (replica_id=0).
		
		Returns:
		  True if the summary is skipped; False otherwise.
	**/
	static public function skip_summary():Dynamic;
	/**
		Enters a scope used for the summary and yields both the name and tag.
		
		To ensure that the summary tag name is always unique, we create a name scope
		based on `name` and use the full scope name in the tag.
		
		If `family` is set, then the tag name will be '<family>/<scope_name>', where
		`scope_name` is `<outer_scope>/<family>/<name>`. This ensures that `family`
		is always the prefix of the tag (and unmodified), while ensuring the scope
		respects the outer scope from this summary was created.
		
		Args:
		  name: A name for the generated summary node.
		  family: Optional; if provided, used as the prefix of the summary tag name.
		  default_name: Optional; if provided, used as default name of the summary.
		  values: Optional; passed as `values` parameter to name_scope.
		
		Yields:
		  A tuple `(tag, scope)`, both of which are unique and should be used for the
		  tag and the scope for the summary to output.
	**/
	static public function summary_scope(name:Dynamic, ?family:Dynamic, ?default_name:Dynamic, ?values:Dynamic):Dynamic;
}