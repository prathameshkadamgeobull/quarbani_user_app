abstract class QurbaniEvent {}

class SelectDateEvent extends QurbaniEvent {
  final int selectedIndex;
  final String selectedDate;

  SelectDateEvent({
    required this.selectedIndex,
    required this.selectedDate,
  });
}

class SelectTimeSlotEvent extends QurbaniEvent {
  final int selectedIndex;
  final String selectedTime;

  SelectTimeSlotEvent({
    required this.selectedIndex,
    required this.selectedTime,
  });
}

class SelectVendorEvent extends QurbaniEvent {
  final int selectedIndex;

  SelectVendorEvent({
    required this.selectedIndex,
  });
}