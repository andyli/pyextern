/* This file is generated, do not edit! */
package pyQt5.qtPrintSupport;
@:pythonImport("PyQt5.QtPrintSupport", "QPrinterInfo") extern class QPrinterInfo {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		availablePrinterNames() -> List[str]
	**/
	static public function availablePrinterNames():Dynamic;
	/**
		availablePrinters() -> object
	**/
	static public function availablePrinters():Dynamic;
	/**
		defaultDuplexMode(self) -> QPrinter.DuplexMode
	**/
	public function defaultDuplexMode():Dynamic;
	/**
		defaultPageSize(self) -> QPageSize
	**/
	public function defaultPageSize():Dynamic;
	/**
		defaultPrinter() -> QPrinterInfo
	**/
	static public function defaultPrinter():Dynamic;
	/**
		defaultPrinterName() -> str
	**/
	static public function defaultPrinterName():String;
	/**
		description(self) -> str
	**/
	public function description():String;
	/**
		isDefault(self) -> bool
	**/
	public function isDefault():Bool;
	/**
		isNull(self) -> bool
	**/
	public function isNull():Bool;
	/**
		isRemote(self) -> bool
	**/
	public function isRemote():Bool;
	/**
		location(self) -> str
	**/
	public function location():String;
	/**
		makeAndModel(self) -> str
	**/
	public function makeAndModel():String;
	/**
		maximumPhysicalPageSize(self) -> QPageSize
	**/
	public function maximumPhysicalPageSize():Dynamic;
	/**
		minimumPhysicalPageSize(self) -> QPageSize
	**/
	public function minimumPhysicalPageSize():Dynamic;
	/**
		printerInfo(str) -> QPrinterInfo
	**/
	static public function printerInfo(str:String):Dynamic;
	/**
		printerName(self) -> str
	**/
	public function printerName():String;
	/**
		state(self) -> QPrinter.PrinterState
	**/
	public function state():Dynamic;
	/**
		supportedDuplexModes(self) -> List[QPrinter.DuplexMode]
	**/
	public function supportedDuplexModes():Dynamic;
	/**
		supportedPageSizes(self) -> object
	**/
	public function supportedPageSizes():Dynamic;
	/**
		supportedPaperSizes(self) -> List[QPagedPaintDevice.PageSize]
	**/
	public function supportedPaperSizes():Dynamic;
	/**
		supportedResolutions(self) -> List[int]
	**/
	public function supportedResolutions():Dynamic;
	/**
		supportedSizesWithNames(self) -> object
	**/
	public function supportedSizesWithNames():Dynamic;
	/**
		supportsCustomPageSizes(self) -> bool
	**/
	public function supportsCustomPageSizes():Bool;
}