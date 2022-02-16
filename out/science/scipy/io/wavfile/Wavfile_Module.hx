/* This file is generated, do not edit! */
package scipy.io.wavfile;
@:pythonImport("scipy.io.wavfile") extern class Wavfile_Module {
	static public var KNOWN_WAVE_FORMATS : Dynamic;
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
	static public function _handle_pad_byte(fid:Dynamic, size:Dynamic):Dynamic;
	static public function _raise_bad_format(format_tag:Dynamic):Dynamic;
	/**
		Notes
		-----
		Assumes file pointer is immediately after the 'data' id
		
		It's possible to not use all available bits in a container, or to store
		samples in a container bigger than necessary, so bytes_per_sample uses
		the actual reported container size (nBlockAlign / nChannels).  Real-world
		examples:
		
		Adobe Audition's "24-bit packed int (type 1, 20-bit)"
		
		    nChannels = 2, nBlockAlign = 6, wBitsPerSample = 20
		
		http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/Samples/AFsp/M1F1-int12-AFsp.wav
		is:
		
		    nChannels = 2, nBlockAlign = 4, wBitsPerSample = 12
		
		http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/Docs/multichaudP.pdf
		gives an example of:
		
		    nChannels = 2, nBlockAlign = 8, wBitsPerSample = 20
	**/
	static public function _read_data_chunk(fid:Dynamic, format_tag:Dynamic, channels:Dynamic, bit_depth:Dynamic, is_big_endian:Dynamic, block_align:Dynamic, ?mmap:Dynamic):Dynamic;
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
		
		Notes
		-----
		Assumes file pointer is immediately after the 'fmt ' id
	**/
	static public function _read_fmt_chunk(fid:Dynamic, is_big_endian:Dynamic):Int;
	static public function _read_riff_chunk(fid:Dynamic):Dynamic;
	static public function _skip_unknown_chunk(fid:Dynamic, is_big_endian:Dynamic):Dynamic;
	/**
		Open a WAV file.
		
		Return the sample rate (in samples/sec) and data from an LPCM WAV file.
		
		Parameters
		----------
		filename : string or open file handle
		    Input WAV file.
		mmap : bool, optional
		    Whether to read data as memory-mapped (default: False).  Not compatible
		    with some bit depths; see Notes.  Only to be used on real files.
		
		    .. versionadded:: 0.12.0
		
		Returns
		-------
		rate : int
		    Sample rate of WAV file.
		data : numpy array
		    Data read from WAV file. Data-type is determined from the file;
		    see Notes.  Data is 1-D for 1-channel WAV, or 2-D of shape
		    (Nsamples, Nchannels) otherwise. If a file-like input without a
		    C-like file descriptor (e.g., :class:`python:io.BytesIO`) is
		    passed, this will not be writeable.
		
		Notes
		-----
		Common data types: [1]_
		
		=====================  ===========  ===========  =============
		     WAV format            Min          Max       NumPy dtype
		=====================  ===========  ===========  =============
		32-bit floating-point  -1.0         +1.0         float32
		32-bit integer PCM     -2147483648  +2147483647  int32
		24-bit integer PCM     -2147483648  +2147483392  int32
		16-bit integer PCM     -32768       +32767       int16
		8-bit integer PCM      0            255          uint8
		=====================  ===========  ===========  =============
		
		WAV files can specify arbitrary bit depth, and this function supports
		reading any integer PCM depth from 1 to 64 bits.  Data is returned in the
		smallest compatible numpy int type, in left-justified format.  8-bit and
		lower is unsigned, while 9-bit and higher is signed.
		
		For example, 24-bit data will be stored as int32, with the MSB of the
		24-bit data stored at the MSB of the int32, and typically the least
		significant byte is 0x00.  (However, if a file actually contains data past
		its specified bit depth, those bits will be read and output, too. [2]_)
		
		This bit justification and sign matches WAV's native internal format, which
		allows memory mapping of WAV files that use 1, 2, 4, or 8 bytes per sample
		(so 24-bit files cannot be memory-mapped, but 32-bit can).
		
		IEEE float PCM in 32- or 64-bit format is supported, with or without mmap.
		Values exceeding [-1, +1] are not clipped.
		
		Non-linear PCM (mu-law, A-law) is not supported.
		
		References
		----------
		.. [1] IBM Corporation and Microsoft Corporation, "Multimedia Programming
		   Interface and Data Specifications 1.0", section "Data Format of the
		   Samples", August 1991
		   http://www.tactilemedia.com/info/MCI_Control_Info.html
		.. [2] Adobe Systems Incorporated, "Adobe Audition 3 User Guide", section
		   "Audio file formats: 24-bit Packed Int (type 1, 20-bit)", 2007
		
		Examples
		--------
		>>> from os.path import dirname, join as pjoin
		>>> from scipy.io import wavfile
		>>> import scipy.io
		
		Get the filename for an example .wav file from the tests/data directory.
		
		>>> data_dir = pjoin(dirname(scipy.io.__file__), 'tests', 'data')
		>>> wav_fname = pjoin(data_dir, 'test-44100Hz-2ch-32bit-float-be.wav')
		
		Load the .wav file contents.
		
		>>> samplerate, data = wavfile.read(wav_fname)
		>>> print(f"number of channels = {data.shape[1]}")
		number of channels = 2
		>>> length = data.shape[0] / samplerate
		>>> print(f"length = {length}s")
		length = 0.01s
		
		Plot the waveform.
		
		>>> import matplotlib.pyplot as plt
		>>> import numpy as np
		>>> time = np.linspace(0., length, data.shape[0])
		>>> plt.plot(time, data[:, 0], label="Left channel")
		>>> plt.plot(time, data[:, 1], label="Right channel")
		>>> plt.legend()
		>>> plt.xlabel("Time [s]")
		>>> plt.ylabel("Amplitude")
		>>> plt.show()
	**/
	static public function read(filename:Dynamic, ?mmap:Dynamic):Int;
	/**
		Write a NumPy array as a WAV file.
		
		Parameters
		----------
		filename : string or open file handle
		    Output wav file.
		rate : int
		    The sample rate (in samples/sec).
		data : ndarray
		    A 1-D or 2-D NumPy array of either integer or float data-type.
		
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
		
		Examples
		--------
		Create a 100Hz sine wave, sampled at 44100Hz.
		Write to 16-bit PCM, Mono.
		
		>>> from scipy.io.wavfile import write
		>>> samplerate = 44100; fs = 100
		>>> t = np.linspace(0., 1., samplerate)
		>>> amplitude = np.iinfo(np.int16).max
		>>> data = amplitude * np.sin(2. * np.pi * fs * t)
		>>> write("example.wav", samplerate, data.astype(np.int16))
	**/
	static public function write(filename:Dynamic, rate:Dynamic, data:Dynamic):Dynamic;
}