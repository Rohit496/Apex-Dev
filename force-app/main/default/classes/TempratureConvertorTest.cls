@isTest
public with sharing class TempratureConvertorTest {
  // positive test case
  @isTest
  static void tesMethod1() {
    Decimal de = TempratureConvertor.FahrenheitToCelsius(70);
    System.assertEquals(21.11, de);
  }
  @isTest
  static void tesMethod2() {
    Decimal de = TempratureConvertor.FahrenheitToCelsius(32);
    System.assertEquals(0, de);
  }
  @isTest
  static void tesMethod3() {
    Decimal de = TempratureConvertor.FahrenheitToCelsius(-10);
    System.assertEquals(-23.33, de);
  }
}
