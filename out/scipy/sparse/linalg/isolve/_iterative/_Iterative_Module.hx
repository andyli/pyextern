/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve._iterative;
@:pythonImport("scipy.sparse.linalg.isolve._iterative") extern class _Iterative_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = cbicgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``cbicgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		work : in/output rank-1 array('F') with bounds (6 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function cbicgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = cbicgstabrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``cbicgstabrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		work : in/output rank-1 array('F') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function cbicgstabrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = ccgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``ccgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		work : in/output rank-1 array('F') with bounds (4 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function ccgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = ccgsrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``ccgsrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		work : in/output rank-1 array('F') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function ccgsrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = cgmresrevcom(b,x,restrt,work,work2,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``cgmresrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		restrt : input int
		work : in/output rank-1 array('F') with bounds (ldw*(6+restrt))
		work2 : in/output rank-1 array('F') with bounds (ldw2*(2*restrt+2))
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function cgmresrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = cqmrrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``cqmrrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('F') with bounds (n)
		x : input rank-1 array('F') with bounds (n)
		work : in/output rank-1 array('F') with bounds (11 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('F') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function cqmrrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bnrm2,resid,info = cstoptest2(r,b,bnrm2,tol,info)
		
		Wrapper for ``cstoptest2``.
		
		Parameters
		----------
		r : input rank-1 array('F') with bounds (n)
		b : input rank-1 array('F') with bounds (n)
		bnrm2 : input float
		tol : input float
		info : input int
		
		Returns
		-------
		bnrm2 : float
		resid : float
		info : int
	**/
	static public function cstoptest2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dbicgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dbicgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		work : in/output rank-1 array('d') with bounds (6 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dbicgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dbicgstabrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dbicgstabrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		work : in/output rank-1 array('d') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dbicgstabrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dcgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dcgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		work : in/output rank-1 array('d') with bounds (4 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dcgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dcgsrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dcgsrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		work : in/output rank-1 array('d') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dcgsrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dgmresrevcom(b,x,restrt,work,work2,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dgmresrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		restrt : input int
		work : in/output rank-1 array('d') with bounds (ldw*(6+restrt))
		work2 : in/output rank-1 array('d') with bounds (ldw2*(2*restrt+2))
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dgmresrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = dqmrrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``dqmrrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('d') with bounds (n)
		x : input rank-1 array('d') with bounds (n)
		work : in/output rank-1 array('d') with bounds (11 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function dqmrrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bnrm2,resid,info = dstoptest2(r,b,bnrm2,tol,info)
		
		Wrapper for ``dstoptest2``.
		
		Parameters
		----------
		r : input rank-1 array('d') with bounds (n)
		b : input rank-1 array('d') with bounds (n)
		bnrm2 : input float
		tol : input float
		info : input int
		
		Returns
		-------
		bnrm2 : float
		resid : float
		info : int
	**/
	static public function dstoptest2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = sbicgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``sbicgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		work : in/output rank-1 array('f') with bounds (6 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function sbicgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = sbicgstabrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``sbicgstabrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		work : in/output rank-1 array('f') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function sbicgstabrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = scgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``scgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		work : in/output rank-1 array('f') with bounds (4 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function scgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = scgsrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``scgsrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		work : in/output rank-1 array('f') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function scgsrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = sgmresrevcom(b,x,restrt,work,work2,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``sgmresrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		restrt : input int
		work : in/output rank-1 array('f') with bounds (ldw*(6+restrt))
		work2 : in/output rank-1 array('f') with bounds (ldw2*(2*restrt+2))
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function sgmresrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = sqmrrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``sqmrrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('f') with bounds (n)
		x : input rank-1 array('f') with bounds (n)
		work : in/output rank-1 array('f') with bounds (11 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('f') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : float
		sclr2 : float
		ijob : int
	**/
	static public function sqmrrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bnrm2,resid,info = sstoptest2(r,b,bnrm2,tol,info)
		
		Wrapper for ``sstoptest2``.
		
		Parameters
		----------
		r : input rank-1 array('f') with bounds (n)
		b : input rank-1 array('f') with bounds (n)
		bnrm2 : input float
		tol : input float
		info : input int
		
		Returns
		-------
		bnrm2 : float
		resid : float
		info : int
	**/
	static public function sstoptest2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zbicgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zbicgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		work : in/output rank-1 array('D') with bounds (6 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zbicgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zbicgstabrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zbicgstabrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		work : in/output rank-1 array('D') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zbicgstabrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zcgrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zcgrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		work : in/output rank-1 array('D') with bounds (4 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zcgrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zcgsrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zcgsrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		work : in/output rank-1 array('D') with bounds (7 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zcgsrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zgmresrevcom(b,x,restrt,work,work2,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zgmresrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		restrt : input int
		work : in/output rank-1 array('D') with bounds (ldw*(6+restrt))
		work2 : in/output rank-1 array('D') with bounds (ldw2*(2*restrt+2))
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zgmresrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,iter,resid,info,ndx1,ndx2,sclr1,sclr2,ijob = zqmrrevcom(b,x,work,iter,resid,info,ndx1,ndx2,ijob)
		
		Wrapper for ``zqmrrevcom``.
		
		Parameters
		----------
		b : input rank-1 array('D') with bounds (n)
		x : input rank-1 array('D') with bounds (n)
		work : in/output rank-1 array('D') with bounds (11 * ldw)
		iter : input int
		resid : input float
		info : input int
		ndx1 : input int
		ndx2 : input int
		ijob : input int
		
		Returns
		-------
		x : rank-1 array('D') with bounds (n)
		iter : int
		resid : float
		info : int
		ndx1 : int
		ndx2 : int
		sclr1 : complex
		sclr2 : complex
		ijob : int
	**/
	static public function zqmrrevcom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bnrm2,resid,info = zstoptest2(r,b,bnrm2,tol,info)
		
		Wrapper for ``zstoptest2``.
		
		Parameters
		----------
		r : input rank-1 array('D') with bounds (n)
		b : input rank-1 array('D') with bounds (n)
		bnrm2 : input float
		tol : input float
		info : input int
		
		Returns
		-------
		bnrm2 : float
		resid : float
		info : int
	**/
	static public function zstoptest2(args:haxe.extern.Rest<Dynamic>):Dynamic;
}