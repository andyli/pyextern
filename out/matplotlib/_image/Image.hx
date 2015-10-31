/* This file is generated, do not edit! */
package matplotlib._image;
@:pythonImport("matplotlib._image", "Image") extern class Image {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
		apply_rotation(angle)
		
		Apply the rotation (degrees) to image
	**/
	public function apply_rotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apply_scaling(sx, sy)
		
		Apply the scale factors sx, sy to the transform matrix
	**/
	public function apply_scaling(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apply_translation(tx, ty)
		
		Apply the translation tx, ty to the transform matrix
	**/
	public function apply_translation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numrows, numcols, s = as_rgba_str()
		Call this function after resize to get the data as string
		The string is a numrows by numcols x 4 (RGBA) unsigned char buffer
	**/
	public function as_rgba_str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		buffer = buffer_rgba()
		Return the image buffer as rgba32
	**/
	public function buffer_rgba(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numrows, numcols, buffer = color_conv(format)
		format 0(BGRA) or 1(ARGB)
		Convert image to format and return in a writable buffer
	**/
	public function color_conv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_aspect()
		
		Get the aspect constraint constants
	**/
	public function get_aspect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_interpolation()
		
		Get the interpolation scheme to one of the module constants, one of image.NEAREST, image.BILINEAR, etc...
	**/
	public function get_interpolation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		(m11,m21,m12,m22,m13,m23) = get_matrix()
		
		Get the affine transformation matrix
		  /m11,m12,m13\
		  /m21,m22,m23|
		  \ 0 , 0 , 1 /
	**/
	public function get_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_resample()
		
		Get the resample flag.
	**/
	public function get_resample(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numrows, numcols = get_size()
		
		Get the number or rows and columns of the input image
	**/
	public function get_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numrows, numcols = get_size_out()
		
		Get the number or rows and columns of the output image
	**/
	public function get_size_out(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reset_matrix()
		Reset the transformation matrix
	**/
	public function reset_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resize(width, height, norm=1, radius=4.0)
		
		Resize the image to width, height using interpolation
		norm and radius are optional args for some of the filters
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_aspect(scheme)
		
		Set the aspect ratio to one of the image module constant.eg, one of image.ASPECT_PRESERVE, image.ASPECT_FREE
	**/
	public function set_aspect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_bg(r,g,b,a)
		
		Set the background color
	**/
	public function set_bg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_interpolation(scheme)
		
		Set the interpolation scheme to one of the module constants, eg, image.NEAREST, image.BILINEAR, etc...
	**/
	public function set_interpolation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_resample(boolean)
		
		Set the resample flag.
	**/
	public function set_resample(args:haxe.extern.Rest<Dynamic>):Dynamic;
}