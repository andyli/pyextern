/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "FFMpegWriter") extern class FFMpegWriter {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Parameters
		----------
		fps : int, default: 5
		    Movie frame rate (per second).
		codec : str or None, default: :rc:`animation.codec`
		    The codec to use.
		bitrate : int, default: :rc:`animation.bitrate`
		    The bitrate of the movie, in kilobits per second.  Higher values
		    means higher quality movies, but increase the file size.  A value
		    of -1 lets the underlying movie encoder select the bitrate.
		extra_args : list of str or None, optional
		    Extra command-line arguments passed to the underlying movie
		    encoder.  The default, None, means to use
		    :rc:`animation.[name-of-encoder]_args` for the builtin writers.
		metadata : dict[str, str], default: {}
		    A dictionary of keys and values for metadata to include in the
		    output file. Some keys that may be of use include:
		    title, artist, genre, subject, copyright, srcform, comment.
	**/
	@:native("__init__")
	public function ___init__(?fps:Dynamic, ?codec:Dynamic, ?bitrate:Dynamic, ?extra_args:Dynamic, ?metadata:Dynamic):Dynamic;
	/**
		Parameters
		----------
		fps : int, default: 5
		    Movie frame rate (per second).
		codec : str or None, default: :rc:`animation.codec`
		    The codec to use.
		bitrate : int, default: :rc:`animation.bitrate`
		    The bitrate of the movie, in kilobits per second.  Higher values
		    means higher quality movies, but increase the file size.  A value
		    of -1 lets the underlying movie encoder select the bitrate.
		extra_args : list of str or None, optional
		    Extra command-line arguments passed to the underlying movie
		    encoder.  The default, None, means to use
		    :rc:`animation.[name-of-encoder]_args` for the builtin writers.
		metadata : dict[str, str], default: {}
		    A dictionary of keys and values for metadata to include in the
		    output file. Some keys that may be of use include:
		    title, artist, genre, subject, copyright, srcform, comment.
	**/
	public function new(?fps:Dynamic, ?codec:Dynamic, ?bitrate:Dynamic, ?extra_args:Dynamic, ?metadata:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
	static public var _abc_impl : Dynamic;
	public function _adjust_frame_size():Dynamic;
	/**
		Assemble list of encoder-specific command-line arguments.
	**/
	public function _args():Dynamic;
	static public var _args_key : Dynamic;
	/**
		Clean-up and collect the process used to write the movie file.
	**/
	public function _cleanup():Dynamic;
	static public var _exec_key : Dynamic;
	public function _run():Dynamic;
	/**
		Return the binary path to the commandline tool used by a specific
		subclass. This is a class method so that the tool can be looked for
		before making a particular MovieWriter subclass available.
	**/
	static public function bin_path():Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	public function cleanup():Dynamic;
	/**
		Finish any processing for writing the movie.
	**/
	public function finish():Dynamic;
	/**
		A tuple ``(width, height)`` in pixels of a movie frame.
	**/
	public var frame_size : Dynamic;
	/**
		Grab the image information from the figure and save as a movie frame.
		
		All keyword arguments in *savefig_kwargs* are passed on to the
		`~.Figure.savefig` call that saves the figure.
	**/
	public function grab_frame(?savefig_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether a MovieWriter subclass is actually available.
	**/
	static public function isAvailable():Dynamic;
	public var output_args : Dynamic;
	/**
		Context manager to facilitate writing the movie file.
		
		``*args, **kw`` are any parameters that should be passed to `setup`.
	**/
	public function saving(fig:Dynamic, outfile:Dynamic, dpi:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Setup for writing the movie file.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The figure object that contains the information for frames.
		outfile : str
		    The filename of the resulting movie file.
		dpi : float, default: ``fig.dpi``
		    The DPI (or resolution) for the file.  This controls the size
		    in pixels of the resulting movie file.
	**/
	public function setup(fig:Dynamic, outfile:Dynamic, ?dpi:Dynamic):Dynamic;
	static public var supported_formats : Dynamic;
}