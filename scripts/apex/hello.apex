Map<String, List<String>> mainMap = new Map<String, List<String>>();
mainMap.put('Apex', new List<String>{ 'Development', 'Console' });
mainMap.put('Lightning', new List<String>{ 'Aura', 'Lwc' });

System.debug('mainMap: ' + mainMap);
for (String key : mainMap.keySet()) {
  System.debug('Key: ' + key);
  for (String value : mainMap.get(key)) {
    System.debug('Value: ' + value);
  }
}
// another program
String greeting;
Integer hour = 22;
greeting = (hour < 12)
  ? 'Good Morning'
  : (hour < 18)
      ? 'Good Afternoon'
      : (hour < 22) ? 'Good Evening' : 'Good Night';
System.debug(greeting);
