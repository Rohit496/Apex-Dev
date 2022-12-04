@isTest
public with sharing class TempretureTest {
    @isTest
  static void testTempCalculator() {
    Decimal cal = TempCalculator.FahreheitToCelsius(70);
    System.assertEquals(21.11, cal, 'The value should be 21.11');
  }
}
