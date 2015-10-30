/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "TimedAnimation") extern class TimedAnimation {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, ?interval:Dynamic, ?repeat_delay:Dynamic, ?repeat:Dynamic, ?event_source:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	public function _blit_clear(artists:Dynamic, bg_cache:Dynamic):Dynamic;
	public function _blit_draw(artists:Dynamic, bg_cache:Dynamic):Dynamic;
	public function _draw_frame(framedata:Dynamic):Dynamic;
	public function _draw_next_frame(framedata:Dynamic, blit:Dynamic):Dynamic;
	public function _end_redraw(evt:Dynamic):Dynamic;
	public function _handle_resize(args:Dynamic):Dynamic;
	public function _init_draw():Dynamic;
	public function _loop_delay(args:Dynamic):Dynamic;
	public function _post_draw(framedata:Dynamic, blit:Dynamic):Dynamic;
	public function _pre_draw(framedata:Dynamic, blit:Dynamic):Dynamic;
	public function _setup_blit():Dynamic;
	/**
		Starts interactive animation. Adds the draw frame command to the GUI
		handler, calls show to start the event loop.
	**/
	public function _start(args:Dynamic):Dynamic;
	/**
		Handler for getting events.
	**/
	public function _step(args:Dynamic):Dynamic;
	public function _stop(args:Dynamic):Dynamic;
	/**
		Creates a new sequence of frame information.
	**/
	public function new_frame_seq():Dynamic;
	/**
		Creates a new sequence of saved/cached frame information.
	**/
	public function new_saved_frame_seq():Dynamic;
	/**
		Saves a movie file by drawing every frame.
		
		*filename* is the output filename, e.g., :file:`mymovie.mp4`
		
		*writer* is either an instance of :class:`MovieWriter` or a string
		key that identifies a class to use, such as 'ffmpeg' or 'mencoder'.
		If nothing is passed, the value of the rcparam `animation.writer` is
		used.
		
		*fps* is the frames per second in the movie. Defaults to None,
		which will use the animation's specified interval to set the frames
		per second.
		
		*dpi* controls the dots per inch for the movie frames. This combined
		with the figure's size in inches controls the size of the movie.
		
		*codec* is the video codec to be used. Not all codecs are supported
		by a given :class:`MovieWriter`. If none is given, this defaults to the
		value specified by the rcparam `animation.codec`.
		
		*bitrate* specifies the amount of bits used per second in the
		compressed movie, in kilobits per second. A higher number means a
		higher quality movie, but at the cost of increased file size. If no
		value is given, this defaults to the value given by the rcparam
		`animation.bitrate`.
		
		*extra_args* is a list of extra string arguments to be passed to the
		underlying movie utiltiy. The default is None, which passes the
		additional argurments in the 'animation.extra_args' rcParam.
		
		*metadata* is a dictionary of keys and values for metadata to include
		in the output file. Some keys that may be of use include:
		title, artist, genre, subject, copyright, srcform, comment.
		
		*extra_anim* is a list of additional `Animation` objects that should
		be included in the saved movie file. These need to be from the same
		`matplotlib.Figure` instance. Also, animation frames will just be
		simply combined, so there should be a 1:1 correspondence between
		the frames from the different animations.
		
		*savefig_kwargs* is a dictionary containing keyword arguments to be
		passed on to the 'savefig' command which is called repeatedly to save
		the individual frames. This can be used to set tight bounding boxes,
		for example.
	**/
	public function save(filename:Dynamic, ?writer:Dynamic, ?fps:Dynamic, ?dpi:Dynamic, ?codec:Dynamic, ?bitrate:Dynamic, ?extra_args:Dynamic, ?metadata:Dynamic, ?extra_anim:Dynamic, ?savefig_kwargs:Dynamic):Dynamic;
}