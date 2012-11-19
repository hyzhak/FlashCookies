package org.hyzhak.flashCookies.builder
{
	import org.hyzhak.flashCookies.Cookies;
	import org.hyzhak.flashCookies.CollectionOfCookies;
	import org.hyzhak.flashCookies.connections.CookiesConnectionFactory;

	public class CookiesBuilder implements CookiesConnectionBuilder, CookiesBundleBuilder, CookiesInstanceBuilder, CookiesBuilderState
	{
		private static var _instance : CookiesBuilder = new CookiesBuilder();
		
		public static function newCookies() : CookiesConnectionBuilder
		{
			return _instance;
		}
		
		private var _bundleName:String;
		private var _autoSync:Boolean;
		
		//--------------------------------------------------------------------------
		//
		//  CookiesConnectionBuilder 
		//
		//--------------------------------------------------------------------------
		private var _connectionFactories:Vector.<CookiesConnectionFactory> = new Vector.<CookiesConnectionFactory>();
		
		public function connectedTo(factory:CookiesConnectionFactory):CookiesBundleBuilder
		{
			_connectionFactories.push(factory);			
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
		//  CookiesBuilderState 
		//
		//--------------------------------------------------------------------------
		public function getBundleNane() : String
		{
			return _bundleName;
		}
		
		public function get isAutoSync() : Boolean
		{
			return _autoSync
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
			
			for each(var factory : CookiesConnectionFactory in _connectionFactories)
			{
				instances.push(factory.create(this));
			}
						
			if(instances.length == 1)
			{
				return instances[0];
			}
			
			return new CollectionOfCookies(instances);
		}
	}
}