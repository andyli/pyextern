/* This file is generated, do not edit! */
package theano.scan_module.scan_checkpoints;
@:pythonImport("theano.scan_module.scan_checkpoints") extern class Scan_checkpoints_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Scan function that uses less memory, but is more restrictive.
		
		In :func:`~theano.scan`, if you compute the gradient of the output
		with respect to the input, you will have to store the intermediate
		results at each time step, which can be prohibitively huge. This
		function allows to do ``save_every_N`` steps of forward computations
		without storing the intermediate results, and to recompute them during
		the gradient computation.
		
		Notes
		-----
		Current assumptions:
		
		* Every sequence has the same length.
		* If ``n_steps`` is specified, it has the same value as the length of
		  any sequence.
		* The value of ``save_every_N`` divides the number of steps the scan
		  will run without remainder.
		* Only singly-recurrent and non-recurrent outputs are used.
		  No multiple recurrences.
		* Only the last timestep of any output will ever be used.
		
		Parameters
		----------
		fn
		    ``fn`` is a function that describes the operations involved in one
		    step of ``scan``. See the documentation of :func:`~theano.scan`
		    for more information.
		
		sequences
		    ``sequences`` is the list of Theano variables or dictionaries
		    describing the sequences ``scan`` has to iterate over. All
		    sequences must be the same length in this version of ``scan``.
		
		outputs_info
		    ``outputs_info`` is the list of Theano variables or dictionaries
		    describing the initial state of the outputs computed
		    recurrently.
		
		non_sequences
		    ``non_sequences`` is the list of arguments that are passed to
		    ``fn`` at each steps. One can opt to exclude variable
		    used in ``fn`` from this list as long as they are part of the
		    computational graph, though for clarity we encourage not to do so.
		
		n_steps
		    ``n_steps`` is the number of steps to iterate given as an int
		    or Theano scalar (> 0). If any of the input sequences do not have
		    enough elements, scan will raise an error. If n_steps is not provided,
		    ``scan`` will figure out the amount of steps it should run given its
		    input sequences.
		
		save_every_N
		    ``save_every_N`` is the number of steps to go without storing
		    the computations of ``scan`` (ie they will have to be recomputed
		    during the gradient computation).
		
		padding
		    If the length of the sequences is not a multiple of ``save_every_N``,
		    the sequences will be zero padded to make this version of ``scan``
		    work properly, but will also result in a memory copy. It can be
		    avoided by setting ``padding`` to False, but you need to make
		    sure the length of the sequences is a multple of ``save_every_N``.
		
		Returns
		-------
		tuple
		    Tuple of the form ``(outputs, updates)`` as in :func:`~theano.scan`, but
		    with a small change: It only contain the output at each
		    ``save_every_N`` step. The time steps that are not returned by
		    this function will be recomputed during the gradient computation
		    (if any).
		
		See Also
		--------
		:func:`~theano.scan`: Looping in Theano.
	**/
	static public function scan_checkpoints(fn:Dynamic, ?sequences:Dynamic, ?outputs_info:Dynamic, ?non_sequences:Dynamic, ?name:Dynamic, ?n_steps:Dynamic, ?save_every_N:Dynamic, ?padding:Dynamic):Dynamic;
}