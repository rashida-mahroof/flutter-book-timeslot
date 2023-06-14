import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testtttt/main-view.dart';
import 'package:testtttt/main-vm.dart';
void main() {
 runApp(
    ChangeNotifierProvider<DaysProvider>(
      create: (_) => DaysProvider(), // Replace with your custom provider
      child: MaterialApp( // Add MaterialApp or WidgetsApp
        home: MyView(),
      ),
    ),
  );
}



class SelectedDaysProvider extends ChangeNotifier {
  List<String> selectedDays = [];
  String textFieldValue1 = '';
  String textFieldValue2 = '';

  void setDay(String day) {
    selectedDays = [day];
    notifyListeners();
  }

  void setTextFieldValue1(String value) {
    textFieldValue1 = value;
    notifyListeners();
  }

  void setTextFieldValue2(String value) {
    textFieldValue2 = value;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController textFieldController1 = TextEditingController();
  final TextEditingController textFieldController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SelectedDaysProvider>(
              builder: (context, selectedDaysProvider, _) {
                return DropdownButton<String>(
                  value: selectedDaysProvider.selectedDays.isNotEmpty
                      ? selectedDaysProvider.selectedDays[0]
                      : null,
                  onChanged: (String? newValue) {
                    selectedDaysProvider.setDay(newValue!);
                  },
                  items: ['Thursday', 'Friday', 'Wednesday']
                      .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                );
              },
            ),
            TextFormField(
              controller: textFieldController1,
              onChanged: (value) {
                Provider.of<SelectedDaysProvider>(context, listen: false)
                    .setTextFieldValue1(value);
              },
            ),
            TextFormField(
              controller: textFieldController2,
              onChanged: (value) {
                Provider.of<SelectedDaysProvider>(context, listen: false)
                    .setTextFieldValue2(value);
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Text('Go to List Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Days and Values'),
      ),
      body: Consumer<SelectedDaysProvider>(
        builder: (context, selectedDaysProvider, _) {
          return ListView.builder(
            itemCount: selectedDaysProvider.selectedDays.length,
            itemBuilder: (context, index) {
              final day = selectedDaysProvider.selectedDays[index];
              return ListTile(
                title: Text('Day: $day'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Text Field 1: ${selectedDaysProvider.textFieldValue1}'),
                    Text('Text Field 2: ${selectedDaysProvider.textFieldValue2}'),
                  ],
                ),
              );
            },
          );
        },
      ),

    );
  }
}