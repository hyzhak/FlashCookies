package org.hyzhak.flashCookies.connections.flexLogger
{
	public class FlexLoggerConnection
	{
		private static var _instance : FlexLoggerFactory = new FlexLoggerFactory();
		
		public static function base() : FlexLoggerFactory
		{
			return _instance;
		}
	}
}