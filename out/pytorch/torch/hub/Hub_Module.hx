/* This file is generated, do not edit! */
package torch.hub;
@:pythonImport("torch.hub") extern class Hub_Module {
	static public var DEFAULT_CACHE_DIR : Dynamic;
	static public var ENV_GITHUB_TOKEN : Dynamic;
	static public var ENV_TORCH_HOME : Dynamic;
	static public var ENV_XDG_CACHE_HOME : Dynamic;
	static public var HASH_REGEX : Dynamic;
	static public var MODULE_HUBCONF : Dynamic;
	static public var READ_DATA_CHUNK : Dynamic;
	static public var VAR_DEPENDENCY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_dependencies(m:Dynamic):Dynamic;
	static public function _check_module_exists(name:Dynamic):Dynamic;
	static public function _download_url_to_file(url:Dynamic, dst:Dynamic, ?hash_prefix:Dynamic, ?progress:Dynamic):Dynamic;
	static public function _get_cache_or_reload(github:Dynamic, force_reload:Dynamic, ?verbose:Dynamic, ?skip_validation:Dynamic):Dynamic;
	static public function _get_torch_home():Dynamic;
	static public function _git_archive_link(repo_owner:Dynamic, repo_name:Dynamic, branch:Dynamic):Dynamic;
	static public var _hub_dir : Dynamic;
	static public function _is_legacy_zip_format(filename:Dynamic):Dynamic;
	static public function _legacy_zip_load(filename:Dynamic, model_dir:Dynamic, map_location:Dynamic):Dynamic;
	static public function _load_attr_from_module(module:Dynamic, func_name:Dynamic):Dynamic;
	static public function _load_entry_from_hubconf(m:Dynamic, model:Dynamic):Dynamic;
	/**
		Load a model from a local directory with a ``hubconf.py``.
		
		Args:
		    hubconf_dir (string): path to a local directory that contains a
		        ``hubconf.py``.
		    model (string): name of an entrypoint defined in the directory's
		        ``hubconf.py``.
		    *args (optional): the corresponding args for callable ``model``.
		    **kwargs (optional): the corresponding kwargs for callable ``model``.
		
		Returns:
		    a single model with corresponding pretrained weights.
		
		Example:
		    >>> path = '/some/local/path/pytorch/vision'
		    >>> model = _load_local(path, 'resnet50', pretrained=True)
	**/
	static public function _load_local(hubconf_dir:Dynamic, model:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _parse_repo_info(github:Dynamic):Dynamic;
	static public function _read_url(url:Dynamic):Dynamic;
	static public function _remove_if_exists(path:Dynamic):Dynamic;
	static public function _validate_not_a_forked_repo(repo_owner:Dynamic, repo_name:Dynamic, branch:Dynamic):Dynamic;
	/**
		Download object at the given URL to a local path.
		
		Args:
		    url (string): URL of the object to download
		    dst (string): Full path where object will be saved, e.g. ``/tmp/temporary_file``
		    hash_prefix (string, optional): If not None, the SHA256 downloaded file should start with ``hash_prefix``.
		        Default: None
		    progress (bool, optional): whether or not to display a progress bar to stderr
		        Default: True
		
		Example:
		    >>> torch.hub.download_url_to_file('https://s3.amazonaws.com/pytorch/models/resnet18-5c106cde.pth', '/tmp/temporary_file')
	**/
	static public function download_url_to_file(url:Dynamic, dst:Dynamic, ?hash_prefix:Dynamic, ?progress:Dynamic):Dynamic;
	/**
		Get the Torch Hub cache directory used for storing downloaded models & weights.
		
		If :func:`~torch.hub.set_dir` is not called, default path is ``$TORCH_HOME/hub`` where
		environment variable ``$TORCH_HOME`` defaults to ``$XDG_CACHE_HOME/torch``.
		``$XDG_CACHE_HOME`` follows the X Design Group specification of the Linux
		filesystem layout, with a default value ``~/.cache`` if the environment
		variable is not set.
	**/
	static public function get_dir():Dynamic;
	/**
		Show the docstring of entrypoint ``model``.
		
		Args:
		    github (string): a string with format <repo_owner/repo_name[:tag_name]> with an optional
		        tag/branch. If ``tag_name`` is not specified, the default branch is assumed to be ``main`` if
		        it exists, and otherwise ``master``.
		        Example: 'pytorch/vision:0.10'
		    model (string): a string of entrypoint name defined in repo's ``hubconf.py``
		    force_reload (bool, optional): whether to discard the existing cache and force a fresh download.
		        Default is ``False``.
		    skip_validation (bool, optional): if ``False``, torchhub will check that the branch or commit
		        specified by the ``github`` argument properly belongs to the repo owner. This will make
		        requests to the GitHub API; you can specify a non-default GitHub token by setting the
		        ``GITHUB_TOKEN`` environment variable. Default is ``False``.
		Example:
		    >>> print(torch.hub.help('pytorch/vision', 'resnet18', force_reload=True))
	**/
	static public function help(github:Dynamic, model:Dynamic, ?force_reload:Dynamic, ?skip_validation:Dynamic):Dynamic;
	static public function import_module(name:Dynamic, path:Dynamic):Dynamic;
	/**
		List all callable entrypoints available in the repo specified by ``github``.
		
		Args:
		    github (string): a string with format "repo_owner/repo_name[:tag_name]" with an optional
		        tag/branch. If ``tag_name`` is not specified, the default branch is assumed to be ``main`` if
		        it exists, and otherwise ``master``.
		        Example: 'pytorch/vision:0.10'
		    force_reload (bool, optional): whether to discard the existing cache and force a fresh download.
		        Default is ``False``.
		    skip_validation (bool, optional): if ``False``, torchhub will check that the branch or commit
		        specified by the ``github`` argument properly belongs to the repo owner. This will make
		        requests to the GitHub API; you can specify a non-default GitHub token by setting the
		        ``GITHUB_TOKEN`` environment variable. Default is ``False``.
		Returns:
		    list: The available callables entrypoint
		
		Example:
		    >>> entrypoints = torch.hub.list('pytorch/vision', force_reload=True)
	**/
	static public function list(github:Dynamic, ?force_reload:Dynamic, ?skip_validation:Dynamic):Dynamic;
	/**
		Load a model from a github repo or a local directory.
		
		Note: Loading a model is the typical use case, but this can also be used to
		for loading other objects such as tokenizers, loss functions, etc.
		
		If ``source`` is 'github', ``repo_or_dir`` is expected to be
		of the form ``repo_owner/repo_name[:tag_name]`` with an optional
		tag/branch.
		
		If ``source`` is 'local', ``repo_or_dir`` is expected to be a
		path to a local directory.
		
		Args:
		    repo_or_dir (string): If ``source`` is 'github',
		        this should correspond to a github repo with format ``repo_owner/repo_name[:tag_name]`` with
		        an optional tag/branch, for example 'pytorch/vision:0.10'. If ``tag_name`` is not specified,
		        the default branch is assumed to be ``main`` if it exists, and otherwise ``master``.
		        If ``source`` is 'local'  then it should be a path to a local directory.
		    model (string): the name of a callable (entrypoint) defined in the
		        repo/dir's ``hubconf.py``.
		    *args (optional): the corresponding args for callable ``model``.
		    source (string, optional): 'github' or 'local'. Specifies how
		        ``repo_or_dir`` is to be interpreted. Default is 'github'.
		    force_reload (bool, optional): whether to force a fresh download of
		        the github repo unconditionally. Does not have any effect if
		        ``source = 'local'``. Default is ``False``.
		    verbose (bool, optional): If ``False``, mute messages about hitting
		        local caches. Note that the message about first download cannot be
		        muted. Does not have any effect if ``source = 'local'``.
		        Default is ``True``.
		    skip_validation (bool, optional): if ``False``, torchhub will check that the branch or commit
		        specified by the ``github`` argument properly belongs to the repo owner. This will make
		        requests to the GitHub API; you can specify a non-default GitHub token by setting the
		        ``GITHUB_TOKEN`` environment variable. Default is ``False``.
		    **kwargs (optional): the corresponding kwargs for callable ``model``.
		
		Returns:
		    The output of the ``model`` callable when called with the given
		    ``*args`` and ``**kwargs``.
		
		Example:
		    >>> # from a github repo
		    >>> repo = 'pytorch/vision'
		    >>> model = torch.hub.load(repo, 'resnet50', pretrained=True)
		    >>> # from a local directory
		    >>> path = '/some/local/path/pytorch/vision'
		    >>> model = torch.hub.load(path, 'resnet50', pretrained=True)
	**/
	static public function load(repo_or_dir:Dynamic, model:Dynamic, ?args:python.VarArgs<Dynamic>, ?source:Dynamic, ?force_reload:Dynamic, ?verbose:Dynamic, ?skip_validation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Loads the Torch serialized object at the given URL.
		
		If downloaded file is a zip file, it will be automatically
		decompressed.
		
		If the object is already present in `model_dir`, it's deserialized and
		returned.
		The default value of ``model_dir`` is ``<hub_dir>/checkpoints`` where
		``hub_dir`` is the directory returned by :func:`~torch.hub.get_dir`.
		
		Args:
		    url (string): URL of the object to download
		    model_dir (string, optional): directory in which to save the object
		    map_location (optional): a function or a dict specifying how to remap storage locations (see torch.load)
		    progress (bool, optional): whether or not to display a progress bar to stderr.
		        Default: True
		    check_hash(bool, optional): If True, the filename part of the URL should follow the naming convention
		        ``filename-<sha256>.ext`` where ``<sha256>`` is the first eight or more
		        digits of the SHA256 hash of the contents of the file. The hash is used to
		        ensure unique names and to verify the contents of the file.
		        Default: False
		    file_name (string, optional): name for the downloaded file. Filename from ``url`` will be used if not set.
		
		Example:
		    >>> state_dict = torch.hub.load_state_dict_from_url('https://s3.amazonaws.com/pytorch/models/resnet18-5c106cde.pth')
	**/
	static public function load_state_dict_from_url(url:Dynamic, ?model_dir:Dynamic, ?map_location:Dynamic, ?progress:Dynamic, ?check_hash:Dynamic, ?file_name:Dynamic):Dynamic;
	/**
		Optionally set the Torch Hub directory used to save downloaded models & weights.
		
		Args:
		    d (string): path to a local folder to save downloaded models & weights.
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