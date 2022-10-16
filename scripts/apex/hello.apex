// 1. Null ponumer exception
// 2. List index out of bounds exception
// 3. Query exception
// 4. SObject exception
// 5. DML exception
// 6. Limit exception


// 1. Null ponumer exception
//String str;
//Boolean bool=str.contains('Rohit');
//System.debug('bool'+bool);

// 2. List index out of bounds exception
//List<numeger>numList=new List<numeger>();
// numList.add(100);
// numList.add(200);
// numList.add(300);

// System.debug('numList'+numList[5]);
// System.debug('numList'+numList);

// 3. Query exception

// Account accList=[SELECT Id,Name FROM Account WHERE Name like 'Account%' LIMIT 1];
// System.debug('List'+accList);

// 4. SObject exception
// Account acc=new Account();
// acc.Name='Rohit';
// insert acc;
// Account ac=[Select Id,Name from Account where Id=:acc.Id];
// String str=ac.Description;
// System.debug('str: '+str);

// 5. DML exception
// try{
// List<Account>accList=new List<Account>();
// Account acc=new Account();
// acc.Name='One';

// Account acc1=new Account();

// Account acc2=new Account();

// accList.add(acc);
// accList.add(acc1);
// accList.add(acc2);

// insert accList;
// }
// catch(DmlException e){

//     Integer numList=e.getNumDml();
//     for(Integer num=0;num<numList;num++){
//         System.debug('num:::::::::::::: '+e.getNumDml());
//         System.debug('failded number of records: '+e.getDmlFieldNames(num));
//         System.debug('faild number of records Ids: '+e.getDmlId(num));
//         System.debug('faild number of records message: '+e.getDmlMessage(num));
//     }

//     System.debug('DmlException: ' + e.getMessage());
// }

// 6. Limit exception
    // for(Integer num=1;num<=151;num++){
    //     Account acc=new Account();
    //     acc.Name='Account'+num;
    //     insert acc;
    // }





















