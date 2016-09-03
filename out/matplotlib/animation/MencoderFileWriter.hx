/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "MencoderFileWriter") extern class MencoderFileWriter {
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
		Construct a new MovieWriter object.
		
		fps: int
		    Framerate for movie.
		codec: string or None, optional
		    The codec to use. If None (the default) the setting in the
		    rcParam `animation.codec` is used.
		bitrate: int or None, optional
		    The bitrate for the saved movie file, which is one way to control
		    the output file size and quality. The default value is None,
		    which uses the value stored in the rcParam `animation.bitrate`.
		    A value of -1 implies that the bitrate should be determined
		    automatically by the underlying utility.
		extra_args: list of strings or None
		    A list of extra string arguments to be passed to the underlying
		    movie utility. The default is None, which passes the additional
		    arguments in the 'animation.extra_args' rcParam.
		metadata: dict of string:string or None
		    A dictionary of keys and values for metadata to include in the
		    output file. Some keys that may be of use include:
		    title, artist, genre, subject, copyright, srcform, comment.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a new MovieWriter object.
		
		fps: int
		    Framerate for movie.
		codec: string or None, optional
		    The codec to use. If None (the default) the setting in the
		    rcParam `animation.codec` is used.
		bitrate: int or None, optional
		    The bitrate for the saved movie file, which is one way to control
		    the output file size and quality. The default value is None,
		    which uses the value stored in the rcParam `animation.bitrate`.
		    A value of -1 implies that the bitrate should be determined
		    automatically by the underlying utility.
		extra_args: list of strings or None
		    A list of extra string arguments to be passed to the underlying
		    movie utility. The default is None, which passes the additional
		    arguments in the 'animation.extra_args' rcParam.
		metadata: dict of string:string or None
		    A dictionary of keys and values for metadata to include in the
		    output file. Some keys that may be of use include:
		    title, artist, genre, subject, copyright, srcform, comment.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Assemble list of utility-specific command-line arguments.
	**/
	public function _args():Dynamic;
	public function _base_temp_name():Dynamic;
	/**
		Returns the place to which frames should be written.
	**/
	public function _frame_sink():Dynamic;
	public function _remap_metadata():Dynamic;
	public function _run():Dynamic;
	static public var allowed_metadata : Dynamic;
	static public var args_key : Dynamic;
	/**
		Returns the binary path to the commandline tool used by a specific
		subclass. This is a class method so that the tool can be looked for
		before making a particular MovieWriter subclass available.
	**/
	static public function bin_path():Dynamic;
	/**
		Clean-up and collect the process used to write the movie file.
	**/
	public function cleanup():Dynamic;
	static public var exec_key : Dynamic;
	/**
		Finish any processing for writing the movie.
	**/
	public function finish():Dynamic;
	/**
		Format (png, jpeg, etc.) to use for saving the frames, which can be
		decided by the individual subclasses.
	**/
	public var frame_format : Dynamic;
	/**
		A tuple (width,height) in pixels of a movie frame.
	**/
	public var frame_size : Dynamic;
	static public var frame_size_can_vary : Dynamic;
	/**
		Grab the image information from the figure and save as a movie frame.
		All keyword arguments in savefig_kwargs are passed on to the 'savefig'
		command that saves the figure.
	**/
	public function grab_frame(?savefig_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check to see if a MovieWriter subclass is actually available by
		running the commandline tool.
	**/
	static public function isAvailable():Dynamic;
	public var output_args : Dynamic;
	/**
		Context manager to facilitate writing the movie file.
		
		``*args`` are any parameters that should be passed to `setup`.
	**/
	public function saving(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Perform setup for writing the movie file.
		
		fig: `matplotlib.Figure` instance
		    The figure object that contains the information for frames
		outfile: string
		    The filename of the resulting movie file
		dpi: int
		    The DPI (or resolution) for the file.  This controls the size
		    in pixels of the resulting movie file.
		frame_prefix: string, optional
		    The filename prefix to use for the temporary files. Defaults
		    to '_tmp'
		clear_temp: bool
		    Specifies whether the temporary files should be deleted after
		    the movie is written. (Useful for debugging.) Defaults to True.
	**/
	public function setup(fig:Dynamic, outfile:Dynamic, dpi:Dynamic, ?frame_prefix:Dynamic, ?clear_temp:Dynamic):Dynamic;
	static public var supported_formats : Dynamic;
}