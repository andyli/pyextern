/* This file is generated, do not edit! */
package scipy.optimize._shgo_lib.sobol_seq;
@:pythonImport("scipy.optimize._shgo_lib.sobol_seq", "Sobol") extern class Sobol {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		i4_bit_hi1 returns the position of the high 1 bit base 2 in an integer.
		
		Example:
		  +------+-------------+-----
		  |    N |      Binary | BIT
		  +------|-------------+-----
		  |    0 |           0 |   0
		  |    1 |           1 |   1
		  |    2 |          10 |   2
		  |    3 |          11 |   2
		  |    4 |         100 |   3
		  |    5 |         101 |   3
		  |    6 |         110 |   3
		  |    7 |         111 |   3
		  |    8 |        1000 |   4
		  |    9 |        1001 |   4
		  |   10 |        1010 |   4
		  |   11 |        1011 |   4
		  |   12 |        1100 |   4
		  |   13 |        1101 |   4
		  |   14 |        1110 |   4
		  |   15 |        1111 |   4
		  |   16 |       10000 |   5
		  |   17 |       10001 |   5
		  | 1023 |  1111111111 |  10
		  | 1024 | 10000000000 |  11
		  | 1025 | 10000000001 |  11
		
		Parameters:
		  Input, integer N, the integer to be measured.
		  N should be nonnegative.  If N is nonpositive,
		  the value will always be 0.
		
		  Output, integer BIT, the number of bits base 2.
	**/
	public function i4_bit_hi1(n:Dynamic):Dynamic;
	/**
		I4_BIT_LO0 returns the position of the low 0 bit base 2 in an integer.
		
		Example:
		  +------+------------+----
		  |    N |     Binary | BIT
		  +------+------------+----
		  |    0 |          0 |   1
		  |    1 |          1 |   2
		  |    2 |         10 |   1
		  |    3 |         11 |   3
		  |    4 |        100 |   1
		  |    5 |        101 |   2
		  |    6 |        110 |   1
		  |    7 |        111 |   4
		  |    8 |       1000 |   1
		  |    9 |       1001 |   2
		  |   10 |       1010 |   1
		  |   11 |       1011 |   3
		  |   12 |       1100 |   1
		  |   13 |       1101 |   2
		  |   14 |       1110 |   1
		  |   15 |       1111 |   5
		  |   16 |      10000 |   1
		  |   17 |      10001 |   2
		  | 1023 | 1111111111 |   1
		  | 1024 | 0000000000 |   1
		  | 1025 | 0000000001 |   1
		
		Parameters:
		  Input, integer N, the integer to be measured.
		  N should be nonnegative.
		
		  Output, integer BIT, the position of the low 1 bit.
	**/
	public function i4_bit_lo0(n:Dynamic):Dynamic;
	/**
		i4_sobol generates a new quasirandom Sobol vector with each call.
		
		Discussion:
		  The routine adapts the ideas of Antonov and Saleev.
		
		Reference:
		  Antonov, Saleev,
		  USSR Computational Mathematics and Mathematical Physics,
		  Volume 19, 1980, pages 252 - 256.
		
		  Paul Bratley, Bennett Fox,
		  Algorithm 659:
		  Implementing Sobol's Quasirandom Sequence Generator,
		  ACM Transactions on Mathematical Software,
		  Volume 14, Number 1, pages 88-100, 1988.
		
		  Bennett Fox,
		  Algorithm 647:
		  Implementation and Relative Efficiency of Quasirandom
		  Sequence Generators,
		  ACM Transactions on Mathematical Software,
		  Volume 12, Number 4, pages 362-376, 1986.
		
		  Ilya Sobol,
		  USSR Computational Mathematics and Mathematical Physics,
		  Volume 16, pages 236-242, 1977.
		
		  Ilya Sobol, Levitan,
		  The Production of Points Uniformly Distributed in a Multidimensional
		  Cube (in Russian),
		  Preprint IPM Akad. Nauk SSSR,
		  Number 40, Moscow 1976.
		
		Parameters:
		  Input, integer DIM_NUM, the number of spatial dimensions.
		  DIM_NUM must satisfy 1 <= DIM_NUM <= 40.
		
		  Input/output, integer SEED, the "seed" for the sequence.
		  This is essentially the index in the sequence of the quasirandom
		  value to be generated.  On output, SEED has been set to the
		  appropriate next value, usually simply SEED+1.
		  If SEED is less than 0 on input, it is treated as though it were 0.
		  An input value of 0 requests the first (0-th) element of the sequence.
		
		  Output, real QUASI(DIM_NUM), the next quasirandom vector.
	**/
	public function i4_sobol(dim_num:Dynamic, seed:Dynamic):Dynamic;
	/**
		i4_sobol_generate generates a Sobol dataset.
		
		Parameters:
		  Input, integer dim_num, the spatial dimension.
		  Input, integer N, the number of points to generate.
		  Input, integer SKIP, the number of initial points to skip.
		
		  Output, real R(M,N), the points.
	**/
	public function i4_sobol_generate(dim_num:Dynamic, n:Dynamic, ?skip:Dynamic):Dynamic;
}