package org.hyzhak.flashCookies.connections.traces
{
	public class TracesConnection
	{
		private static var _instance : TracesFactory = new TracesFactory();
		
		public static function base() : TracesFactory
		{
			return _instance;
		}
	}
}