/* This file is generated, do not edit! */
package numpy.random.bit_generator;
@:pythonImport("numpy.random.bit_generator") extern class Bit_generator_Module {
	static public var DECIMAL_RE : Dynamic;
	/**
		allocate_lock() -> lock object
		(allocate() is an obsolete synonym)
		
		Create a new lock object. See help(type(threading.Lock())) for
		information about locks.
	**/
	static public function Lock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_SeedSequence(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_SeedlessSeedSequence(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Coerce an input to a uint32 array.
		
		If a `uint32` array, pass it through directly.
		If a non-negative integer, then break it up into `uint32` words, lowest
		bits first.
		If a string starting with "0x", then interpret as a hex integer, as above.
		If a string of decimal digits, interpret as a decimal integer, as above.
		If a sequence of ints or strings, interpret each element as above and
		concatenate.
		
		Note that the handling of `int64` or `uint64` arrays are not just
		straightforward views as `uint32` arrays. If an element is small enough to
		fit into a `uint32`, then it will only take up one `uint32` element in the
		output. This is to make sure that the interpretation of a sequence of
		integers is the same regardless of numpy's default integer type, which
		differs on different platforms.
		
		Parameters
		----------
		x : int, str, sequence of int or str
		
		Returns
		-------
		seed_array : uint32 array
		
		Examples
		--------
		>>> import numpy as np
		>>> from numpy.random.bit_generator import _coerce_to_uint32_array
		>>> _coerce_to_uint32_array(12345)
		array([12345], dtype=uint32)
		>>> _coerce_to_uint32_array('12345')
		array([12345], dtype=uint32)
		>>> _coerce_to_uint32_array('0x12345')
		array([74565], dtype=uint32)
		>>> _coerce_to_uint32_array([12345, '67890'])
		array([12345, 67890], dtype=uint32)
		>>> _coerce_to_uint32_array(np.array([12345, 67890], dtype=np.uint32))
		array([12345, 67890], dtype=uint32)
		>>> _coerce_to_uint32_array(np.array([12345, 67890], dtype=np.int64))
		array([12345, 67890], dtype=uint32)
		>>> _coerce_to_uint32_array([12345, 0x10deadbeef, 67890, 0xdeadbeef])
		array([     12345, 3735928559,         16,      67890, 3735928559],
		      dtype=uint32)
		>>> _coerce_to_uint32_array(1234567890123456789012345678901234567890)
		array([3460238034, 2898026390, 3235640248, 2697535605,          3],
		      dtype=uint32)
	**/
	static public function _coerce_to_uint32_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _int_to_uint32_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getrandbits(k) -> x.  Generates an int with k random bits.
	**/
	static public function randbits(k:Dynamic):Dynamic;
}