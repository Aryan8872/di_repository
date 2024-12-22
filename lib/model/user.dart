class User{
  final int id;
  final String fname;
  final int age;

  User({required this.id,required this.fname,required this.age});

    @override
  String toString() {
    return 'id :$id, fname: $fname,age:$age';
  }
}