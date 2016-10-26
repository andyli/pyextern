/* This file is generated, do not edit! */
package tensorflow.core.framework.step_stats_pb2;
@:pythonImport("tensorflow.core.framework.step_stats_pb2", "NodeOutput") extern class NodeOutput {
	public function ByteSize():Dynamic;
	public function Clear():Dynamic;
	public function ClearExtension(extension_handle:Dynamic):Dynamic;
	public function ClearField(field_name:Dynamic):Dynamic;
	/**
		Copies the content of the specified message into the current message.
		
		The method clears the current message and then merges the specified
		message using MergeFrom.
		
		Args:
		  other_msg: Message to copy into the current one.
	**/
	public function CopyFrom(other_msg:Dynamic):Dynamic;
	static public var DESCRIPTOR : Dynamic;
	/**
		Finds required fields which are not initialized.
		
		Returns:
		  A list of strings.  Each string is a path to an uninitialized field from
		  the top-level message, e.g. "foo.bar[5].baz".
	**/
	public function FindInitializationErrors():Dynamic;
	static public function FromString(s:Dynamic):Dynamic;
	public function HasExtension(extension_handle:Dynamic):Dynamic;
	public function HasField(field_name:Dynamic):Dynamic;
	/**
		Checks if all required fields of a message are set.
		
		Args:
		  errors:  A list which, if provided, will be populated with the field
		           paths of all missing required fields.
		
		Returns:
		  True iff the specified message has all required fields set.
	**/
	public function IsInitialized(?errors:Dynamic):Dynamic;
	public function ListFields():Dynamic;
	public function MergeFrom(msg:Dynamic):Dynamic;
	public function MergeFromString(serialized:Dynamic):Dynamic;
	/**
		Parse serialized protocol buffer data into this message.
		
		Like MergeFromString(), except we clear the object first and
		do not return the value that MergeFromString returns.
	**/
	public function ParseFromString(serialized:Dynamic):Dynamic;
	static public function RegisterExtension(extension_handle:Dynamic):Dynamic;
	static public var SLOT_FIELD_NUMBER : Dynamic;
	public function SerializePartialToString():Dynamic;
	public function SerializeToString():Dynamic;
	/**
		Sets the _cached_byte_size_dirty bit to true,
		and propagates this to our listener iff this was a state change.
	**/
	public function SetInParent():Dynamic;
	static public var TENSOR_DESCRIPTION_FIELD_NUMBER : Dynamic;
	/**
		Returns the name of the currently set field inside a oneof, or None.
	**/
	public function WhichOneof(oneof_name:Dynamic):Dynamic;
	public function _InternalParse(buffer:Dynamic, pos:Dynamic, end:Dynamic):Dynamic;
	public function _InternalSerialize(write_bytes:Dynamic):Dynamic;
	/**
		Sets the _cached_byte_size_dirty bit to true,
		and propagates this to our listener iff this was a state change.
	**/
	public function _Modified():Dynamic;
	public function _SetListener(listener:Dynamic):Dynamic;
	/**
		Sets field as the active field in its containing oneof.
		
		Will also delete currently active field in the oneof, if it is different
		from the argument. Does not mark the message as modified.
	**/
	public function _UpdateOneofState(field:Dynamic):Dynamic;
	/**
		Metaclass for protocol message classes created at runtime from Descriptors.
		
		We add implementations for all methods described in the Message class.  We
		also create properties to allow getting/setting all fields in the protocol
		message.  Finally, we create slots to prevent users from accidentally
		"setting" nonexistent fields in the protocol message, which then wouldn't get
		serialized / deserialized properly.
		
		The protocol compiler currently uses this metaclass to create protocol
		message classes at runtime.  Clients can also manually create their own
		classes at runtime, as in this example:
		
		mydescriptor = Descriptor(.....)
		class MyProtoClass(Message):
		  __metaclass__ = GeneratedProtocolMessageType
		  DESCRIPTOR = mydescriptor
		myproto_instance = MyProtoClass()
		myproto.foo_field = 23
		...
		
		The above example will not work for nested types. If you wish to include them,
		use reflection.MakeClass() instead of manually instantiating the class in
		order to create the appropriate class structure.
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, dictionary:Dynamic):Dynamic;
	public function __deepcopy__(?memo:Dynamic):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	@:native("__init__")
	public function ___init__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new(?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __ne__(other_msg:Dynamic):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _cached_byte_size : Dynamic;
	public var _cached_byte_size_dirty : Dynamic;
	static public var _decoders_by_tag : Dynamic;
	static public var _extensions_by_name : Dynamic;
	static public var _extensions_by_number : Dynamic;
	public var _fields : Dynamic;
	public var _is_present_in_parent : Dynamic;
	public var _listener : Dynamic;
	public var _listener_for_children : Dynamic;
	public var _oneofs : Dynamic;
	public var _unknown_fields : Dynamic;
	/**
		Magic attribute generated for "slot" proto field.
	**/
	public var slot : Dynamic;
	/**
		Magic attribute generated for "tensor_description" proto field.
	**/
	public var tensor_description : Dynamic;
}