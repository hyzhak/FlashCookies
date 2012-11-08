package org.hyzhak.flashCookies.builder
{
	import org.hyzhak.flashCookies.connections.LogCookies;
	import org.hyzhak.flashCookies.connections.CollectionOfCookies;
	import org.hyzhak.flashCookies.Cookies;
	import org.hyzhak.flashCookies.connections.SharedObjectCookies;
	import org.hyzhak.flashCookies.connections.CookiesConnectionBuilder;

	public class CookiesBuilder implements CookiesConnectionBuilder, CookiesBundleBuilder, CookiesInstanceBuilder
	{
		private static var _instance : CookiesBuilder = new CookiesBuilder();
		
		public static function newCookies() : CookiesConnectionBuilder
		{
			return _instance;
		}
		
		private var _withSharedObject :Boolean = false;
		private var _withREST :Boolean = false;
		private var _withLog :Boolean = false;
		
		private var _bundleName:String;
		private var _autoSync:Boolean;
		
		//--------------------------------------------------------------------------
		//
		//  CookiesConnectionBuilder 
		//
		//--------------------------------------------------------------------------
		
		public function withSharedObject() : CookiesBundleBuilder 
		{
			_withSharedObject = true;
			return this;
		}
		
		public function withRest() : CookiesBundleBuilder			
		{
			_withREST = true;
			return this;
		}
		
		public function withLog() : CookiesBundleBuilder
		{
			_withLog = true;		
			return this;
		}
		
		//--------------------------------------------------------------------------
		//
		//  CookiesBundleBuilder 
		//
		//--------------------------------------------------------------------------
		
		public function bundle(name : String) : CookiesInstanceBuilder
		{
			_bundleName = name;
			return this;
		}
		
		//--------------------------------------------------------------------------
		//
		//  CookiesInstanceBuilder 
		//
		//--------------------------------------------------------------------------
		
		public function autoSync(value : Boolean) : CookiesInstanceBuilder
		{
			_autoSync = value;
			return this;
		}
		
		public function build() : Cookies
		{
			var instances : Vector.<Cookies> = new Vector.<Cookies>();
			
			if(_withLog)
			{
				instances.push(new LogCookies(_bundleName));				
			}
			
			if(_withREST)
			{
				//TODO:...
			}
			
			if(_withSharedObject)
			{
				instances.push(new SharedObjectCookies(_bundleName, _autoSync));				
			}	
			
			if(instances.length == 1)
			{
				return instances[0];
			}
			
			return new CollectionOfCookies(instances);
		}
	}
}