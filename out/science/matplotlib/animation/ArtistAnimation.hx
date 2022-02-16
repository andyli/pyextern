/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "ArtistAnimation") extern class ArtistAnimation {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, artists:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(fig:Dynamic, artists:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _blit_clear(artists:Dynamic):Dynamic;
	public function _blit_draw(artists:Dynamic):Dynamic;
	public function _draw_frame(artists:Dynamic):Dynamic;
	public function _draw_next_frame(framedata:Dynamic, blit:Dynamic):Dynamic;
	public function _end_redraw(event:Dynamic):Dynamic;
	public function _init_draw():Dynamic;
	public function _on_resize(event:Dynamic):Dynamic;
	public function _post_draw(framedata:Dynamic, blit:Dynamic):Dynamic;
	/**
		Clears artists from the last frame.
	**/
	public function _pre_draw(framedata:Dynamic, blit:Dynamic):Dynamic;
	/**
		IPython display hook for rendering.
	**/
	public function _repr_html_():Dynamic;
	public function _setup_blit():Dynamic;
	/**
		Starts interactive animation. Adds the draw frame command to the GUI
		handler, calls show to start the event loop.
	**/
	public function _start(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Handler for getting events.
	**/
	public function _step(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _stop(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a new sequence of frame information.
	**/
	public function new_frame_seq():Dynamic;
	/**
		Return a new sequence of saved/cached frame information.
	**/
	public function new_saved_frame_seq():Dynamic;
	/**
		Pause the animation.
	**/
	public function pause():Dynamic;
	/**
		Resume the animation.
	**/
	public function resume():Dynamic;
	/**
		Save the animation as a movie file by drawing every frame.
		
		Parameters
		----------
		filename : str
		    The output filename, e.g., :file:`mymovie.mp4`.
		
		writer : `MovieWriter` or str, default: :rc:`animation.writer`
		    A `MovieWriter` instance to use or a key that identifies a
		    class to use, such as 'ffmpeg'.
		
		fps : int, optional
		    Movie frame rate (per second).  If not set, the frame rate from the
		    animation's frame interval.
		
		dpi : float, default: :rc:`savefig.dpi`
		    Controls the dots per inch for the movie frames.  Together with
		    the figure's size in inches, this controls the size of the movie.
		
		codec : str, default: :rc:`animation.codec`.
		    The video codec to use.  Not all codecs are supported by a given
		    `MovieWriter`.
		
		bitrate : int, default: :rc:`animation.bitrate`
		    The bitrate of the movie, in kilobits per second.  Higher values
		    means higher quality movies, but increase the file size.  A value
		    of -1 lets the underlying movie encoder select the bitrate.
		
		extra_args : list of str or None, optional
		    Extra command-line arguments passed to the underlying movie
		    encoder.  The default, None, means to use
		    :rc:`animation.[name-of-encoder]_args` for the builtin writers.
		
		metadata : dict[str, str], default: {}
		    Dictionary of keys and values for metadata to include in
		    the output file. Some keys that may be of use include:
		    title, artist, genre, subject, copyright, srcform, comment.
		
		extra_anim : list, default: []
		    Additional `Animation` objects that should be included
		    in the saved movie file. These need to be from the same
		    `matplotlib.figure.Figure` instance. Also, animation frames will
		    just be simply combined, so there should be a 1:1 correspondence
		    between the frames from the different animations.
		
		savefig_kwargs : dict, default: {}
		    Keyword arguments passed to each `~.Figure.savefig` call used to
		    save the individual frames.
		
		progress_callback : function, optional
		    A callback function that will be called for every frame to notify
		    the saving progress. It must have the signature ::
		
		        def func(current_frame: int, total_frames: int) -> Any
		
		    where *current_frame* is the current frame number and
		    *total_frames* is the total number of frames to be saved.
		    *total_frames* is set to None, if the total number of frames can
		    not be determined. Return values may exist but are ignored.
		
		    Example code to write the progress to stdout::
		
		        progress_callback =                    lambda i, n: print(f'Saving frame {i} of {n}')
		
		Notes
		-----
		*fps*, *codec*, *bitrate*, *extra_args* and *metadata* are used to
		construct a `.MovieWriter` instance and can only be passed if
		*writer* is a string.  If they are passed as non-*None* and *writer*
		is a `.MovieWriter`, a `RuntimeError` will be raised.
	**/
	public function save(filename:Dynamic, ?writer:Dynamic, ?fps:Dynamic, ?dpi:Dynamic, ?codec:Dynamic, ?bitrate:Dynamic, ?extra_args:Dynamic, ?metadata:Dynamic, ?extra_anim:Dynamic, ?savefig_kwargs:Dynamic, ?progress_callback:Dynamic):Dynamic;
	/**
		Convert the animation to an HTML5 ``<video>`` tag.
		
		This saves the animation as an h264 video, encoded in base64
		directly into the HTML5 video tag. This respects :rc:`animation.writer`
		and :rc:`animation.bitrate`. This also makes use of the
		``interval`` to control the speed, and uses the ``repeat``
		parameter to decide whether to loop.
		
		Parameters
		----------
		embed_limit : float, optional
		    Limit, in MB, of the returned animation. No animation is created
		    if the limit is exceeded.
		    Defaults to :rc:`animation.embed_limit` = 20.0.
		
		Returns
		-------
		str
		    An HTML5 video tag with the animation embedded as base64 encoded
		    h264 video.
		    If the *embed_limit* is exceeded, this returns the string
		    "Video too large to embed."
	**/
	public function to_html5_video(?embed_limit:Dynamic):Dynamic;
	/**
		Generate HTML representation of the animation.
		
		Parameters
		----------
		fps : int, optional
		    Movie frame rate (per second). If not set, the frame rate from
		    the animation's frame interval.
		embed_frames : bool, optional
		default_mode : str, optional
		    What to do when the animation ends. Must be one of ``{'loop',
		    'once', 'reflect'}``. Defaults to ``'loop'`` if ``self.repeat``
		    is True, otherwise ``'once'``.
	**/
	public function to_jshtml(?fps:Dynamic, ?embed_frames:Dynamic, ?default_mode:Dynamic):Dynamic;
}