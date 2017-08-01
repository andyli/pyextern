/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "CharTensorBase") extern class CharTensorBase {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public var _cdata : Dynamic;
	static public function _new_with_metadata_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _write_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcdiv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcdiv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addcmul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addmv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function addr_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baddbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baddbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bernoulli_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function bmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function diag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function eq_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function expand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fmod_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ge_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function geometric_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function gt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_same_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_set_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function kthvalue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function le(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function le_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function masked_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function mv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function narrow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ndimension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function ne_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nelement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function random_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remainder_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sign_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sparse_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function squeeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function storage_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function t_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function topk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function transpose_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tril(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tril_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function triu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function triu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unfold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsqueeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsqueeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}