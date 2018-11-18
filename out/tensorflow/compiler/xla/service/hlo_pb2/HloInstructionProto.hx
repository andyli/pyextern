/* This file is generated, do not edit! */
package tensorflow.compiler.xla.service.hlo_pb2;
@:pythonImport("tensorflow.compiler.xla.service.hlo_pb2", "HloInstructionProto") extern class HloInstructionProto {
	static public var ALL_REDUCE_ID_FIELD_NUMBER : Dynamic;
	static public var BACKEND_CONFIG_FIELD_NUMBER : Dynamic;
	/**
		Returns the size of the message in bytes.
	**/
	public function ByteSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var CALLED_COMPUTATION_IDS_FIELD_NUMBER : Dynamic;
	static public var CHANNEL_ID_FIELD_NUMBER : Dynamic;
	static public var CHANNEL_NAME_FIELD_NUMBER : Dynamic;
	static public var CONTROL_PREDECESSOR_IDS_FIELD_NUMBER : Dynamic;
	static public var CONVOLUTION_DIMENSION_NUMBERS_FIELD_NUMBER : Dynamic;
	static public var COST_ESTIMATE_NS_FIELD_NUMBER : Dynamic;
	static public var CROSS_REPLICA_SUM_BARRIER_FIELD_NUMBER : Dynamic;
	static public var CUSTOM_CALL_OPAQUE_FIELD_NUMBER : Dynamic;
	static public var CUSTOM_CALL_TARGET_FIELD_NUMBER : Dynamic;
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
	static public var DIMENSIONS_FIELD_NUMBER : Dynamic;
	static public var DISTRIBUTION_FIELD_NUMBER : Dynamic;
	static public var DOT_DIMENSION_NUMBERS_FIELD_NUMBER : Dynamic;
	static public var DYNAMIC_SLICE_SIZES_FIELD_NUMBER : Dynamic;
	/**
		Discards the unknown fields.
	**/
	public function DiscardUnknownFields(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var EPSILON_FIELD_NUMBER : Dynamic;
	static public var EXPONENT_BITS_FIELD_NUMBER : Dynamic;
	/**
		Extension dict
	**/
	public var Extensions : Dynamic;
	static public var FEATURE_GROUP_COUNT_FIELD_NUMBER : Dynamic;
	static public var FEATURE_INDEX_FIELD_NUMBER : Dynamic;
	static public var FFT_LENGTH_FIELD_NUMBER : Dynamic;
	static public var FFT_TYPE_FIELD_NUMBER : Dynamic;
	static public var FUSION_KIND_FIELD_NUMBER : Dynamic;
	/**
		Finds unset required fields.
	**/
	public function FindInitializationErrors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates new method instance from given serialized data.
	**/
	public function FromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var GATHER_DIMENSION_NUMBERS_FIELD_NUMBER : Dynamic;
	static public var GATHER_SLICE_SIZES_FIELD_NUMBER : Dynamic;
	/**
		Checks if a message field is set.
	**/
	public function HasExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if a message field is set.
	**/
	public function HasField(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var ID_FIELD_NUMBER : Dynamic;
	static public var INFEED_CONFIG_FIELD_NUMBER : Dynamic;
	static public var IS_HOST_TRANSFER_FIELD_NUMBER : Dynamic;
	/**
		Checks if all required fields of a protocol message are set.
	**/
	public function IsInitialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var LITERAL_FIELD_NUMBER : Dynamic;
	/**
		Lists all set fields of a message.
	**/
	public function ListFields(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var MANTISSA_BITS_FIELD_NUMBER : Dynamic;
	static public var METADATA_FIELD_NUMBER : Dynamic;
	/**
		Merges a protocol message into the current message.
	**/
	public function MergeFrom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Merges a serialized message into the current message.
	**/
	public function MergeFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var NAME_FIELD_NUMBER : Dynamic;
	static public var OPCODE_FIELD_NUMBER : Dynamic;
	static public var OPERAND_IDS_FIELD_NUMBER : Dynamic;
	static public var OUTFEED_CONFIG_FIELD_NUMBER : Dynamic;
	static public var OUTFEED_SHAPE_FIELD_NUMBER : Dynamic;
	static public var PADDING_CONFIG_FIELD_NUMBER : Dynamic;
	static public var PARAMETER_NUMBER_FIELD_NUMBER : Dynamic;
	static public var PRECISION_CONFIG_FIELD_NUMBER : Dynamic;
	/**
		Parses a serialized message into the current message.
	**/
	public function ParseFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var REPLICA_GROUPS_FIELD_NUMBER : Dynamic;
	/**
		Registers an extension with the current message.
	**/
	public function RegisterExtension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var SCATTER_DIMENSION_NUMBERS_FIELD_NUMBER : Dynamic;
	static public var SHAPE_FIELD_NUMBER : Dynamic;
	static public var SHARDING_FIELD_NUMBER : Dynamic;
	static public var SLICE_DIMENSIONS_FIELD_NUMBER : Dynamic;
	static public var SOURCE_TARGET_PAIRS_FIELD_NUMBER : Dynamic;
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
	static public var TUPLE_INDEX_FIELD_NUMBER : Dynamic;
	static public var WINDOW_FIELD_NUMBER : Dynamic;
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
		Outputs picklable representation of the message.
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
		Inputs picklable representation of the message.
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}