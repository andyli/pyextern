/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QMatrix4x4") extern class QMatrix4x4 {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Return self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Return self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
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
		Return self-=value.
	**/
	public function __isub__(value:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
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
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Return value/self.
	**/
	public function __rtruediv__(value:Dynamic):Dynamic;
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
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	public function column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function copyDataTo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function determinant(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flipCoordinates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function frustum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function inverted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAffine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isIdentity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lookAt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapRect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mapVector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function normalMatrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function optimize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ortho(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function perspective(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rotate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function row(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToIdentity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toAffine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toTransform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transposed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function viewport(args:haxe.extern.Rest<Dynamic>):Dynamic;
}