@isTest
public with sharing class TaskPriorityTest {
  @isTest
  public static void testGetTaskPriority1() {
    String str = TaskPriority.getTaskPriority('US');
    System.assertEquals('High', str);
  }
  @isTest
  public static void testGetTaskPriority2() {
    String str = TaskPriority.getTaskPriority('CA');
    System.assertEquals('Medium', str);
  }
  @isTest
  public static void testGetTaskPriority3() {
    String str = TaskPriority.getTaskPriority('IND');
    System.assertEquals(null, str);
  }
  @isTest
  public static void testGetTaskPriority4() {
    String str = TaskPriority.getTaskPriority('IN');
    System.assertEquals('Low', str);
  }
}