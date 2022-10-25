public with sharing class TaskDemo {
  public static String getTaskBasedOnCountry(String country) {
    String priority = '';
    if (country == 'US') {
      priority = 'High';
    } else if (country == 'UK') {
      priority = 'Medium';
    } else if (country == 'India') {
      priority = 'Low';
    } else {
      priority = 'No Priority';
    }
    return priority;
  }
}
