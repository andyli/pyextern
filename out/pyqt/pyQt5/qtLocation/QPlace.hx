/* This file is generated, do not edit! */
package pyQt5.qtLocation;
@:pythonImport("PyQt5.QtLocation", "QPlace") extern class QPlace {
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
		appendContactDetail(self, str, QPlaceContactDetail)
	**/
	public function appendContactDetail(str:String, QPlaceContactDetail:Dynamic):Void;
	/**
		attribution(self) -> str
	**/
	public function attribution():String;
	/**
		categories(self) -> List[QPlaceCategory]
	**/
	public function categories():Dynamic;
	/**
		contactDetails(self, str) -> List[QPlaceContactDetail]
	**/
	public function contactDetails(str:String):Dynamic;
	/**
		contactTypes(self) -> List[str]
	**/
	public function contactTypes():Dynamic;
	/**
		content(self, QPlaceContent.Type) -> Dict[int, QPlaceContent]
	**/
	public function content(QPlaceContent:Dynamic):Dynamic;
	/**
		detailsFetched(self) -> bool
	**/
	public function detailsFetched():Bool;
	/**
		extendedAttribute(self, str) -> QPlaceAttribute
	**/
	public function extendedAttribute(str:String):Dynamic;
	/**
		extendedAttributeTypes(self) -> List[str]
	**/
	public function extendedAttributeTypes():Dynamic;
	/**
		icon(self) -> QPlaceIcon
	**/
	public function icon():Dynamic;
	/**
		insertContent(self, QPlaceContent.Type, Dict[int, QPlaceContent])
	**/
	public function insertContent(QPlaceContent:Dynamic, Dict:Dynamic):Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		location(self) -> QGeoLocation
	**/
	public function location():Dynamic;
	/**
		name(self) -> str
	**/
	public function name():String;
	/**
		placeId(self) -> str
	**/
	public function placeId():String;
	/**
		primaryEmail(self) -> str
	**/
	public function primaryEmail():String;
	/**
		primaryFax(self) -> str
	**/
	public function primaryFax():String;
	/**
		primaryPhone(self) -> str
	**/
	public function primaryPhone():String;
	/**
		primaryWebsite(self) -> QUrl
	**/
	public function primaryWebsite():Dynamic;
	/**
		ratings(self) -> QPlaceRatings
	**/
	public function ratings():Dynamic;
	/**
		removeContactDetails(self, str)
	**/
	public function removeContactDetails(str:String):Void;
	/**
		removeExtendedAttribute(self, str)
	**/
	public function removeExtendedAttribute(str:String):Void;
	/**
		setAttribution(self, str)
	**/
	public function setAttribution(str:String):Void;
	/**
		setCategories(self, Iterable[QPlaceCategory])
	**/
	public function setCategories(Iterable:Dynamic):Void;
	/**
		setCategory(self, QPlaceCategory)
	**/
	public function setCategory(QPlaceCategory:Dynamic):Void;
	/**
		setContactDetails(self, str, Iterable[QPlaceContactDetail])
	**/
	public function setContactDetails(str:String, Iterable:Dynamic):Void;
	/**
		setContent(self, QPlaceContent.Type, Dict[int, QPlaceContent])
	**/
	public function setContent(QPlaceContent:Dynamic, Dict:Dynamic):Void;
	/**
		setDetailsFetched(self, bool)
	**/
	public function setDetailsFetched(bool:Bool):Void;
	/**
		setExtendedAttribute(self, str, QPlaceAttribute)
	**/
	public function setExtendedAttribute(str:String, QPlaceAttribute:Dynamic):Void;
	/**
		setIcon(self, QPlaceIcon)
	**/
	public function setIcon(QPlaceIcon:Dynamic):Void;
	/**
		setLocation(self, QGeoLocation)
	**/
	public function setLocation(QGeoLocation:Dynamic):Void;
	/**
		setName(self, str)
	**/
	public function setName(str:String):Void;
	/**
		setPlaceId(self, str)
	**/
	public function setPlaceId(str:String):Void;
	/**
		setRatings(self, QPlaceRatings)
	**/
	public function setRatings(QPlaceRatings:Dynamic):Void;
	/**
		setSupplier(self, QPlaceSupplier)
	**/
	public function setSupplier(QPlaceSupplier:Dynamic):Void;
	/**
		setTotalContentCount(self, QPlaceContent.Type, int)
	**/
	public function setTotalContentCount(QPlaceContent:Dynamic, int:Int):Void;
	/**
		setVisibility(self, QLocation.Visibility)
	**/
	public function setVisibility(QLocation:Dynamic):Void;
	/**
		supplier(self) -> QPlaceSupplier
	**/
	public function supplier():Dynamic;
	/**
		totalContentCount(self, QPlaceContent.Type) -> int
	**/
	public function totalContentCount(QPlaceContent:Dynamic):Int;
	/**
		visibility(self) -> QLocation.Visibility
	**/
	public function visibility():Dynamic;
}