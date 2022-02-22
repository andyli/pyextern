/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "FixedSizeBufferWriter") extern class FixedSizeBufferWriter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		NativeFile.__enter__(self)
	**/
	public function __enter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		NativeFile.__exit__(self, exc_type, exc_value, tb)
	**/
	public function __exit__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __next__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		FixedSizeBufferWriter.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		FixedSizeBufferWriter.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		NativeFile._assert_open(self)
	**/
	public function _assert_open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile._assert_readable(self)
	**/
	public function _assert_readable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile._assert_seekable(self)
	**/
	public function _assert_seekable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile._assert_writable(self)
	**/
	public function _assert_writable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.close(self)
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var closed : Dynamic;
	/**
		NativeFile.download(self, stream_or_path, buffer_size=None)
		
		Read file completely to local path (rather than reading completely into
		memory). First seeks to the beginning of the file.
	**/
	public function download(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.fileno(self)
		
		NOT IMPLEMENTED
	**/
	public function fileno(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.flush(self)
		
		Flush the stream, if applicable.
		
		An error is raised if stream is not writable.
	**/
	public function flush(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.isatty(self)
	**/
	public function isatty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.metadata(self)
		
		Return file metadata
	**/
	public function metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The file mode. Currently instances of NativeFile may support:
		
		* rb: binary read
		* wb: binary write
		* rb+: binary read and write
	**/
	public var mode : Dynamic;
	/**
		NativeFile.read(self, nbytes=None)
		
		Read indicated number of bytes from file, or read all remaining bytes
		if no argument passed
		
		Parameters
		----------
		nbytes : int, default None
		
		Returns
		-------
		data : bytes
	**/
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.read1(self, nbytes=None)
		Read and return up to n bytes.
		
		        Alias for read, needed to match the IOBase interface.
	**/
	public function read1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.read_at(self, nbytes, offset)
		
		Read indicated number of bytes at offset from the file
		
		Parameters
		----------
		nbytes : int
		offset : int
		
		Returns
		-------
		data : bytes
	**/
	public function read_at(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.read_buffer(self, nbytes=None)
	**/
	public function read_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.readable(self)
	**/
	public function readable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.readall(self)
	**/
	public function readall(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.readinto(self, b)
		
		Read into the supplied buffer
		
		Parameters
		-----------
		b: any python object supporting buffer interface
		
		Returns
		--------
		int
		    number of bytes written
	**/
	public function readinto(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.readline(self, size=None)
		NOT IMPLEMENTED. Read and return a line of bytes from the file.
		
		        If size is specified, read at most size bytes.
		
		        Line terminator is always b"\n".
		        
	**/
	public function readline(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.readlines(self, hint=None)
		NOT IMPLEMENTED. Read lines of the file
		
		        Parameters
		        -----------
		
		        hint: int maximum number of bytes read until we stop
		        
	**/
	public function readlines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.seek(self, int64_t position, int whence=0)
		
		Change current file stream position
		
		Parameters
		----------
		position : int
		    Byte offset, interpreted relative to value of whence argument
		whence : int, default 0
		    Point of reference for seek offset
		
		Notes
		-----
		Values of whence:
		* 0 -- start of stream (the default); offset should be zero or positive
		* 1 -- current stream position; offset may be negative
		* 2 -- end of stream; offset is usually negative
		
		Returns
		-------
		int
		    The new absolute stream position.
	**/
	public function seek(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.seekable(self)
	**/
	public function seekable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		FixedSizeBufferWriter.set_memcopy_blocksize(self, int64_t blocksize)
	**/
	public function set_memcopy_blocksize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		FixedSizeBufferWriter.set_memcopy_threads(self, int num_threads)
	**/
	public function set_memcopy_threads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		FixedSizeBufferWriter.set_memcopy_threshold(self, int64_t threshold)
	**/
	public function set_memcopy_threshold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.size(self)
		
		Return file size
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.tell(self)
		
		Return current stream position
	**/
	public function tell(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.truncate(self)
		
		NOT IMPLEMENTED
	**/
	public function truncate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.upload(self, stream, buffer_size=None)
		
		Pipe file-like object to file
	**/
	public function upload(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.writable(self)
	**/
	public function writable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.write(self, data)
		
		Write byte from any object implementing buffer protocol (bytes,
		bytearray, ndarray, pyarrow.Buffer)
		
		Parameters
		----------
		data : bytes-like object or exporter of buffer protocol
		
		Returns
		-------
		int
		    nbytes: number of bytes written
	**/
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		NativeFile.writelines(self, lines)
	**/
	public function writelines(args:haxe.extern.Rest<Dynamic>):Dynamic;
}