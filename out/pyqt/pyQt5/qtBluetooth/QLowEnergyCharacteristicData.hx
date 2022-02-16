/* This file is generated, do not edit! */
package pyQt5.qtBluetooth;
@:pythonImport("PyQt5.QtBluetooth", "QLowEnergyCharacteristicData") extern class QLowEnergyCharacteristicData {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		addDescriptor(self, QLowEnergyDescriptorData)
	**/
	public function addDescriptor(QLowEnergyDescriptorData:Dynamic):Void;
	/**
		descriptors(self) -> List[QLowEnergyDescriptorData]
	**/
	public function descriptors():Dynamic;
	/**
		isValid(self) -> bool
	**/
	public function isValid():Bool;
	/**
		maximumValueLength(self) -> int
	**/
	public function maximumValueLength():Int;
	/**
		minimumValueLength(self) -> int
	**/
	public function minimumValueLength():Int;
	/**
		properties(self) -> QLowEnergyCharacteristic.PropertyTypes
	**/
	public function properties():Dynamic;
	/**
		readConstraints(self) -> QBluetooth.AttAccessConstraints
	**/
	public function readConstraints():Dynamic;
	/**
		setDescriptors(self, Iterable[QLowEnergyDescriptorData])
	**/
	public function setDescriptors(Iterable:Dynamic):Void;
	/**
		setProperties(self, Union[QLowEnergyCharacteristic.PropertyTypes, QLowEnergyCharacteristic.PropertyType])
	**/
	public function setProperties(Union:Dynamic):Void;
	/**
		setReadConstraints(self, Union[QBluetooth.AttAccessConstraints, QBluetooth.AttAccessConstraint])
	**/
	public function setReadConstraints(Union:Dynamic):Void;
	/**
		setUuid(self, QBluetoothUuid)
	**/
	public function setUuid(QBluetoothUuid:Dynamic):Void;
	/**
		setValue(self, Union[QByteArray, bytes, bytearray])
	**/
	public function setValue(Union:Dynamic):Void;
	/**
		setValueLength(self, int, int)
	**/
	public function setValueLength(int:Int, int:Int):Void;
	/**
		setWriteConstraints(self, Union[QBluetooth.AttAccessConstraints, QBluetooth.AttAccessConstraint])
	**/
	public function setWriteConstraints(Union:Dynamic):Void;
	/**
		swap(self, QLowEnergyCharacteristicData)
	**/
	public function swap(QLowEnergyCharacteristicData:Dynamic):Void;
	/**
		uuid(self) -> QBluetoothUuid
	**/
	public function uuid():Dynamic;
	/**
		value(self) -> QByteArray
	**/
	public function value():Dynamic;
	/**
		writeConstraints(self) -> QBluetooth.AttAccessConstraints
	**/
	public function writeConstraints():Dynamic;
}