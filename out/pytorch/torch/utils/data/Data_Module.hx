/* This file is generated, do not edit! */
package torch.utils.data;
@:pythonImport("torch.utils.data") extern class Data_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function argument_validation(f:Dynamic):Dynamic;
	/**
		Returns the information about the current
		:class:`~torch.utils.data.DataLoader` iterator worker process.
		
		When called in a worker, this returns an object guaranteed to have the
		following attributes:
		
		* :attr:`id`: the current worker id.
		* :attr:`num_workers`: the total number of workers.
		* :attr:`seed`: the random seed set for the current worker. This value is
		  determined by main process RNG and the worker id. See
		  :class:`~torch.utils.data.DataLoader`'s documentation for more details.
		* :attr:`dataset`: the copy of the dataset object in **this** process. Note
		  that this will be a different object in a different process than the one
		  in the main process.
		
		When called in the main process, this returns ``None``.
		
		.. note::
		   When used in a :attr:`worker_init_fn` passed over to
		   :class:`~torch.utils.data.DataLoader`, this method can be useful to
		   set up each worker process differently, for instance, using ``worker_id``
		   to configure the ``dataset`` object to only read a specific fraction of a
		   sharded dataset, or use ``seed`` to seed other libraries used in dataset
		   code.
	**/
	static public function get_worker_info():Dynamic;
	/**
		Randomly split a dataset into non-overlapping new datasets of given lengths.
		Optionally fix the generator for reproducible results, e.g.:
		
		>>> random_split(range(10), [3, 7], generator=torch.Generator().manual_seed(42))
		
		Args:
		    dataset (Dataset): Dataset to be split
		    lengths (sequence): lengths of splits to be produced
		    generator (Generator): Generator used for the random permutation.
	**/
	static public function random_split(dataset:Dynamic, lengths:Dynamic, ?generator:Dynamic):Dynamic;
	static public function runtime_validation(f:Dynamic):Dynamic;
}