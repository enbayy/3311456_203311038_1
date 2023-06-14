class yemek {
  final int id;
  final String name;

  yemek({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
  @override
  String toString() {
    return 'Yemek{id: $id, name: $name}';
  }
}