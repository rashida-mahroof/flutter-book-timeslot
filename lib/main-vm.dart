import 'package:flutter/material.dart';
import 'package:testtttt/model.dart';

class DaysProvider with ChangeNotifier {
  final List<String> days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];
  String fromTime = 'Select';
   String toTime = 'Select';
   List<String> selectedDaysList = [];

  DaysModel daysModel = DaysModel();
  List<DaysModel> daysList = [];
  TimeSlotModel timeSlots = TimeSlotModel();
  List<TimeSlotModel> timeSlotList =[];
  String? selectedDay;
   
List<DaysModel> daysModelList = [];

  void refresh(){
    notifyListeners();
  }
    void addSelectedDayToModel() {
    if (selectedDay != null) {
      if (daysList.any((day) => day.day == selectedDay)) {
       timeSlotList.add(TimeSlotModel(from: fromTime,to: toTime));
        print('Day Already added');
      } else {
        daysList.add(DaysModel(day: selectedDay!));
      }
      refresh();
    }
  }
}
