public with sharing class TransactionExample {
  public static void getData(String name, String lastName, String company) {
    Account acc = new Account();
    acc.Name = name;
    insert acc;
    Lead l = new Lead();
    l.LastName = lastName;
    l.Company = company;
    insert l;
  }
}
