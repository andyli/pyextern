/* This file is generated, do not edit! */
package theano.scan_module.scan_perform_ext;
@:pythonImport("theano.scan_module.scan_perform_ext") extern class Scan_perform_ext_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var cfile : Dynamic;
	static public var code : Dynamic;
	static public var config : Dynamic;
	static public var dirname : Dynamic;
	static public var division : Dynamic;
	static public var f : Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function get_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var init_py : Dynamic;
	static public var init_pyc : Dynamic;
	static public var loc : Dynamic;
	static public var need_reload : Dynamic;
	static public var numpy_ver : Dynamic;
	/**
		Parameters
		----------
		n_shared_outs: unsigned int
		    Number of arugments that correspond to shared variables with
		    updates
		n_mit_mot_outs: unsigned int
		    Sum over the number of output taps for each mit_mot sequence
		n_seqs: unsigned int
		    Number of sequences provided as input
		n_mit_mot : unsigned int
		    Number of mit_mot arguemnts
		n_mit_sot: unsigned int
		    Number of mit_sot arguments
		n_sit_sot: unsigned int
		    Number of sit sot arguemnts
		n_nit_sot: unsigned int
		    Number of nit_sot arguments
		n_steps: unsigned int
		    Number of steps to loop over
		mintaps: int32 ndarray (can also be a simple python list if that is better !)
		    For any of the mit_mot, mit_sot, sit_sot says which is the furtherst
		    away input tap from current position. For example, if the taps where [-2,
		    -5, -9], the mintap would be -9. For sit_sot this is always -1 since
		    is the only allowed tap.
		tap_array: int32 ndarray( can be replaced by a list of list in python if better)
		    For each of the mit_mot, mit_sot, sit_sot (the first dimension) says
		    which are the corresponding input taps. While this is a matrix, not all
		    values in a row are needed and tap_array_len is there to say up to
		    which entry we are dealing with valid taps ( afterwards there are
		    just 0s to ensure the fix format)
		tap_array_len: int32 ndarray( can be replaced by a list if better)
		    For each of the mit_mot, mit_sot, sit_sot says how many input taps
		    each has. For sit_sot this will always be 1.
		vector_seqs: int32 ndarray (can be replaced by a list of bools if better)
		    For each sequence the corresponding entry is either a 1, is the
		    sequence is a vector or 0 if it has more than 1 dimension
		vector_outs: int32 ndarray( can be replaced by list of bools if better)
		    For each output ( mit_mot, mit_sot, sit_sot, nit_sot in this order)
		    the entry is 1 if the corresponding argument is a 1 dimensional
		    tensor, 0 otherwise.
		mit_mot_out_slices : int32 ndarray( can be replaced by list of lists)
		    Same as tap_array, but for the output taps of mit_mot sequences
		mit_mot_out_nslices: int32 ndarray (Can be replaced by a list)
		    Same as tap_array_len, but is the number of output taps of the
		    mit_mot sequences (i.e. it corresponds to mit_mot_out_slices)
		inps_is_tensor : int32 ndarray (Can be replaced by a list)
		    Array of boolean indicating, for every input, whether it is a tensor
		    or not
		outs_is_tensor : int32 ndarray (Can be replaced by a list)
		    Array of boolean indicating, for every output, whether it is a tensor
		    or not
		fn: callable
		    This is the linker, i.e. the function that will loop over the
		    computational graph and call the perform of each operation. For this
		    linker there is a c version in gof/lazy_linker.c that will be the
		    starting point of implementing this funciton in C ( we need to take
		    all the code around the call of this function and put in C inside
		    that code)
		fnct: python object
		    Only used to attach some timings for the profile mode ( can be
		    skiped if we don't care about Theano's profile mode)
		destroy_map
		    Array of boolean saying if an output is computed inplace
		args: list of ndarrays (and random states)
		    The inputs of scan in a given order ( n_steps, sequences, mit_mot,
		    mit_sot, sit_sot, nit_sot, shared_outs, other_args)
		outs: list of 1 element list ( or storage objects?)
		    This is where we need to copy our outputs ( we don't return the
		    results, though we can change the code such that we return, and
		    figure things out on the outside - python)
		self: python object
		    The scan op itself. I only use it to attach to it some timing
		    informations .. but I don;t need to.
	**/
	static public function perform(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var preargs : Dynamic;
	static public var print_function : Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Reload the module and return it.
		
		The module must have been successfully imported before.
	**/
	static public function reload(module:Dynamic):Dynamic;
	static public function try_import():Dynamic;
	static public function try_reload():Dynamic;
	static public var version : Dynamic;
}