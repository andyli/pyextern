/* This file is generated, do not edit! */
package torch.optim.swa_utils;
@:pythonImport("torch.optim.swa_utils") extern class Swa_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	/**
		Updates BatchNorm running_mean, running_var buffers in the model.
		
		It performs one pass over data in `loader` to estimate the activation
		statistics for BatchNorm layers in the model.
		Args:
		    loader (torch.utils.data.DataLoader): dataset loader to compute the
		        activation statistics on. Each data batch should be either a
		        tensor, or a list/tuple whose first element is a tensor
		        containing data.
		    model (torch.nn.Module): model for which we seek to update BatchNorm
		        statistics.
		    device (torch.device, optional): If set, data will be transferred to
		        :attr:`device` before being passed into :attr:`model`.
		
		Example:
		    >>> loader, model = ...
		    >>> torch.optim.swa_utils.update_bn(loader, model)
		
		.. note::
		    The `update_bn` utility assumes that each data batch in :attr:`loader`
		    is either a tensor or a list or tuple of tensors; in the latter case it
		    is assumed that :meth:`model.forward()` should be called on the first
		    element of the list or tuple corresponding to the data batch.
	**/
	static public function update_bn(loader:Dynamic, model:Dynamic, ?device:Dynamic):Dynamic;
}