/* This file is generated, do not edit! */
package paho.mqtt.reasoncodes;
@:pythonImport("paho.mqtt.reasoncodes", "ReasonCodes") extern class ReasonCodes {
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
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Get the reason code string name for a specific identifier.
		The name can vary by packet type for the same identifier, which
		is why the packet type is also required.
		
		Used when displaying the reason code.
	**/
	public function __getName__(packetType:Dynamic, identifier:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		packetType: the type of the packet, such as PacketTypes.CONNECT that
		    this reason code will be used with.  Some reason codes have different
		    names for the same identifier when used a different packet type.
		
		aName: the String name of the reason code to be created.  Ignored
		    if the identifier is set.
		
		identifier: an integer value of the reason code to be created.
	**/
	@:native("__init__")
	public function ___init__(packetType:Dynamic, ?aName:Dynamic, ?identifier:Dynamic):Dynamic;
	/**
		packetType: the type of the packet, such as PacketTypes.CONNECT that
		    this reason code will be used with.  Some reason codes have different
		    names for the same identifier when used a different packet type.
		
		aName: the String name of the reason code to be created.  Ignored
		    if the identifier is set.
		
		identifier: an integer value of the reason code to be created.
	**/
	public function new(packetType:Dynamic, ?aName:Dynamic, ?identifier:Dynamic):Void;
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
	/**
		Get the numeric id corresponding to a reason code name.
		
		Used when setting the reason code for a packetType
		check that only valid codes for the packet are set.
	**/
	public function getId(name:Dynamic):Dynamic;
	/**
		Returns the reason code name corresponding to the numeric value which is set.
		        
	**/
	public function getName():Dynamic;
	public function json():Dynamic;
	public function pack():Dynamic;
	public function set(name:Dynamic):Dynamic;
	public function unpack(buffer:Dynamic):Dynamic;
}