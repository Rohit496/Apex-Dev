@isTest
public with sharing class TaskUtilityTest {
  @isTest
  static void testgetTaskPriority() {
    String priority = TaskUtility.getTaskPriority('AU');
    System.assertEquals('Normal', priority);
  }
  @isTest
  static void testgetTaskPriority1() {
    String priority = TaskUtility.getTaskPriority('US');
    System.assertEquals('High', priority);
  }
  @isTest
  static void testgetTaskPriority2() {
    String priority = TaskUtility.getTaskPriority('AME');
    System.assertEquals(null, priority);
  }
}
