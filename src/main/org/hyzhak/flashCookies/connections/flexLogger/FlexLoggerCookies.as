package org.hyzhak.flashCookies.connections.flexLogger
{
	import mx.logging.ILogger;
	import mx.logging.Log;
	
	import org.hyzhak.flashCookies.Cookies;
	import org.hyzhak.flashCookies.connections.CookiesConnection;

	public class FlexLoggerCookies implements CookiesConnection
	{
		private var _logger : ILogger;
		
		public function FlexLoggerCookies(bundleName : String) 
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