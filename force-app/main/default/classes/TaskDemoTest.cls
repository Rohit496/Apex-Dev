@isTest
public with sharing class TaskDemoTest {
  @isTest
  static void method1() {
    String str = TaskDemo.getTaskBasedOnCountry('US');
    System.assertEquals('High', str);
  }
  @isTest
  static void method2() {
    String str = TaskDemo.getTaskBasedOnCountry('UK');
    System.assertEquals('Medium', str);
  }
  @isTest
  static void method3() {
    String str = TaskDemo.getTaskBasedOnCountry('India');
    System.assertEquals('Low', str);
  }
  @isTest
  static void method4() {
    String str = TaskDemo.getTaskBasedOnCountry('China');
    System.assertEquals('No Priority', str);
  }
}