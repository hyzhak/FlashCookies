package org.hyzhak.flashCookies.connections
{
	import mx.logging.ILogger;
	import mx.logging.Log;
	import org.hyzhak.flashCookies.Cookies;

	public class LogCookies implements Cookies
	{
		private var _logger : ILogger;
		
		public function LogCookies(bundleName : String) 
		{
			_logger = Log.getLogger("Cookies_" + bundleName);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Cookies 
		//
		//--------------------------------------------------------------------------
		
		public function requestCookie(name:String):*
		{
			_logger.info("requestCookie {0}", name);
			return null;
		}
		
		public function storeCookie(name:String, value:*):void
		{
			_logger.info("storeCookie {0}, {1}", name, value);
		}
		
		public function defaultCookie(name:String, value:*):void
		{
			_logger.info("defaultCookie {0}, {1}", name, value);
		}
		
		public function sync():void
		{
			_logger.info("sync");
		}
		
		
		public function clear():void
		{
			_logger.info("clear");
		}
		
	}
}