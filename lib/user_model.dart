class UserModel {
  DateTime? dateOfBirth;

  UserModel({this.dateOfBirth});

  int getAge() {
    if (dateOfBirth == null) return 0;
    DateTime now = DateTime.now();
    int age = now.year - dateOfBirth!.year;
    if (now.month < dateOfBirth!.month ||
        (now.month == dateOfBirth!.month && now.day < dateOfBirth!.day)) {
      age--;
    }
    return age;
  }

  int getTotalMonths() {
    if (dateOfBirth == null) return 0;
    DateTime now = DateTime.now();
    int months =
        (now.year - dateOfBirth!.year) * 12 + now.month - dateOfBirth!.month;
    if (now.day < dateOfBirth!.day) {
      months--;
    }
    return months;
  }

  int getTotalDays() {
    if (dateOfBirth == null) return 0;
    DateTime now = DateTime.now();
    int days = now.difference(dateOfBirth!).inDays;
    return days;
  }
}
