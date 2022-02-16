/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "void") extern class Void {
	/**
		Scalar attribute identical to the corresponding array attribute.
		
		Please see `ndarray.T`.
	**/
	public var T : Dynamic;
	/**
		abs(self)
	**/
	public function __abs__():Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
	/**
		sc.__array__(dtype) return 0-dim array from scalar with specified dtype
	**/
	public function __array__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array protocol: Python side
	**/
	public var __array_interface__ : Dynamic;
	/**
		Array priority.
	**/
	public var __array_priority__ : Dynamic;
	/**
		Array protocol: struct
	**/
	public var __array_struct__ : Dynamic;
	/**
		sc.__array_wrap__(obj) return scalar from array
	**/
	public function __array_wrap__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		float(self)
	**/
	public function __float__():Dynamic;
	/**
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		NumPy array scalar formatter
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
		int(self)
	**/
	public function __int__():Dynamic;
	/**
		~self
	**/
	public function __invert__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
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
		Return self|value.
	**/
	public function __or__(value:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	/**
		Return pow(self, value, mod).
	**/
	public function __pow__(value:Dynamic, ?mod:Dynamic):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return value&self.
	**/
	public function __rand__(value:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value//self.
	**/
	public function __rfloordiv__(value:Dynamic):Dynamic;
	/**
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	/**
		Return pow(value, self, mod).
	**/
	public function __rpow__(value:Dynamic, ?mod:Dynamic):Dynamic;
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
		Return value^self.
	**/
	public function __rxor__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
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
	/**
		Return self^value.
	**/
	public function __xor__(value:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.all`.
	**/
	public function all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.any`.
	**/
	public function any(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argmax`.
	**/
	public function argmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argmin`.
	**/
	public function argmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argsort`.
	**/
	public function argsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.astype`.
	**/
	public function astype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		base object
	**/
	public var base : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.byteswap`.
	**/
	public function byteswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.choose`.
	**/
	public function choose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.clip`.
	**/
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.compress`.
	**/
	public function compress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.conjugate`.
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.copy`.
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.cumprod`.
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.cumsum`.
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pointer to start of data.
	**/
	public var data : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.diagonal`.
	**/
	public function diagonal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtype object
	**/
	public var dtype : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.dump`.
	**/
	public function dump(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.dumps`.
	**/
	public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.fill`.
	**/
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		integer value of flags
	**/
	public var flags : Dynamic;
	/**
		A 1-D view of the scalar.
	**/
	public var flat : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.flatten`.
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.getfield`.
	**/
	public function getfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The imaginary part of the scalar.
	**/
	public var imag : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.item`.
	**/
	public function item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.itemset`.
	**/
	public function itemset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The length of one element in bytes.
	**/
	public var itemsize : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.max`.
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.mean`.
	**/
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.min`.
	**/
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The length of the scalar in bytes.
	**/
	public var nbytes : Dynamic;
	/**
		The number of array dimensions.
	**/
	public var ndim : Dynamic;
	/**
		newbyteorder(new_order='S', /)
		
		Return a new `dtype` with a different byte order.
		
		Changes are also made in all fields and sub-arrays of the data type.
		
		The `new_order` code can be any from the following:
		
		* 'S' - swap dtype from current to opposite endian
		* {'<', 'little'} - little endian
		* {'>', 'big'} - big endian
		* {'=', 'native'} - native order
		* {'|', 'I'} - ignore (no change to byte order)
		
		Parameters
		----------
		new_order : str, optional
		    Byte order to force; a value from the byte order specifications
		    above.  The default value ('S') results in swapping the current
		    byte order.
		
		
		Returns
		-------
		new_dtype : dtype
		    New `dtype` object with the given change to the byte order.
	**/
	public function newbyteorder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.nonzero`.
	**/
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.prod`.
	**/
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.ptp`.
	**/
	public function ptp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.put`.
	**/
	public function put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.ravel`.
	**/
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The real part of the scalar.
	**/
	public var real : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.repeat`.
	**/
	public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.reshape`.
	**/
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.resize`.
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.round`.
	**/
	public function round(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.searchsorted`.
	**/
	public function searchsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.setfield`.
	**/
	public function setfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.setflags`.
	**/
	public function setflags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple of array dimensions.
	**/
	public var shape : Dynamic;
	/**
		The number of elements in the gentype.
	**/
	public var size : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.sort`.
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.squeeze`.
	**/
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.std`.
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple of bytes steps in each dimension.
	**/
	public var strides : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.sum`.
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.swapaxes`.
	**/
	public function swapaxes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.take`.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tobytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tofile`.
	**/
	public function tofile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tolist`.
	**/
	public function tolist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tostring`.
	**/
	public function tostring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.trace`.
	**/
	public function trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.transpose`.
	**/
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.var`.
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.view`.
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
}