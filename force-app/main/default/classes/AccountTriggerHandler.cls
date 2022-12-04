global with sharing class AccountTriggerHandler {
  // before insert action on account
  global static void beforeInsert(List<Account> newAccounts) {
    assignAccountNames(newAccounts);
  }

  // before update action on account
  global static void beforeUpdate(List<Account> newAccounts) {
    assignAccountNames(newAccounts);
  }

  // set all account names based on the account type
  global static void setAccountNames(List<Account> newAccounts) {
    // query and map account names to account types
    Map<String, String> accountNames = new Map<String, String>();
    for (AccountName an : [SELECT Id, Name, Account_Type__c FROM AccountName]) {
      accountNames.put(an.Account_Type__c, an.Name);
    }
  }
}
