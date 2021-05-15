import 'package:flutter/material.dart';
import 'package:flutter_timetable_view/src/models/table_event_time.dart';

class TableEvent {
  final String title;

  /// Id to uniquely identify event. Used mainly in callbacks
  final int eventId;

  /// Optional. Preferably abbreviate string to less than 5 characters
  final String location;

  final TableEventTime start;

  final TableEventTime end;

  final EdgeInsets padding;

  final EdgeInsets margin;

  //Todo:: Determine if Event ID needs to be passed to callback
  final void Function(
          int laneIndex, String title, TableEventTime start, TableEventTime end)
      onTap;

  final BoxDecoration decoration;

  final Color backgroundColor;

  final TextStyle textStyle;

  TableEvent({
    @required this.title,
    @required this.eventId,
    this.location: '',
    @required this.start,
    @required this.end,
    this.padding: const EdgeInsets.all(10),
    this.margin: const EdgeInsets.all(1),
    this.onTap,
    this.decoration,
    this.backgroundColor: const Color(0xCC2196F3),
    this.textStyle: const TextStyle(color: Colors.white),
  })  : assert(title != null),
        assert(start != null),
        assert(end != null),
        assert(end.isAfter(start));
}
