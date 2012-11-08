package org.hyzhak.flashCookies.connections.sharedObject
{
	public class SharedObjectConnection
	{
		private static var _factory : SharedObjectFactory = new SharedObjectFactory();
		
		public static function base() : SharedObjectFactory
		{
			return _factory;
		}
	}
}