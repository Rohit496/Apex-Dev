Account acc=new Account();
acc.Name='Test Account1';
insert acc;
Account ac=[select Id,Name from Account where Id=:acc.Id];
String str=ac.Description;
System.debug('Str:'+str);


