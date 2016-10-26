/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.handler;
@:pythonImport("tensorflow.tensorboard.backend.handler", "TensorboardHandler") extern class TensorboardHandler {
	static public var DEFAULT_SAMPLE_COUNT : Dynamic;
	/**
		Basic message object.
		
		A message object is defined as something that has a bunch of RFC 2822
		headers and a payload.  It may optionally have an envelope header
		(a.k.a. Unix-From or From_ header).  If the message is a container (i.e. a
		multipart or a message/rfc822), then the payload is a list of Message
		objects, otherwise it is a string.
		
		Message objects implement part of the `mapping' interface, which assumes
		there is exactly one occurrence of the header per message.  Some headers
		do in fact appear multiple times (e.g. Received) and for those headers,
		you must use the explicit API to set or get all the headers.  Not all of
		the mapping methods are implemented.
	**/
	static public function MessageClass(?policy:Dynamic):Dynamic;
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
	public function ___init__(multiplexer:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(multiplexer:Dynamic, ?args:python.VarArgs<Dynamic>):Void;
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
		Returns true if Accept-Encoding contains gzip.
	**/
	public function _is_gzip_accepted():Dynamic;
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
		Sends HTTP response.
		
		All text responses are assumed to be utf-8 unless specified otherwise.
		
		Args:
		  content: The content to respond with, which is converted to bytes.
		  content_type: The mime type of the content.
		  code: The numeric HTTP status code to use.
		  encoding: The encoding if any (not sanity checked.)
	**/
	public function _respond(content:Dynamic, content_type:Dynamic, ?code:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Writes out the given string, which represents CSV data.
		
		Unlike _send_json_response, this does *not* perform the CSV serialization
		for you. It only sets the proper headers.
		
		Args:
		  serialized_csv: A string containing some CSV data.
		  code: The numeric HTTP status code to use.
	**/
	public function _send_csv_response(serialized_csv:Dynamic, ?code:Dynamic):Dynamic;
	/**
		Writes the given content as gzip response using the given content type.
		
		If the HTTP client does not accept gzip encoding, then the response will be
		sent uncompressed.
		
		Args:
		  content: The content to respond with.
		  content_type: The mime type of the content.
		  code: The numeric HTTP status code to use.
	**/
	public function _send_gzip_response(content:Dynamic, content_type:Dynamic, ?code:Dynamic):Dynamic;
	/**
		Writes out the given object as JSON using the given HTTP status code.
		
		This also replaces special float values with stringified versions.
		
		Args:
		  obj: The object to respond with.
		  code: The numeric HTTP status code to use.
	**/
	public function _send_json_response(obj:Dynamic, ?code:Dynamic):Dynamic;
	/**
		Given a tag and list of runs, serve a list of audio.
		
		Note that the audio clips themselves are not sent; instead, we respond with
		URLs to the audio. The frontend should treat these URLs as opaque and should
		not try to parse information about them or generate them itself, as the
		format may change.
		
		Args:
		  query_params: The query parameters as a dict.
	**/
	public function _serve_audio(query_params:Dynamic):Dynamic;
	/**
		Given a tag and single run, return an array of compressed histograms.
	**/
	public function _serve_compressed_histograms(query_params:Dynamic):Dynamic;
	/**
		Given a single run, return the graph definition in json format.
	**/
	public function _serve_graph(query_params:Dynamic):Dynamic;
	/**
		Given a tag and single run, return an array of histogram values.
	**/
	public function _serve_histograms(query_params:Dynamic):Dynamic;
	/**
		Serves an individual image.
	**/
	public function _serve_image(query_params:Dynamic):Dynamic;
	/**
		Given a tag and list of runs, serve a list of images.
		
		Note that the images themselves are not sent; instead, we respond with URLs
		to the images. The frontend should treat these URLs as opaque and should not
		try to parse information about them or generate them itself, as the format
		may change.
		
		Args:
		  query_params: The query parameters as a dict.
	**/
	public function _serve_images(query_params:Dynamic):Dynamic;
	/**
		Serves the index page (i.e., the tensorboard app itself).
	**/
	public function _serve_index(unused_query_params:Dynamic):Dynamic;
	/**
		Serves an individual audio clip.
	**/
	public function _serve_individual_audio(query_params:Dynamic):Dynamic;
	/**
		Serves the JavaScript for the index page.
	**/
	public function _serve_js(unused_query_params:Dynamic):Dynamic;
	/**
		Given a tag and a TensorFlow run, return the session.run() metadata.
	**/
	public function _serve_run_metadata(query_params:Dynamic):Dynamic;
	/**
		Return a JSON object about runs and tags.
		
		Returns a mapping from runs to tagType to list of tags for that run.
		
		Returns:
		  {runName: {images: [tag1, tag2, tag3],
		             audio: [tag4, tag5, tag6],
		             scalars: [tagA, tagB, tagC],
		             histograms: [tagX, tagY, tagZ],
		             firstEventTimestamp: 123456.789}}
	**/
	public function _serve_runs(unused_query_params:Dynamic):Dynamic;
	/**
		Given a tag and single run, return array of ScalarEvents.
		
		Alternately, if both the tag and the run are omitted, returns JSON object
		where obj[run][tag] contains sample values for the given tag in the given
		run.
		
		Args:
		  query_params: The query parameters as a dict.
	**/
	public function _serve_scalars(query_params:Dynamic):Dynamic;
	/**
		Serves the static file located at the given path.
		
		Args:
		  path: The path of the static file, relative to the tensorboard/ directory.
	**/
	public function _serve_static_file(path:Dynamic):Dynamic;
	/**
		Return the client address.
	**/
	public function address_string():Dynamic;
	/**
		Return the current date and time formatted for a message header.
	**/
	public function date_time_string(?timestamp:Dynamic):Dynamic;
	static public var default_request_version : Dynamic;
	static public var disable_nagle_algorithm : Dynamic;
	/**
		Handler for all get requests.
	**/
	public function do_GET():Dynamic;
	/**
		Send the blank line ending the MIME headers.
	**/
	public function end_headers():Dynamic;
	static public var error_content_type : Dynamic;
	static public var error_message_format : Dynamic;
	public function finish():Dynamic;
	public function flush_headers():Dynamic;
	/**
		Handle multiple requests if necessary.
	**/
	public function handle():Dynamic;
	/**
		Decide what to do with an "Expect: 100-continue" header.
		
		If the client is expecting a 100 Continue response, we must
		respond with either a 100 Continue or a final response before
		waiting for the request body. The default is to always respond
		with a 100 Continue. You can behave differently (for example,
		reject unauthorized requests) by overriding this method.
		
		This method should either return True (possibly after sending
		a 100 Continue response) or send an error response and return
		False.
	**/
	public function handle_expect_100():Dynamic;
	/**
		Handle a single HTTP request.
		
		You normally don't need to override this method; see the class
		__doc__ string for information on how to handle specific HTTP
		commands such as GET and POST.
	**/
	public function handle_one_request():Dynamic;
	/**
		Return the current time formatted for logging.
	**/
	public function log_date_time_string():Dynamic;
	/**
		Log an error.
		
		This is called when a request cannot be fulfilled.  By
		default it passes the message on to log_message().
		
		Arguments are the same as for log_message().
		
		XXX This should go to the separate error log.
	**/
	public function log_error(format:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Log an arbitrary message.
		
		This is used by all other logging functions.  Override
		it if you have specific logging wishes.
		
		The first argument, FORMAT, is a format string for the
		message to be logged.  If the format string contains
		any % escapes requiring parameters, they should be
		specified as subsequent arguments (it's just like
		printf!).
		
		The client ip and current date/time are prefixed to
		every message.
	**/
	public function log_message(format:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Log an accepted request.
		
		This is called by send_response().
	**/
	public function log_request(?code:Dynamic, ?size:Dynamic):Dynamic;
	static public var monthname : Dynamic;
	/**
		Parse a request (internal).
		
		The request should be stored in self.raw_requestline; the results
		are in self.command, self.path, self.request_version and
		self.headers.
		
		Return True for success, False for failure; on failure, an
		error is sent back.
	**/
	public function parse_request():Dynamic;
	static public var protocol_version : Dynamic;
	static public var rbufsize : Dynamic;
	static public var responses : Dynamic;
	/**
		Send and log an error reply.
		
		Arguments are
		* code:    an HTTP error code
		           3 digits
		* message: a simple optional 1 line reason phrase.
		           *( HTAB / SP / VCHAR / %x80-FF )
		           defaults to short entry matching the response code
		* explain: a detailed message defaults to the long entry
		           matching the response code.
		
		This sends an error response (so it must be called before any
		output has been generated), logs the error, and finally sends
		a piece of HTML explaining the error to the user.
	**/
	public function send_error(code:Dynamic, ?message:Dynamic, ?explain:Dynamic):Dynamic;
	/**
		Send a MIME header to the headers buffer.
	**/
	public function send_header(keyword:Dynamic, value:Dynamic):Dynamic;
	/**
		Add the response header to the headers buffer and log the
		response code.
		
		Also send two standard headers with the server software
		version and the current date.
	**/
	public function send_response(code:Dynamic, ?message:Dynamic):Dynamic;
	/**
		Send the response header only.
	**/
	public function send_response_only(code:Dynamic, ?message:Dynamic):Dynamic;
	static public var server_version : Dynamic;
	public function setup():Dynamic;
	static public var sys_version : Dynamic;
	static public var timeout : Dynamic;
	/**
		Return the server software version string.
	**/
	public function version_string():Dynamic;
	static public var wbufsize : Dynamic;
	static public var weekdayname : Dynamic;
}