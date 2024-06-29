enum Gender {
  female(1),
  male(0),
  other(2);

  const Gender(this.id);
  final int id;

  static Gender fromValue(int? id) {
    if(id == Gender.female.id) return Gender.female;
    if(id == Gender.other.id) return Gender.other;
    return Gender.male;
  }

  static Gender fromString(String? name) {
    if(name == Gender.female.name) return Gender.female;
    if(name == Gender.other.name) return Gender.other;
    return Gender.male;
  }
}
