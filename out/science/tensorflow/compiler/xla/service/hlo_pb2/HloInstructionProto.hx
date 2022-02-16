/* This file is generated, do not edit! */
package tensorflow.compiler.xla.service.hlo_pb2;
@:pythonImport("tensorflow.compiler.xla.service.hlo_pb2", "HloInstructionProto") extern class HloInstructionProto {
	/**
		Returns the size of the message in bytes.
	**/
	public function ByteSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Clears the message.
	**/
	public function Clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Clears a message field.
	**/
	public function ClearExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Clears a message field.
	**/
	public function ClearField(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Copies a protocol message into the current message.
	**/
	public function CopyFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var DESCRIPTOR : Dynamic;
	/**
		Discards the unknown fields.
	**/
	public function DiscardUnknownFields(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Extension dict
	**/
	public var Extensions : Dynamic;
	/**
		Finds unset required fields.
	**/
	public function FindInitializationErrors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates new method instance from given serialized data.
	**/
	public function FromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if a message field is set.
	**/
	public function HasExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if a message field is set.
	**/
	public function HasField(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if all required fields of a protocol message are set.
	**/
	public function IsInitialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Lists all set fields of a message.
	**/
	public function ListFields(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Merges a protocol message into the current message.
	**/
	public function MergeFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Merges a serialized message into the current message.
	**/
	public function MergeFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parses a serialized message into the current message.
	**/
	public function ParseFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Registers an extension with the current message.
	**/
	public function RegisterExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Serializes the message to a string, even if it isn't initialized.
	**/
	public function SerializePartialToString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Serializes the message to a string, only for initialized messages.
	**/
	public function SerializeToString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Sets the has bit of the given field in its parent message.
	**/
	public function SetInParent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A ProtocolMessage
	**/
	public function SliceDimensions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parse unknown field set
	**/
	public function UnknownFields(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the name of the field set inside a oneof, or None if no field is set.
	**/
	public function WhichOneof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Raises TypeError if the caller is not in a _pb2.py file.
	**/
	static public function _CheckCalledFromGeneratedFile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Internal method used by the protocol message implementation.
		Clients should not call this directly.
		
		Sets a listener that this message will call on certain state transitions.
		
		The purpose of this method is to register back-edges from children to
		parents at runtime, for the purpose of setting "has" bits and
		byte-size-dirty bits in the parent and ancestor objects whenever a child or
		descendant object is modified.
		
		If the client wants to disconnect this Message from the object tree, she
		explicitly sets callback to None.
		
		If message_listener is None, unregisters any existing listener.  Otherwise,
		message_listener must implement the MessageListener interface in
		internal/message_listener.py, and we discard any listener registered
		via a previous _SetListener() call.
	**/
	public function _SetListener(message_listener:Dynamic):Dynamic;
	/**
		Metaclass for protocol message classes created at runtime from Descriptors.
		
		The protocol compiler currently uses this metaclass to create protocol
		message classes at runtime.  Clients can also manually create their own
		classes at runtime, as in this example:
		
		mydescriptor = Descriptor(.....)
		factory = symbol_database.Default()
		factory.pool.AddDescriptor(mydescriptor)
		MyProtoClass = factory.GetPrototype(mydescriptor)
		myproto_instance = MyProtoClass()
		myproto.foo_field = 23
		...
		
		The above example will not work for nested types. If you wish to include them,
		use reflection.MakeClass() instead of manually instantiating the class in
		order to create the appropriate class structure.
	**/
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Makes a deep copy of the class.
	**/
	public function __deepcopy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Support the pickle protocol.
	**/
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Support the pickle protocol.
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
		Outputs a unicode representation of the message.
	**/
	public function __unicode__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _extensions_by_name : Dynamic;
	static public var _extensions_by_number : Dynamic;
	/**
		Field xla.HloInstructionProto.all_reduce_id
	**/
	public var all_reduce_id : Dynamic;
	/**
		Field xla.HloInstructionProto.backend_config
	**/
	public var backend_config : Dynamic;
	/**
		Field xla.HloInstructionProto.batch_group_count
	**/
	public var batch_group_count : Dynamic;
	/**
		Field xla.HloInstructionProto.called_computation_ids
	**/
	public var called_computation_ids : Dynamic;
	/**
		Field xla.HloInstructionProto.channel_id
	**/
	public var channel_id : Dynamic;
	/**
		Field xla.HloInstructionProto.channel_name
	**/
	public var channel_name : Dynamic;
	/**
		Field xla.HloInstructionProto.cholesky_options
	**/
	public var cholesky_options : Dynamic;
	/**
		Field xla.HloInstructionProto.comparison_direction
	**/
	public var comparison_direction : Dynamic;
	/**
		Field xla.HloInstructionProto.comparison_type
	**/
	public var comparison_type : Dynamic;
	/**
		Field xla.HloInstructionProto.constrain_layout
	**/
	public var constrain_layout : Dynamic;
	/**
		Field xla.HloInstructionProto.control_predecessor_ids
	**/
	public var control_predecessor_ids : Dynamic;
	/**
		Field xla.HloInstructionProto.convolution_dimension_numbers
	**/
	public var convolution_dimension_numbers : Dynamic;
	/**
		Field xla.HloInstructionProto.cost_estimate_ns
	**/
	public var cost_estimate_ns : Dynamic;
	/**
		Field xla.HloInstructionProto.custom_call_api_version
	**/
	public var custom_call_api_version : Dynamic;
	/**
		Field xla.HloInstructionProto.custom_call_has_side_effect
	**/
	public var custom_call_has_side_effect : Dynamic;
	/**
		Field xla.HloInstructionProto.custom_call_output_operand_aliasing
	**/
	public var custom_call_output_operand_aliasing : Dynamic;
	/**
		Field xla.HloInstructionProto.custom_call_schedule
	**/
	public var custom_call_schedule : Dynamic;
	/**
		Field xla.HloInstructionProto.custom_call_target
	**/
	public var custom_call_target : Dynamic;
	/**
		Field xla.HloInstructionProto.delta
	**/
	public var delta : Dynamic;
	/**
		Field xla.HloInstructionProto.dimensions
	**/
	public var dimensions : Dynamic;
	/**
		Field xla.HloInstructionProto.distribution
	**/
	public var distribution : Dynamic;
	/**
		Field xla.HloInstructionProto.domain_entry_sharding
	**/
	public var domain_entry_sharding : Dynamic;
	/**
		Field xla.HloInstructionProto.domain_exit_sharding
	**/
	public var domain_exit_sharding : Dynamic;
	/**
		Field xla.HloInstructionProto.dot_dimension_numbers
	**/
	public var dot_dimension_numbers : Dynamic;
	/**
		Field xla.HloInstructionProto.dynamic_slice_sizes
	**/
	public var dynamic_slice_sizes : Dynamic;
	/**
		Field xla.HloInstructionProto.epsilon
	**/
	public var epsilon : Dynamic;
	/**
		Field xla.HloInstructionProto.exponent_bits
	**/
	public var exponent_bits : Dynamic;
	/**
		Field xla.HloInstructionProto.feature_group_count
	**/
	public var feature_group_count : Dynamic;
	/**
		Field xla.HloInstructionProto.feature_index
	**/
	public var feature_index : Dynamic;
	/**
		Field xla.HloInstructionProto.fft_length
	**/
	public var fft_length : Dynamic;
	/**
		Field xla.HloInstructionProto.fft_type
	**/
	public var fft_type : Dynamic;
	/**
		Field xla.HloInstructionProto.frontend_attributes
	**/
	public var frontend_attributes : Dynamic;
	/**
		Field xla.HloInstructionProto.fusion_kind
	**/
	public var fusion_kind : Dynamic;
	/**
		Field xla.HloInstructionProto.gather_dimension_numbers
	**/
	public var gather_dimension_numbers : Dynamic;
	/**
		Field xla.HloInstructionProto.gather_slice_sizes
	**/
	public var gather_slice_sizes : Dynamic;
	/**
		Field xla.HloInstructionProto.id
	**/
	public var id : Dynamic;
	/**
		Field xla.HloInstructionProto.indices_are_sorted
	**/
	public var indices_are_sorted : Dynamic;
	/**
		Field xla.HloInstructionProto.infeed_config
	**/
	public var infeed_config : Dynamic;
	/**
		Field xla.HloInstructionProto.is_cross_program_prefetch
	**/
	public var is_cross_program_prefetch : Dynamic;
	/**
		Field xla.HloInstructionProto.is_host_transfer
	**/
	public var is_host_transfer : Dynamic;
	/**
		Field xla.HloInstructionProto.is_stable
	**/
	public var is_stable : Dynamic;
	/**
		Field xla.HloInstructionProto.literal
	**/
	public var literal : Dynamic;
	/**
		Field xla.HloInstructionProto.mantissa_bits
	**/
	public var mantissa_bits : Dynamic;
	/**
		Field xla.HloInstructionProto.metadata
	**/
	public var metadata : Dynamic;
	/**
		Field xla.HloInstructionProto.name
	**/
	public var name : Dynamic;
	/**
		Field xla.HloInstructionProto.opcode
	**/
	public var opcode : Dynamic;
	/**
		Field xla.HloInstructionProto.operand_ids
	**/
	public var operand_ids : Dynamic;
	/**
		Field xla.HloInstructionProto.operand_shapes_with_layout
	**/
	public var operand_shapes_with_layout : Dynamic;
	/**
		Field xla.HloInstructionProto.outer_dimension_partitions
	**/
	public var outer_dimension_partitions : Dynamic;
	/**
		Field xla.HloInstructionProto.outfeed_config
	**/
	public var outfeed_config : Dynamic;
	/**
		Field xla.HloInstructionProto.outfeed_shape
	**/
	public var outfeed_shape : Dynamic;
	/**
		Field xla.HloInstructionProto.padding_config
	**/
	public var padding_config : Dynamic;
	/**
		Field xla.HloInstructionProto.padding_type
	**/
	public var padding_type : Dynamic;
	/**
		Field xla.HloInstructionProto.parameter_number
	**/
	public var parameter_number : Dynamic;
	/**
		Field xla.HloInstructionProto.parameter_replication
	**/
	public var parameter_replication : Dynamic;
	/**
		Field xla.HloInstructionProto.precision_config
	**/
	public var precision_config : Dynamic;
	/**
		Field xla.HloInstructionProto.replica_groups
	**/
	public var replica_groups : Dynamic;
	/**
		Field xla.HloInstructionProto.rng_algorithm
	**/
	public var rng_algorithm : Dynamic;
	/**
		Field xla.HloInstructionProto.scatter_dimension_numbers
	**/
	public var scatter_dimension_numbers : Dynamic;
	/**
		Field xla.HloInstructionProto.shape
	**/
	public var shape : Dynamic;
	/**
		Field xla.HloInstructionProto.sharding
	**/
	public var sharding : Dynamic;
	/**
		Field xla.HloInstructionProto.slice_dimensions
	**/
	public var slice_dimensions : Dynamic;
	/**
		Field xla.HloInstructionProto.source_target_pairs
	**/
	public var source_target_pairs : Dynamic;
	/**
		Field xla.HloInstructionProto.triangular_solve_options
	**/
	public var triangular_solve_options : Dynamic;
	/**
		Field xla.HloInstructionProto.tuple_index
	**/
	public var tuple_index : Dynamic;
	/**
		Field xla.HloInstructionProto.unique_indices
	**/
	public var unique_indices : Dynamic;
	/**
		Field xla.HloInstructionProto.use_global_device_ids
	**/
	public var use_global_device_ids : Dynamic;
	/**
		Field xla.HloInstructionProto.window
	**/
	public var window : Dynamic;
}