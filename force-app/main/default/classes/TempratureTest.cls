@isTest
public with sharing class TempratureTest {
  @isTest
  static void testMethod1() {
    Decimal d = Temprature.fehreniteToCelcius(70);
    System.assertEquals(21.11, d);
  }
}
