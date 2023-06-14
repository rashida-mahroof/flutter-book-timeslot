import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testtttt/main-vm.dart';

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DaysProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Dropdown Example'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    DropdownButton<String>(
                      value: provider.selectedDay,
                      onChanged: (String? newValue) {
                        provider.selectedDay = newValue;
                        provider.refresh();
                      },
                      items: provider.days.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: Text('Select a day'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Checkin'),
                        Row(
                          children: [
                            Text(provider.fromTime.toString()),
                            IconButton(
                                onPressed: () async {
                                  final selectedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (selectedTime != null) {
                                    provider.fromTime = selectedTime.format(context);
                                    provider.refresh();
                                  }
                                },
                                icon: Icon(Icons.timer)),
                          ],
                        ),
                      ],
                    ),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Checkout'),
                        Row(
                          children: [
                            Text(provider.toTime.toString()),
                            IconButton(
                                onPressed: () async {
                                  final selectedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (selectedTime != null) {
                                    provider.toTime = selectedTime.format(context);
                                    provider.refresh();
                                  }
                                },
                                icon: Icon(Icons.timer)),
                          ],
                        ),
                      ],
                    ),
                    
                  ],
                ),
                ElevatedButton(onPressed: (){
                  provider.addSelectedDayToModel();
                }, child: Text('Add')),
               Expanded(
  child: ListView.builder(
    itemCount: provider.daysList.length,
    itemBuilder: (BuildContext context, int index) {
      final d = provider.daysList[index];
      return Card(
        child: ListTile(
          title: Text(d.day.toString()),
          subtitle: Container(
            height: 200,
            child: ListView.builder(
              itemCount: provider.timeSlotList.length,
              itemBuilder: (BuildContext context, int index) {
                final a = provider.timeSlotList[index];
                return Text(a.from! + '-' + a.to!);
              },
            ),
          ),
        ),
      );
    },
  ),
)

               ],
            ),
          ),
        );
      },
    );
  }
}
