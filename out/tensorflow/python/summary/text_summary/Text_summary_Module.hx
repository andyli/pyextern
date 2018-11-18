/* This file is generated, do not edit! */
package tensorflow.python.summary.text_summary;
@:pythonImport("tensorflow.python.summary.text_summary") extern class Text_summary_Module {
	static public var PLUGIN_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a serialized tensor.proto.
		
		Args:
		  name: A name for the generated node. If display_name is not set, it will
		    also serve as the tag name in TensorBoard. (In that case, the tag
		    name will inherit tf name scopes.)
		  tensor: A tensor of any type and shape to serialize.
		  summary_description: A long description of the summary sequence. Markdown
		    is supported.
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  summary_metadata: Optional SummaryMetadata proto (which describes which
		    plugins may use the summary value).
		  family: Optional; if provided, used as the prefix of the summary tag,
		    which controls the name used for display on TensorBoard when
		    display_name is not set.
		  display_name: A string used to name this data in TensorBoard. If this is
		    not set, then the node name will be used instead.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function tensor_summary(name:Dynamic, tensor:Dynamic, ?summary_description:Dynamic, ?collections:Dynamic, ?summary_metadata:Dynamic, ?family:Dynamic, ?display_name:Dynamic):Dynamic;
	/**
		Summarizes textual data.
		
		Text data summarized via this plugin will be visible in the Text Dashboard
		in TensorBoard. The standard TensorBoard Text Dashboard will render markdown
		in the strings, and will automatically organize 1d and 2d tensors into tables.
		If a tensor with more than 2 dimensions is provided, a 2d subarray will be
		displayed along with a warning message. (Note that this behavior is not
		intrinsic to the text summary api, but rather to the default TensorBoard text
		plugin.)
		
		Args:
		  name: A name for the generated node. Will also serve as a series name in
		    TensorBoard.
		  tensor: a string-type Tensor to summarize.
		  collections: Optional list of ops.GraphKeys.  The collections to add the
		    summary to.  Defaults to [_ops.GraphKeys.SUMMARIES]
		
		Returns:
		  A TensorSummary op that is configured so that TensorBoard will recognize
		  that it contains textual data. The TensorSummary is a scalar `Tensor` of
		  type `string` which contains `Summary` protobufs.
		
		Raises:
		  ValueError: If tensor has the wrong type.
	**/
	static public function text_summary(name:Dynamic, tensor:Dynamic, ?collections:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}