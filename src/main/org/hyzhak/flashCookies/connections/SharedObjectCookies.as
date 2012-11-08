package org.hyzhak.flashCookies.connections
{
	import flash.net.SharedObject;
	import org.hyzhak.flashCookies.Cookies;

	public class SharedObjectCookies implements Cookies
	{
		private var _sharedObject : SharedObject;
		private var _autoSync : Boolean = false;
		
		public function SharedObjectCookies(bundleName : String, autoSync : Boolean) 
		{
			_sharedObject = SharedObject.getLocal(bundleName);
			_autoSync = autoSync;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Cookies 
		//
		//--------------------------------------------------------------------------
		
		public function requestCookie(name:String):*
		{
			return _sharedObject.data[name];
		}
		
		public function storeCookie(name:String, value:*):void
		{
			_sharedObject.data[name] = value;
			if(_autoSync)
			{
				sync();
			}
		}
		
		public function defaultCookie(name:String, value:*):void
		{
			if(requestCookie(name) != null)
			{
				return;
			}
			
			storeCookie(name, value);
		}
		
		public function sync():void
		{
			_sharedObject.flush();
		}
		
		public function clear():void
		{
			_sharedObject.clear();
		}
		
	}
}