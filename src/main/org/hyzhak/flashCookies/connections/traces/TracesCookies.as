package org.hyzhak.flashCookies.connections.traces
{
	import org.hyzhak.flashCookies.connections.CookiesConnection;
	
	public class TracesCookies implements CookiesConnection
	{
		private var _bundleName : String;
		
		public function TracesCookies(bundleName : String)
		{
			_bundleName = bundleName;
		}
		
		public function requestCookie(name:String):*
		{
			return null;
		}
		
		public function storeCookie(name:String, value:*):void
		{
		}
		
		public function defaultCookie(name:String, value:*):void
		{
		}
		
		public function sync():void
		{
		}
		
		public function clear():void
		{
		}
	}
}