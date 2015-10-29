/* This file is generated, do not edit! */
package numpy.distutils.cpuinfo;
@:pythonImport("numpy.distutils.cpuinfo", "IRIXCPUInfo") extern class IRIXCPUInfo {
	public function _CPUInfoBase__get_nbits():Dynamic;
	public function _IRIXCPUInfo__cputype(n:Dynamic):Dynamic;
	public function _IRIXCPUInfo__machine(n:Dynamic):Dynamic;
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
	public function __getattr__(name:Dynamic):Dynamic;
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
	public function ___init__():Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	public function _getNCPUs():Dynamic;
	public function _is_32bit():Dynamic;
	public function _is_64bit():Dynamic;
	public function _is_IP19():Dynamic;
	public function _is_IP20():Dynamic;
	public function _is_IP21():Dynamic;
	public function _is_IP22():Dynamic;
	public function _is_IP22_4k():Dynamic;
	public function _is_IP22_5k():Dynamic;
	public function _is_IP24():Dynamic;
	public function _is_IP25():Dynamic;
	public function _is_IP26():Dynamic;
	public function _is_IP27():Dynamic;
	public function _is_IP28():Dynamic;
	public function _is_IP30():Dynamic;
	public function _is_IP32():Dynamic;
	public function _is_IP32_10k():Dynamic;
	public function _is_IP32_5k():Dynamic;
	public function _is_r10000():Dynamic;
	public function _is_r12000():Dynamic;
	public function _is_r2000():Dynamic;
	public function _is_r3000():Dynamic;
	public function _is_r3900():Dynamic;
	public function _is_r4000():Dynamic;
	public function _is_r4100():Dynamic;
	public function _is_r4300():Dynamic;
	public function _is_r4400():Dynamic;
	public function _is_r4600():Dynamic;
	public function _is_r4650():Dynamic;
	public function _is_r5000():Dynamic;
	public function _is_r6000():Dynamic;
	public function _is_r8000():Dynamic;
	public function _is_rorion():Dynamic;
	public function _is_singleCPU():Dynamic;
	public function _not_impl():Dynamic;
	public function _try_call(func:Dynamic):Dynamic;
	public function get_ip():Dynamic;
	static public var info : Dynamic;
}