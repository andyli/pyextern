/* This file is generated, do not edit! */
package torch.utils.model_zoo;
@:pythonImport("torch.utils.model_zoo") extern class Model_zoo_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function load_url(url:Dynamic, ?model_dir:Dynamic, ?map_location:Dynamic, ?progress:Dynamic, ?check_hash:Dynamic, ?file_name:Dynamic):Dynamic;
}