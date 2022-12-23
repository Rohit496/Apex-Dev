public with sharing class TaskPriority {
  public static String getTaskPriority(String countryCode) {
    if (String.isBlank(countryCode) || countryCode.length() > 2) {
      return null;
    }
    String taskPriority;
    if (countryCode == 'US') {
      taskPriority = 'High';
    } else if (countryCode == 'CA') {
      taskPriority = 'Medium';
    } else {
      taskPriority = 'Low';
    }
    return taskPriority;
  }
}