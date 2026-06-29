class QurbaniState {
  final int selectedDateIndex;
  final String selectedDate;

  final int selectedTimeSlotIndex;
  final String selectedTimeSlot;

  final int selectedVendorIndex;

  const QurbaniState({
    this.selectedDateIndex = 0,
    this.selectedDate = "",

    this.selectedTimeSlotIndex = 0,
    this.selectedTimeSlot = "",

    this.selectedVendorIndex = 0,
  });

  QurbaniState copyWith({
    int? selectedDateIndex,
    String? selectedDate,

    int? selectedTimeSlotIndex,
    String? selectedTimeSlot,

    int? selectedVendorIndex,
  }) {
    return QurbaniState(
      selectedDateIndex:
      selectedDateIndex ?? this.selectedDateIndex,
      selectedDate:
      selectedDate ?? this.selectedDate,

      selectedTimeSlotIndex:
      selectedTimeSlotIndex ?? this.selectedTimeSlotIndex,
      selectedTimeSlot:
      selectedTimeSlot ?? this.selectedTimeSlot,

      selectedVendorIndex:
      selectedVendorIndex ?? this.selectedVendorIndex,
    );
  }
}