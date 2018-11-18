/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.op_hint;
@:pythonImport("tensorflow.contrib.lite.python.op_hint", "_LiteAggregateOperand") extern class _LiteAggregateOperand {
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
	public function ___init__(aggregation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(aggregation:Dynamic):Void;
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
	public function add(sort:Dynamic, node:Dynamic):Dynamic;
	/**
		This adds the nodes to out_graphdef and returns an aggregated output.
		
		In particular, if you have 4 inputs to a hint stub, this will be the
		node that you can use as an output. I.e. you have 4 timesteps from a
		static rnn, then a fused UnidriecitonalLSTM will expect 1 input with
		all 4 time steps. So here we make a pack and return the output name of
		that pack.
		
		Args:
		  out_graphdef: A graphdef that is ready to have this input added.
		
		Returns:
		  The name of a pack that aggregates this node.
	**/
	public function aggregate_and_return_name_for_input(out_graphdef:Dynamic):Dynamic;
	/**
		This adds to `out_graphdef` all the unaggregated outputs.
		
		I.e. we are outputting from a fused stub, but we need to make it compatible
		with the unfused original graph so we insert an unpack. Ideally in a later
		stage the unpack -> pack sequences will be removed.
		
		Args:
		  fused_op_name: The name of the stub we are in the process of fusing.
		  output_index: The output output_index this object represents.
		  out_graphdef: The graphdef we are in the process of buildings
		
		Returns:
		  The type of the aggregated output (so we can finish building the stub
		  op).
	**/
	public function aggregate_and_return_name_for_output(fused_op_name:Dynamic, output_index:Dynamic, out_graphdef:Dynamic):Dynamic;
	/**
		Return a list of all node names in aggregation sorted sorter.
	**/
	public function flatten():Dynamic;
	/**
		Return a list of all the node protos in aggregation sorted order.
	**/
	public function flatten_nodes():Dynamic;
}