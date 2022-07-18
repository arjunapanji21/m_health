import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:m_health/provider/event_provider.dart';
import 'package:provider/provider.dart';

import '../../models/event.dart';
import '../events/event_editing_page.dart';

class EventViewingPage extends StatelessWidget {
  final Event event;
  const EventViewingPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.withOpacity(0.8),
          leading: CloseButton(),
          actions: buildViewingActions(context, event),
        ),
        body: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            // buildDateTime(event),
            SizedBox(
              height: 32,
            ),
            Text(
              event.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(event.from.hour.toString()+"."+event.from.minute.toString()+" - "+event.to.hour.toString()+"."+event.to.minute.toString(), textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 18)),
            const SizedBox(
              height: 24,
            ),
            Text('PJ: '+event.description, textAlign: TextAlign.end,
                style: TextStyle(color: Colors.black, fontSize: 18)),
          ],
        ),
      );

  // Widget buildDateTime(Event event) {
  //   return Column(
  //     children: [
  //       buildDate(event.isAllDay ? 'All-Day' : 'From', event.from),
  //       if (!event.isAllDay) buildDate('To', event.to),
  //     ],
  //   );
  // }

  List<Widget> buildViewingActions(BuildContext context, Event event) => [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => EventEditingPage(event: event)),
          ),
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            final provider = Provider.of<EventProvider>(context, listen: false);
            provider.deleteEvent(event);
            Navigator.of(context).pop();
          },
        ),
      ];
}
