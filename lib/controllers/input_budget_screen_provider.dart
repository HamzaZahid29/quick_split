import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputBudgetScreenProvider extends ChangeNotifier {
  List<String> _selectedParticipants = [];

  List<String> get selectedParticipants => _selectedParticipants;

  void setSelectedParticipants(List<String> participants) {
    _selectedParticipants = participants;
    notifyListeners();
  }
  void clearList(){
    _selectedParticipants.clear();
    notifyListeners();
  }



  final TextEditingController controller = TextEditingController();
  final NumberFormat formatter = NumberFormat('#,###');
  final int maxValue = 1000000000;

  InputBudgetScreenProvider() {
    controller.addListener(_formatNumber);
  }

  void _formatNumber() {
    String text = controller.text.replaceAll(',', '');
    if (text.isEmpty) return;

    int value = int.tryParse(text) ?? 0;
    if (value > maxValue) value = maxValue;

    String formattedText = formatter.format(value);

    controller.value = TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );

    notifyListeners();
  }

  void addParticipant(String participant) {
    if (!selectedParticipants.contains(participant)) {
      selectedParticipants.add(participant);
      notifyListeners();
    }
  }

  void removeParticipant(String participant) {
    selectedParticipants.remove(participant);
    notifyListeners();
  }

  void clearParticipants() {
    selectedParticipants.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    controller.removeListener(_formatNumber);
    controller.dispose();
    super.dispose();
  }

}
