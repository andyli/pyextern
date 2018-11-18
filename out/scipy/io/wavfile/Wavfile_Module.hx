/* This file is generated, do not edit! */
package scipy.io.wavfile;
@:pythonImport("scipy.io.wavfile") extern class Wavfile_Module {
	static public var KNOWN_WAVE_FORMATS : Dynamic;
	static public var WAVE_FORMAT_EXTENSIBLE : Dynamic;
	static public var WAVE_FORMAT_IEEE_FLOAT : Dynamic;
	static public var WAVE_FORMAT_PCM : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _array_tofile(fid:Dynamic, data:Dynamic):Dynamic;
	static public function _read_data_chunk(fid:Dynamic, format_tag:Dynamic, channels:Dynamic, bit_depth:Dynamic, is_big_endian:Dynamic, ?mmap:Dynamic):Dynamic;
	/**
		Returns
		-------
		size : int
		    size of format subchunk in bytes (minus 8 for "fmt " and itself)
		format_tag : int
		    PCM, float, or compressed format
		channels : int
		    number of channels
		fs : int
		    sampling frequency in samples per second
		bytes_per_second : int
		    overall byte rate for the file
		block_align : int
		    bytes per sample, including all channels
		bit_depth : int
		    bits per sample
	**/
	static public function _read_fmt_chunk(fid:Dynamic, is_big_endian:Dynamic):Int;
	static public function _read_riff_chunk(fid:Dynamic):Dynamic;
	static public function _skip_unknown_chunk(fid:Dynamic, is_big_endian:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Open a WAV file
		
		Return the sample rate (in samples/sec) and data from a WAV file.
		
		Parameters
		----------
		filename : string or open file handle
		    Input wav file.
		mmap : bool, optional
		    Whether to read data as memory-mapped.
		    Only to be used on real files (Default: False).
		
		    .. versionadded:: 0.12.0
		
		Returns
		-------
		rate : int
		    Sample rate of wav file.
		data : numpy array
		    Data read from wav file.  Data-type is determined from the file;
		    see Notes.
		
		Notes
		-----
		This function cannot read wav files with 24-bit data.
		
		Common data types: [1]_
		
		=====================  ===========  ===========  =============
		     WAV format            Min          Max       NumPy dtype
		=====================  ===========  ===========  =============
		32-bit floating-point  -1.0         +1.0         float32
		32-bit PCM             -2147483648  +2147483647  int32
		16-bit PCM             -32768       +32767       int16
		8-bit PCM              0            255          uint8
		=====================  ===========  ===========  =============
		
		Note that 8-bit PCM is unsigned.
		
		References
		----------
		.. [1] IBM Corporation and Microsoft Corporation, "Multimedia Programming
		   Interface and Data Specifications 1.0", section "Data Format of the
		   Samples", August 1991
		   http://www.tactilemedia.com/info/MCI_Control_Info.html
	**/
	static public function read(filename:Dynamic, ?mmap:Dynamic):Int;
	/**
		Write a numpy array as a WAV file.
		
		Parameters
		----------
		filename : string or open file handle
		    Output wav file.
		rate : int
		    The sample rate (in samples/sec).
		data : ndarray
		    A 1-D or 2-D numpy array of either integer or float data-type.
		
		Notes
		-----
		* Writes a simple uncompressed WAV file.
		* To write multiple-channels, use a 2-D array of shape
		  (Nsamples, Nchannels).
		* The bits-per-sample and PCM/float will be determined by the data-type.
		
		Common data types: [1]_
		
		=====================  ===========  ===========  =============
		     WAV format            Min          Max       NumPy dtype
		=====================  ===========  ===========  =============
		32-bit floating-point  -1.0         +1.0         float32
		32-bit PCM             -2147483648  +2147483647  int32
		16-bit PCM             -32768       +32767       int16
		8-bit PCM              0            255          uint8
		=====================  ===========  ===========  =============
		
		Note that 8-bit PCM is unsigned.
		
		References
		----------
		.. [1] IBM Corporation and Microsoft Corporation, "Multimedia Programming
		   Interface and Data Specifications 1.0", section "Data Format of the
		   Samples", August 1991
		   http://www.tactilemedia.com/info/MCI_Control_Info.html
	**/
	static public function write(filename:Dynamic, rate:Dynamic, data:Dynamic):Dynamic;
}