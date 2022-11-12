trigger CaseTrigger on Case(
  before insert,
  before update,
  before delete,
  after insert,
  after update,
  after delete,
  after undelete
) {
  // Insert
  if (Trigger.isBefore) {
    if (Trigger.isInsert) {
      for (Case ca : Trigger.new) {
        System.debug('before insert' + ca.CaseNumber);
        if (ca.Type == 'Electrical') {
          ca.Priority = 'High';
        }
      }
    }
    if (Trigger.isUpdate) {
      for (Case ca : Trigger.new) {
        System.debug('before update' + ca.CaseNumber);
        if (ca.Type == 'Electrical') {
          ca.Priority = 'High';
        }
      }
    }
    if (Trigger.isDelete) {
      for (Case ca : Trigger.old) {
        System.debug('before delete' + ca.CaseNumber);
      }
    }
  }
  if (Trigger.isAfter) {
    if (Trigger.isInsert) {
      for (Case ca : Trigger.new) {
        System.debug('after insert' + ca.CaseNumber);
      }
    }
    if (Trigger.isUpdate) {
      for (Case ca : Trigger.new) {
        System.debug('after update' + ca.CaseNumber);
      }
    }
    if (Trigger.isDelete) {
      for (Case ca : Trigger.old) {
        System.debug('after delete' + ca.CaseNumber);
      }
    }
    if (Trigger.isUndelete) {
      for (Case ca : Trigger.new) {
        System.debug('after undelete' + ca.CaseNumber);
      }
    }
  }

}
