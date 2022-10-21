public with sharing class AccountUtility {
  public static void mainMethod() {
    try {
      insertAccount();
    } catch (AccountException e) {
      System.debug('AccountException: ' + e.getMessage());
      System.debug('AccountException: ' + e.getCause());
      System.debug('AccountException: ' + e.getStackTraceString());
      System.debug('AccountException: ' + e.getLineNumber());
    }
  }

  public static void insertAccount() {
    try {
      Account acc = new Account();
      insert acc;
    } catch (DmlException de) {
      throw new AccountException('Error in inserting account', de);
    }
  }
}
