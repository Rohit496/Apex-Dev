@isTest
public with sharing class TempCalculator_Test {
  @isTest
  static void testTempCalculator0() {
    Decimal cal = TempCalculator.FahreheitToCelsius(70);
    System.assertEquals(21.11, cal, 'The value should be 21.11');
  }

  @isTest
  static void testTempCalculator1() {
    Decimal cal = TempCalculator.FahreheitToCelsius(32);
    System.assertEquals(0, cal, 'The value should be 21.11');
  }

  @isTest
  static void testTempCalculator2() {
    Decimal cal = TempCalculator.FahreheitToCelsius(-10);
    System.assertEquals(-23.34, cal, 'The value should be 21.11');
  }
}
