/* This file is generated, do not edit! */
package numpy.distutils.cpuinfo;
@:pythonImport("numpy.distutils.cpuinfo", "LinuxCPUInfo") extern class LinuxCPUInfo {
	public function _CPUInfoBase__get_nbits():Dynamic;
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
	public function _has_3dnow():Dynamic;
	public function _has_3dnowext():Dynamic;
	public function _has_f00f_bug():Dynamic;
	public function _has_fdiv_bug():Dynamic;
	public function _has_mmx():Dynamic;
	public function _has_sse():Dynamic;
	public function _has_sse2():Dynamic;
	public function _has_sse3():Dynamic;
	public function _has_ssse3():Dynamic;
	public function _is_32bit():Dynamic;
	public function _is_64bit():Dynamic;
	public function _is_AMD():Dynamic;
	public function _is_AMD64():Dynamic;
	public function _is_Alpha():Dynamic;
	public function _is_Athlon64():Dynamic;
	public function _is_AthlonHX():Dynamic;
	public function _is_AthlonK6():Dynamic;
	public function _is_AthlonK6_2():Dynamic;
	public function _is_AthlonK6_3():Dynamic;
	public function _is_AthlonK7():Dynamic;
	public function _is_AthlonMP():Dynamic;
	public function _is_Celeron():Dynamic;
	public function _is_Core2():Dynamic;
	public function _is_EV4():Dynamic;
	public function _is_EV5():Dynamic;
	public function _is_EV56():Dynamic;
	public function _is_Hammer():Dynamic;
	public function _is_Intel():Dynamic;
	public function _is_Itanium():Dynamic;
	public function _is_Nocona():Dynamic;
	public function _is_Opteron():Dynamic;
	public function _is_PCA56():Dynamic;
	public function _is_Pentium():Dynamic;
	public function _is_PentiumII():Dynamic;
	public function _is_PentiumIII():Dynamic;
	public function _is_PentiumIV():Dynamic;
	public function _is_PentiumM():Dynamic;
	public function _is_PentiumMMX():Dynamic;
	public function _is_PentiumPro():Dynamic;
	public function _is_Prescott():Dynamic;
	public function _is_XEON():Dynamic;
	public function _is_Xeon():Dynamic;
	public function _is_i386():Dynamic;
	public function _is_i486():Dynamic;
	public function _is_i586():Dynamic;
	public function _is_i686():Dynamic;
	public function _is_singleCPU():Dynamic;
	public function _not_impl():Dynamic;
	public function _try_call(func:Dynamic):Dynamic;
	static public var info : Dynamic;
}