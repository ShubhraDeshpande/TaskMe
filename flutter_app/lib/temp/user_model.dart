class UserModel {
  final int id;
  final String title;
  final String address;
  final double payRange;
  final String category;
  final String avatar;
  final String description;
  final String date; // change to dateTime later
  final String postedBy;
  final String phone;
  UserModel(this.id, this.title, this.avatar, this.category, this.address, this.payRange, this.description, this.date,this.postedBy, this.phone);
}