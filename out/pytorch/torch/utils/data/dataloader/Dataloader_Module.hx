/* This file is generated, do not edit! */
package torch.utils.data.dataloader;
@:pythonImport("torch.utils.data.dataloader") extern class Dataloader_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	static public var T_co : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _collate_fn_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _worker_init_fn_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Puts each data field into a tensor with outer dimension batch size
	**/
	static public function default_collate(batch:Dynamic):Dynamic;
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
	static public var string_classes : Dynamic;
}