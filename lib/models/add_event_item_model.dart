
class AddEventItemModel{

  final String? catId;
  final String? title;
  final String? date;
  final String? startTime;
  final String? endTime;
  final String? addMe;
  final LocationModel? location;

  AddEventItemModel({this.catId,this.title,this.date,this.startTime,
  this.location,this.addMe,this.endTime});

}

class LocationModel{

  final String? id;
  final String? name;

  LocationModel({this.name,this.id});
}