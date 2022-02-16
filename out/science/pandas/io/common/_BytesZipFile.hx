/* This file is generated, do not edit! */
package pandas.io.common;
@:pythonImport("pandas.io.common", "_BytesZipFile") extern class _BytesZipFile {
	/**
		Read in the table of contents for the ZIP file.
	**/
	public function _RealGetContents():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Call the "close()" method in case the user forgot.
	**/
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Open the ZIP file with mode read 'r', write 'w', exclusive create 'x',
		or append 'a'.
	**/
	@:native("__init__")
	public function ___init__(file:Dynamic, mode:Dynamic, ?archive_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Open the ZIP file with mode read 'r', write 'w', exclusive create 'x',
		or append 'a'.
	**/
	public function new(file:Dynamic, mode:Dynamic, ?archive_name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
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
		Implement next(self).
	**/
	public function __next__():Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _checkClosed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _checkReadable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _checkSeekable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _checkWritable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Extract the ZipInfo object 'member' to a physical
		file on the path targetpath.
	**/
	public function _extract_member(member:Dynamic, targetpath:Dynamic, pwd:Dynamic):Dynamic;
	public function _fpclose(fp:Dynamic):Dynamic;
	public function _open_to_write(zinfo:Dynamic, ?force_zip64:Dynamic):Dynamic;
	/**
		Replace bad characters and remove trailing dots from parts.
	**/
	static public function _sanitize_windows_name(arcname:Dynamic, pathsep:Dynamic):Dynamic;
	static public var _windows_illegal_name_trans_table : Dynamic;
	public function _write_end_record():Dynamic;
	/**
		Check for errors before writing a file to the archive.
	**/
	public function _writecheck(zinfo:Dynamic):Dynamic;
	/**
		Close the file, and for mode 'w', 'x' and 'a' write the ending
		records.
	**/
	public function close():Dynamic;
	/**
		True if the file is closed.
	**/
	public var closed : Dynamic;
	/**
		The comment text associated with the ZIP file.
	**/
	public var comment : Dynamic;
	/**
		Disconnect this buffer from its underlying raw stream and return it.
		
		After the raw stream has been detached, the buffer is in an unusable
		state.
	**/
	public function detach():Dynamic;
	/**
		Extract a member from the archive to the current working directory,
		using its full name. Its file information is extracted as accurately
		as possible. `member' may be a filename or a ZipInfo object. You can
		specify a different directory using `path'.
	**/
	public function extract(member:Dynamic, ?path:Dynamic, ?pwd:Dynamic):Dynamic;
	/**
		Extract all members from the archive to the current working
		directory. `path' specifies a different directory to extract to.
		`members' is optional and must be a subset of the list returned
		by namelist().
	**/
	public function extractall(?path:Dynamic, ?members:Dynamic, ?pwd:Dynamic):Dynamic;
	/**
		Returns underlying file descriptor if one exists.
		
		OSError is raised if the IO object does not use a file descriptor.
	**/
	public function fileno():Dynamic;
	/**
		Does nothing.
	**/
	public function flush():Dynamic;
	static public var fp : Dynamic;
	/**
		Get a read-write view over the contents of the BytesIO object.
	**/
	public function getbuffer():Dynamic;
	/**
		Return the instance of ZipInfo given 'name'.
	**/
	public function getinfo(name:Dynamic):Dynamic;
	/**
		Retrieve the entire contents of the BytesIO object.
	**/
	public function getvalue():Dynamic;
	/**
		If an explicit archive_name is not given, we still want the file inside the zip
		file not to be named something.zip, because that causes confusion (GH39465).
	**/
	public function infer_filename():Dynamic;
	/**
		Return a list of class ZipInfo instances for files in the
		archive.
	**/
	public function infolist():Dynamic;
	/**
		Always returns False.
		
		BytesIO objects are not connected to a TTY-like device.
	**/
	public function isatty():Dynamic;
	/**
		Return a list of file names in the archive.
	**/
	public function namelist():Dynamic;
	/**
		Return file-like object for 'name'.
		
		name is a string for the file name within the ZIP file, or a ZipInfo
		object.
		
		mode should be 'r' to read a file already in the ZIP file, or 'w' to
		write to a file newly added to the archive.
		
		pwd is the password to decrypt files (only used for reading).
		
		When writing, if the file size is not known in advance but may exceed
		2 GiB, pass force_zip64 to use the ZIP64 format, which can handle large
		files.  If the size is known in advance, it is best to pass a ZipInfo
		instance for name, with zinfo.file_size set.
	**/
	public function open(name:Dynamic, ?mode:Dynamic, ?pwd:Dynamic, ?force_zip64:Dynamic):Dynamic;
	/**
		Print a table of contents for the zip file.
	**/
	public function printdir(?file:Dynamic):Dynamic;
	/**
		Return file bytes for name.
	**/
	public function read(name:Dynamic, ?pwd:Dynamic):Dynamic;
	/**
		Read at most size bytes, returned as a bytes object.
		
		If the size argument is negative or omitted, read until EOF is reached.
		Return an empty bytes object at EOF.
	**/
	public function read1(?size:Dynamic):Dynamic;
	/**
		Returns True if the IO object can be read.
	**/
	public function readable():Dynamic;
	/**
		Read bytes into buffer.
		
		Returns number of bytes read (0 for EOF), or None if the object
		is set not to block and has no data to read.
	**/
	public function readinto(buffer:Dynamic):Dynamic;
	public function readinto1(buffer:Dynamic):Dynamic;
	/**
		Next line from the file, as a bytes object.
		
		Retain newline.  A non-negative size argument limits the maximum
		number of bytes to return (an incomplete line may be returned then).
		Return an empty bytes object at EOF.
	**/
	public function readline(?size:Dynamic):Dynamic;
	/**
		List of bytes objects, each a line from the file.
		
		Call readline() repeatedly and return a list of the lines so read.
		The optional size argument, if given, is an approximate bound on the
		total number of bytes in the lines returned.
	**/
	public function readlines(?size:Dynamic):Dynamic;
	/**
		Change stream position.
		
		Seek to byte offset pos relative to position indicated by whence:
		     0  Start of stream (the default).  pos should be >= 0;
		     1  Current position - pos may be negative;
		     2  End of stream - pos usually negative.
		Returns the new absolute position.
	**/
	public function seek(pos:Dynamic, ?whence:Dynamic):Dynamic;
	/**
		Returns True if the IO object can be seeked.
	**/
	public function seekable():Dynamic;
	/**
		Set default password for encrypted files.
	**/
	public function setpassword(pwd:Dynamic):Dynamic;
	/**
		Current file position, an integer.
	**/
	public function tell():Dynamic;
	/**
		Read all the files and check the CRC.
	**/
	public function testzip():Dynamic;
	/**
		Truncate the file to at most size bytes.
		
		Size defaults to the current file position, as returned by tell().
		The current file position is unchanged.  Returns the new size.
	**/
	public function truncate(?size:Dynamic):Dynamic;
	/**
		Returns True if the IO object can be written.
	**/
	public function writable():Dynamic;
	/**
		Put the bytes from filename into the archive under the name
		arcname.
	**/
	public function write(data:Dynamic):Dynamic;
	/**
		Write lines to the file.
		
		Note that newlines are not added.  lines can be any iterable object
		producing bytes-like objects. This is equivalent to calling write() for
		each element.
	**/
	public function writelines(lines:Dynamic):Dynamic;
	/**
		Write a file into the archive.  The contents is 'data', which
		may be either a 'str' or a 'bytes' instance; if it is a 'str',
		it is encoded as UTF-8 first.
		'zinfo_or_arcname' is either a ZipInfo instance or
		the name of the file in the archive.
	**/
	public function writestr(zinfo_or_arcname:Dynamic, data:Dynamic, ?compress_type:Dynamic, ?compresslevel:Dynamic):Dynamic;
}