SObject s1 = new Account(Name = 'Test', Rating = 'Hot', Industry = 'Tech'); //create a new account
System.debug('s1: ' + s1);

Account a1 = (Account) s1;
System.debug('a1: ' + a1);
System.debug('Get sObjectType: ' + a1.getsObjectType());
System.debug('Get sObjectType name: ' + a1.getsObjectType().getname());
