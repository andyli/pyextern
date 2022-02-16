/* This file is generated, do not edit! */
package pyQt5.qtQuick;
@:pythonImport("PyQt5.QtQuick", "QSGTextureMaterial") extern class QSGTextureMaterial {
	static public var Blending : Dynamic;
	static public var CustomCompileStep : Dynamic;
	/**
		int([x]) -> integer
		int(x, base=10) -> integer
		
		Convert a number or string to an integer, or return 0 if no arguments
		are given.  If x is a number, return x.__int__().  For floating point
		numbers, this truncates towards zero.
		
		If x is not a number or if base is given, then x must be a string,
		bytes, or bytearray instance representing an integer literal in the
		given base.  The literal can be preceded by '+' or '-' and be surrounded
		by whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.
		Base 0 means to interpret the base from the string as an integer literal.
		>>> int('0b100', base=0)
		4
	**/
	public function Flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		QSGMaterial.Flags()
		QSGMaterial.Flags(Union[QSGMaterial.Flags, QSGMaterial.Flag])
		QSGMaterial.Flags(QSGMaterial.Flags)
	**/
	static public function Flags(args:haxe.extern.Rest<Dynamic>):Void;
	static public var RequiresDeterminant : Dynamic;
	static public var RequiresFullMatrix : Dynamic;
	static public var RequiresFullMatrixExceptTranslate : Dynamic;
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
		anisotropyLevel(self) -> QSGTexture.AnisotropyLevel
	**/
	public function anisotropyLevel():Dynamic;
	/**
		compare(self, QSGMaterial) -> int
	**/
	public function compare(QSGMaterial:Dynamic):Int;
	/**
		createShader(self) -> QSGMaterialShader
	**/
	public function createShader():Dynamic;
	/**
		filtering(self) -> QSGTexture.Filtering
	**/
	public function filtering():Dynamic;
	/**
		flags(self) -> QSGMaterial.Flags
	**/
	public function flags():Dynamic;
	/**
		horizontalWrapMode(self) -> QSGTexture.WrapMode
	**/
	public function horizontalWrapMode():Dynamic;
	/**
		mipmapFiltering(self) -> QSGTexture.Filtering
	**/
	public function mipmapFiltering():Dynamic;
	/**
		setAnisotropyLevel(self, QSGTexture.AnisotropyLevel)
	**/
	public function setAnisotropyLevel(QSGTexture:Dynamic):Void;
	/**
		setFiltering(self, QSGTexture.Filtering)
	**/
	public function setFiltering(QSGTexture:Dynamic):Void;
	/**
		setFlag(self, Union[QSGMaterial.Flags, QSGMaterial.Flag], enabled: bool = True)
	**/
	public function setFlag(Union:Dynamic, ?enabled:Dynamic):Void;
	/**
		setHorizontalWrapMode(self, QSGTexture.WrapMode)
	**/
	public function setHorizontalWrapMode(QSGTexture:Dynamic):Void;
	/**
		setMipmapFiltering(self, QSGTexture.Filtering)
	**/
	public function setMipmapFiltering(QSGTexture:Dynamic):Void;
	/**
		setTexture(self, QSGTexture)
	**/
	public function setTexture(QSGTexture:Dynamic):Void;
	/**
		setVerticalWrapMode(self, QSGTexture.WrapMode)
	**/
	public function setVerticalWrapMode(QSGTexture:Dynamic):Void;
	/**
		texture(self) -> QSGTexture
	**/
	public function texture():Dynamic;
	/**
		type(self) -> QSGMaterialType
	**/
	public function type():Dynamic;
	/**
		verticalWrapMode(self) -> QSGTexture.WrapMode
	**/
	public function verticalWrapMode():Dynamic;
}