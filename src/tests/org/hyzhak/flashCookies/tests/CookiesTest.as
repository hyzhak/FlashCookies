package org.hyzhak.flashCookies.tests
{
	import org.hamcrest.assertThat;
	import org.hamcrest.object.notNullValue;
	import org.hamcrest.object.nullValue;
	import org.hamcrest.text.emptyString;
	import org.hyzhak.flashCookies.Cookies;
	import org.hyzhak.flashCookies.builder.CookiesBuilder;
	import org.hyzhak.flashCookies.connections.sharedObject.SharedObjectConnection;

	public class CookiesTest
	{
		
		
		[Before]
		public function setUp():void
		{
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testSharedObjectConnection():void
		{
			try
			{
				var cookies:Cookies = CookiesBuilder.newCookies()
					.connectedTo(SharedObjectConnection.base())
					.bundle("test")
					.build();
				
				assertThat(cookies, notNullValue());
			}
			catch(e : Error)
			{
				assertThat(e.message, emptyString());
			}			
		}
		
//		[Test]
//		public function testFlexLoggerConnection():void
//		{
//			var cookies:Cookies = CookiesBuilder.newCookies()
//				.connectedTo(FlexLoggerConnection.base())
//				.bundle("test")
//				.autoSync(true)
//				.build();
//			
//			assertThat(cookies, notNullValue());
//		}
	}
}