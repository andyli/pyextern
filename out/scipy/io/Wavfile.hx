/* This file is generated, do not edit! */
package scipy.io;
@:pythonImport("scipy.io.wavfile") extern class Wavfile {
	static public var KNOWN_WAVE_FORMATS : Dynamic;
	static public var WAVE_FORMAT_EXTENSIBLE : Dynamic;
	static public var WAVE_FORMAT_IEEE_FLOAT : Dynamic;
	static public var WAVE_FORMAT_PCM : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _array_tofile(fid:Dynamic, data:Dynamic):Dynamic;
	static public var _big_endian : Dynamic;
	static public function _read_data_chunk(fid:Dynamic, comp:Dynamic, noc:Dynamic, bits:Dynamic, ?mmap:Dynamic):Dynamic;
	static public function _read_fmt_chunk(fid:Dynamic):Dynamic;
	static public function _read_riff_chunk(fid:Dynamic):Dynamic;
	static public function _skip_unknown_chunk(fid:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the sample rate (in samples/sec) and data from a WAV file
		
		Parameters
		----------
		filename : string or open file handle
		    Input wav file.
		mmap : bool, optional
		    Whether to read data as memory mapped.
		    Only to be used on real files (Default: False)
		
		    .. versionadded:: 0.12.0
		
		Returns
		-------
		rate : int
		    Sample rate of wav file
		data : numpy array
		    Data read from wav file
		
		Notes
		-----
		* The file can be an open file or a filename.
		* The returned sample rate is a Python integer.
		* The data is returned as a numpy array with a data-type determined
		  from the file.
		* This function cannot read wav files with 24 bit data.
	**/
	static public function read(filename:Dynamic, ?mmap:Dynamic):Dynamic;
	/**
		Write a numpy array as a WAV file
		
		Parameters
		----------
		filename : string or open file handle
		    Output wav file
		rate : int
		    The sample rate (in samples/sec).
		data : ndarray
		    A 1-D or 2-D numpy array of either integer or float data-type.
		
		Notes
		-----
		* The file can be an open file or a filename.
		
		* Writes a simple uncompressed WAV file.
		* The bits-per-sample will be determined by the data-type.
		* To write multiple-channels, use a 2-D array of shape
		  (Nsamples, Nchannels).
	**/
	static public function write(filename:Dynamic, rate:Dynamic, data:Dynamic):Dynamic;
}