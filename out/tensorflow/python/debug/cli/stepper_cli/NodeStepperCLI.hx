/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.stepper_cli;
@:pythonImport("tensorflow.python.debug.cli.stepper_cli", "NodeStepperCLI") extern class NodeStepperCLI {
	static public var NEXT_NODE_POINTER_STR : Dynamic;
	static public var STATE_CONT : Dynamic;
	static public var STATE_DIRTY_VARIABLE : Dynamic;
	static public var STATE_DUMPED_INTERMEDIATE : Dynamic;
	static public var STATE_IS_PLACEHOLDER : Dynamic;
	static public var STATE_OVERRIDDEN : Dynamic;
	static public var STATE_UNFEEDABLE : Dynamic;
	static public var _FEED_COLORS : Dynamic;
	static public var _MESSAGE_TEMPLATES : Dynamic;
	static public var _STATE_COLORS : Dynamic;
	static public var _UPDATED_ATTRIBUTE : Dynamic;
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
	public function ___init__(node_stepper:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(node_stepper:Dynamic):Void;
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
		Calculate the next target for "step" action based on current state.
	**/
	public function _calculate_next():Dynamic;
	/**
		Get a string of status labels for a graph element.
		
		A status label indicates that a node has a certain state in this
		node-stepper CLI invocation. For example, 1) that the node has been
		continued-to and a handle to its output tensor is available to the node
		stepper; 2) the node is a Variable and its value has been altered, e.g.,
		by continuing to a variable-updating node, since the beginning of this
		node-stepper invocation (i.e., "dirty variable").
		
		Args:
		  element_name: (str) name of the graph element.
		  handle_node_names: (list of str) Names of the nodes of which the output
		    tensors' handles are available.
		  intermediate_tensor_names: (list of str) Names of the intermediate tensor
		    dumps generated from the graph element.
		  override_names: (list of str) Names of the tensors of which the values
		    are overridden.
		  dirty_variable_names: (list of str) Names of the dirty variables.
		
		Returns:
		  (RichLine) The rich text string of status labels that currently apply to
		    the graph element.
	**/
	public function _get_status_labels(element_name:Dynamic, handle_node_names:Dynamic, intermediate_tensor_names:Dynamic, override_names:Dynamic, dirty_variable_names:Dynamic):Dynamic;
	/**
		Initialize the state of this stepper CLI.
	**/
	public function _initialize_state():Dynamic;
	/**
		Get legend for node-status labels.
		
		Returns:
		  (debugger_cli_common.RichTextLines) Legend text.
	**/
	public function _node_status_label_legend():Dynamic;
	/**
		Generate a report of the feed types used in the cont/step call.
		
		Returns:
		  (debugger_cli_common.RichTextLines) A RichTextLines representation of the
		    feeds used in the last cont/step call.
	**/
	public function _report_last_feed_types():Dynamic;
	/**
		Generate a report of the variables updated in the last cont/step call.
		
		Returns:
		  (debugger_cli_common.RichTextLines) A RichTextLines representation of the
		    variables updated in the last cont/step call.
	**/
	public function _report_last_updated():Dynamic;
	/**
		Resolve tensor name from graph element name.
		
		Args:
		  element_name: (str) Name of the graph element to resolve.
		
		Returns:
		  (list) Name of the tensor(s). If element_name is the name of a tensor in
		  the transitive closure, return [element_name]. If element_name is the
		  name of a node in the transitive closure, return the list of output
		  tensors from the node that are in the transitive closure. Otherwise,
		  return empty list.
	**/
	public function _resolve_tensor_names(element_name:Dynamic):Dynamic;
	/**
		Continue-to action on the graph.
	**/
	public function cont(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Inject value to a given tensor.
		
		Args:
		  args: (list of str) command-line arguments for the "step" command.
		  screen_info: Information about screen.
		
		Returns:
		  (RichTextLines) Screen output for the result of the stepping action.
	**/
	public function inject_value(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		List the sorted transitive closure of the stepper's fetches.
	**/
	public function list_sorted_nodes(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Print the value of a tensor that the stepper has access to.
	**/
	public function print_tensor(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Step once.
		
		Args:
		  args: (list of str) command-line arguments for the "step" command.
		  screen_info: Information about screen.
		
		Returns:
		  (RichTextLines) Screen output for the result of the stepping action.
	**/
	public function step(args:Dynamic, ?screen_info:Dynamic):Dynamic;
}