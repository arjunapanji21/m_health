import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../models/event_data_source.dart';
import '../../provider/event_provider.dart';
import '../../widgets/task_widget.dart';
import '../events/event_editing_page.dart';

class Modul6 extends StatelessWidget {
  Modul6({Key? key}) : super(key: key);

  final CalendarController _calendarController = CalendarController();
  final DateRangePickerController _dateRangePickerController =
      DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Mengatur Jadwal Perawatan Pasien",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(height: 20),
            SizedBox(
              height: 675,
              child: Column(
                children: [
                  // Container(
                  //   height: 100,
                  //   child: SfDateRangePicker(
                  //     selectionColor: Colors.red.withOpacity(0.8),
                  //     controller: _dateRangePickerController,
                  //     showNavigationArrow: true,
                  //     allowViewNavigation: false,
                  //     monthViewSettings: DateRangePickerMonthViewSettings(
                  //         numberOfWeeksInView: 1),
                  //     // onSelectionChanged: ,
                  //   ),
                  // ),
                  Expanded(
                    child: SfCalendar(
                      view: CalendarView.month,
                      todayHighlightColor: Colors.red.withOpacity(0.8),
                      initialSelectedDate: DateTime.now(),
                      controller: _calendarController,
                      dataSource: EventDataSource(events),
                      onLongPress: (details) {
                        final provider =
                            Provider.of<EventProvider>(context, listen: false);
                        provider.setDate(details.date!);
                        showModalBottomSheet(context: context, builder: (context) => const TaskWidget());
                      },
                      // headerHeight: 0,
                      // viewHeaderHeight: 0,
                      // onViewChanged: viewChanged,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red.withOpacity(0.8),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventEditingPage())),
      ),
    );
  }
}

