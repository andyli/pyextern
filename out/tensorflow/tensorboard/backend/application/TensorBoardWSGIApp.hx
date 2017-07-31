/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.application;
@:pythonImport("tensorflow.tensorboard.backend.application", "TensorBoardWSGIApp") extern class TensorBoardWSGIApp {
	static public var DEFAULT_SAMPLE_COUNT : Dynamic;
	/**
		Central entry point for the TensorBoard application.
		
		This method handles routing to sub-applications. It does simple routing
		using regular expression matching.
		
		This __call__ method conforms to the WSGI spec, so that instances of this
		class are WSGI applications.
		
		Args:
		  environ: See WSGI spec.
		  start_response: See WSGI spec.
		
		Returns:
		  A werkzeug Response.
	**/
	public function __call__(environ:Dynamic, start_response:Dynamic):Dynamic;
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
		Constructs the TensorBoard application.
		
		Args:
		  logdir: the logdir spec that describes where data will be loaded.
		    may be a directory, or comma,separated list of directories, or colons
		    can be used to provide named directories
		  plugins: List of plugins that extend tensorboard.plugins.BasePlugin
		  multiplexer: The EventMultiplexer with TensorBoard data to serve
		  reload_interval: How often (in seconds) to reload the Multiplexer
		
		Returns:
		  A WSGI application that implements the TensorBoard backend.
		
		Raises:
		  ValueError: If some plugin has no plugin_name
		  ValueError: If two plugins have the same plugin_name
	**/
	@:native("__init__")
	public function ___init__(logdir:Dynamic, plugins:Dynamic, multiplexer:Dynamic, reload_interval:Dynamic):Dynamic;
	/**
		Constructs the TensorBoard application.
		
		Args:
		  logdir: the logdir spec that describes where data will be loaded.
		    may be a directory, or comma,separated list of directories, or colons
		    can be used to provide named directories
		  plugins: List of plugins that extend tensorboard.plugins.BasePlugin
		  multiplexer: The EventMultiplexer with TensorBoard data to serve
		  reload_interval: How often (in seconds) to reload the Multiplexer
		
		Returns:
		  A WSGI application that implements the TensorBoard backend.
		
		Raises:
		  ValueError: If some plugin has no plugin_name
		  ValueError: If two plugins have the same plugin_name
	**/
	public function new(logdir:Dynamic, plugins:Dynamic, multiplexer:Dynamic, reload_interval:Dynamic):Void;
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
		Builds a JSON-serializable object with information about run_audio.
		
		Args:
		  run_audio: A list of event_accumulator.AudioValueEvent objects.
		  run: The name of the run.
		  tag: The name of the tag the images all belong to.
		
		Returns:
		  A list of dictionaries containing the wall time, step, URL, and
		  content_type for each audio clip.
	**/
	public function _audio_response_for_run(run_audio:Dynamic, run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Builds a JSON-serializable object with information about run_images.
		
		Args:
		  run_images: A list of event_accumulator.ImageValueEvent objects.
		  run: The name of the run.
		  tag: The name of the tag the images all belong to.
		
		Returns:
		  A list of dictionaries containing the wall time, step, URL, width, and
		  height for each image.
	**/
	public function _image_response_for_run(run_images:Dynamic, run:Dynamic, tag:Dynamic):Dynamic;
	/**
		Check path is safe (stays within current directory).
		
		This is for preventing directory-traversal attacks.
		
		Args:
		  path: The path to check for safety.
		
		Returns:
		  True if the given path stays within the current directory, and false
		  if it would escape to a higher directory. E.g. _path_is_safe('index.html')
		  returns true, but _path_is_safe('../../../etc/password') returns false.
	**/
	public function _path_is_safe(path:Dynamic):Dynamic;
	/**
		Builds a URL for accessing the specified audio.
		
		This should be kept in sync with _serve_individual_audio. Note that the URL
		is *not* guaranteed to always return the same audio, since audio may be
		unloaded from the reservoir as new audio comes in.
		
		Args:
		  run: The name of the run.
		  tag: The tag.
		  index: The index of the audio. Negative values are OK.
		
		Returns:
		  A string representation of a URL that will load the index-th
		  sampled audio in the given run with the given tag.
	**/
	public function _query_for_individual_audio(run:Dynamic, tag:Dynamic, index:Dynamic):Dynamic;
	/**
		Builds a URL for accessing the specified image.
		
		This should be kept in sync with _serve_image. Note that the URL is *not*
		guaranteed to always return the same image, since images may be unloaded
		from the reservoir as new images come in.
		
		Args:
		  run: The name of the run.
		  tag: The tag.
		  index: The index of the image. Negative values are OK.
		
		Returns:
		  A string representation of a URL that will load the index-th
		  sampled image in the given run with the given tag.
	**/
	public function _query_for_individual_image(run:Dynamic, tag:Dynamic, index:Dynamic):Dynamic;
	/**
		Given a tag and list of runs, serve a list of audio.
		
		Note that the audio clips themselves are not sent; instead, we respond with
		URLs to the audio. The frontend should treat these URLs as opaque and should
		not try to parse information about them or generate them itself, as the
		format may change.
		
		Args:
		  request: A werkzeug.wrappers.Request object.
		
		Returns:
		  A werkzeug.Response application.
	**/
	public function _serve_audio(request:Dynamic):Dynamic;
	/**
		Given a tag and single run, return an array of compressed histograms.
	**/
	public function _serve_compressed_histograms(request:Dynamic):Dynamic;
	/**
		Given a single run, return the graph definition in json format.
	**/
	public function _serve_graph(request:Dynamic):Dynamic;
	/**
		Given a tag and single run, return an array of histogram values.
	**/
	public function _serve_histograms(request:Dynamic):Dynamic;
	/**
		Serves an individual image.
	**/
	public function _serve_image(request:Dynamic):Dynamic;
	/**
		Given a tag and list of runs, serve a list of images.
		
		Note that the images themselves are not sent; instead, we respond with URLs
		to the images. The frontend should treat these URLs as opaque and should not
		try to parse information about them or generate them itself, as the format
		may change.
		
		Args:
		  request: A werkzeug.wrappers.Request object.
		
		Returns:
		  A werkzeug.Response application.
	**/
	public function _serve_images(request:Dynamic):Dynamic;
	/**
		Serves the index page (i.e., the tensorboard app itself).
	**/
	public function _serve_index(request:Dynamic):Dynamic;
	/**
		Serves an individual audio clip.
	**/
	public function _serve_individual_audio(request:Dynamic):Dynamic;
	/**
		Serves the JavaScript for the index page.
	**/
	public function _serve_js(request:Dynamic):Dynamic;
	/**
		Respond with a JSON object containing this TensorBoard's logdir.
	**/
	public function _serve_logdir(request:Dynamic):Dynamic;
	/**
		Serves an object mapping plugin name to whether it is enabled.
		
		Args:
		  request: The werkzeug.Request object.
		
		Returns:
		  A werkzeug.Response object.
	**/
	public function _serve_plugins_listing(request:Dynamic):Dynamic;
	/**
		Given a tag and a TensorFlow run, return the session.run() metadata.
	**/
	public function _serve_run_metadata(request:Dynamic):Dynamic;
	/**
		WSGI app serving a JSON object about runs and tags.
		
		Returns a mapping from runs to tagType to list of tags for that run.
		
		Args:
		  request: A werkzeug request
		
		Returns:
		  A werkzeug Response with the following content:
		  {runName: {images: [tag1, tag2, tag3],
		             audio: [tag4, tag5, tag6],
		             scalars: [tagA, tagB, tagC],
		             histograms: [tagX, tagY, tagZ],
		             firstEventTimestamp: 123456.789}}
	**/
	public function _serve_runs(request:Dynamic):Dynamic;
	/**
		Given a tag and single run, return array of ScalarEvents.
	**/
	public function _serve_scalars(request:Dynamic):Dynamic;
	/**
		Serves the static file located at the given path.
		
		Args:
		  request: A werkzeug Request
		  path: The path of the static file, relative to the tensorboard/ directory.
		
		Returns:
		  A werkzeug.Response application.
	**/
	public function _serve_static_file(request:Dynamic, path:Dynamic):Dynamic;
	static public var protocol_version : Dynamic;
}