package org.hyzhak.flashCookies.connections
{
	import org.hyzhak.flashCookies.Cookies;

	public class CollectionOfCookies implements Cookies
	{
		private var _collection : Vector.<Cookies>;
		
		public function CollectionOfCookies(collection : Vector.<Cookies>)
		{
			_collection = collection;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Cookies 
		//
		//--------------------------------------------------------------------------
		
		public function requestCookie(name:String):*
		{
			for each(var cookie : Cookies in _collection)
			{
				var result : * = cookie.requestCookie(name);
				if(result != null)
				{
					return result;
				}
			}
			
			return null;
		}
		
		public function storeCookie(name:String, value:*):void
		{
			for each(var cookie : Cookies in _collection)
			{
				cookie.storeCookie(name, value);
			}
		}
		
		public function defaultCookie(name:String, value:*):void
		{
			for each(var cookie : Cookies in _collection)
			{
				cookie.defaultCookie(name, value);
			}
		}
		
		public function sync():void
		{
			for each(var cookie : Cookies in _collection)
			{
				cookie.sync();
			}
		}
		
		public function clear():void
		{
			for each(var cookie : Cookies in _collection)
			{
				cookie.clear();
			}
		}
		
	}
}