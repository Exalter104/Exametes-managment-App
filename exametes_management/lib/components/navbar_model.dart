import 'package:exametes_management/screens/calender.dart';
import 'package:exametes_management/screens/dashboard.dart';
import 'package:exametes_management/screens/shifts.dart';

// import 'drawer_navebar.dart';

final List<Map<String, dynamic>> pageDetail = [
  {
    'pagename': const Dashboard(),
    'title': 'DashboardScreen',
  },
  {
    'pagename': const Shifts(),
    'title': 'ShiftsScreen',
  },
  {
    'pagename': const Calender(),
    'title': 'CalenderScreen',
  },
];
