trigger ContactTrigger on Contact(before insert, before update, before delete) {
  //   for (Contact con : Trigger.New) {
  //     if (Trigger.isInsert) {
  //       con.Description = 'This is coming from before Insert';
  //     } else if (Trigger.isUpdate) {
  //       con.Description =
  //         'This is coming from after Update by ' + UserInfo.getUserType();
  //     }
  //   }
  for (Contact cc : Trigger.old) {
    if (cc.AccountId == null) {
      cc.addError('Account not found');
    }
  }
}
