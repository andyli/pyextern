/* This file is generated, do not edit! */
package torch.hub;
@:pythonImport("torch.hub") extern class Hub_Module {
	static public var DEFAULT_TORCH_HUB_DIR : Dynamic;
	static public var ENV_TORCH_HUB_DIR : Dynamic;
	static public var MASTER_BRANCH : Dynamic;
	static public var READ_DATA_CHUNK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_module_exists(name:Dynamic):Dynamic;
	static public function _download_url_to_file(url:Dynamic, filename:Dynamic):Dynamic;
	static public function _git_archive_link(repo:Dynamic, branch:Dynamic):Dynamic;
	static public function _load_attr_from_module(module_name:Dynamic, func_name:Dynamic):Dynamic;
	static public function _remove_if_exists(path:Dynamic):Dynamic;
	static public var hub_dir : Dynamic;
	/**
		Load a model from a github repo, with pretrained weights.
		
		Args:
		    github: Required, a string with format "repo_owner/repo_name[:tag_name]" with an optional
		        tag/branch. The default branch is `master` if not specified.
		        Example: 'pytorch/vision[:hub]'
		    model: Required, a string of entrypoint name defined in repo's hubconf.py
		    force_reload: Optional, whether to discard the existing cache and force a fresh download.
		        Default is `False`.
		    *args: Optional, the corresponding args for callable `model`.
		    **kwargs: Optional, the corresponding kwargs for callable `model`.
		
		Returns:
		    a single model with corresponding pretrained weights.
	**/
	static public function load(github:Dynamic, model:Dynamic, ?force_reload:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Optionally set hub_dir to a local dir to save downloaded models & weights.
		
		If this argument is not set, env variable `TORCH_HUB_DIR` will be searched first,
		`~/.torch/hub` will be created and used as fallback.
		
		Args:
		    d: path to a local folder to save downloaded models & weights.
	**/
	static public function set_dir(d:Dynamic):Dynamic;
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Parse a URL into 6 components:
		<scheme>://<netloc>/<path>;<params>?<query>#<fragment>
		Return a 6-tuple: (scheme, netloc, path, params, query, fragment).
		Note that we don't break the components up in smaller bits
		(e.g. netloc is a single string) and we don't expand % escapes.
	**/
	static public function urlparse(url:Dynamic, ?scheme:Dynamic, ?allow_fragments:Dynamic):Dynamic;
}