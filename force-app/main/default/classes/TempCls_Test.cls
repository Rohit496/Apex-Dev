@isTest
public with sharing class TempCls_Test {
  // positive test case
  @isTest
  public static void testPositive() {
    Test.startTest();
    Double d = TempCls.fahrenheitToCelsius(70);
    System.assertEquals(21.11, d);
    Test.stopTest();
  }

  // negative test case
  @isTest
  public static void testNegative() {
    Test.startTest();
    Double d = TempCls.fahrenheitToCelsius(-70);
    System.assertEquals(-56.67, d);
    Test.stopTest();
  }

  // Zero condition test case
  @isTest
  public static void testZero() {
    Test.startTest();
    Double d = TempCls.fahrenheitToCelsius(0);
    System.assertEquals(-17.78, d);
    Test.stopTest();
  }
}