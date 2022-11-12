List<String> days = new List<String>{
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
};

// display list using for each loop in apex
for (String day : days) {
  System.debug(day);
}

for (Integer i = 0; i < days.size(); i++) {
  if (days[i] == 'Tuesday') {
    System.debug('Today is ' + days[i] + ' you can not eat the chicken');
    continue;
  }
  System.debug('You can eat chicken on ' + days[i]);
}
