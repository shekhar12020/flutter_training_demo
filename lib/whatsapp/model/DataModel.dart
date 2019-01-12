class DataModel {
  String name;
  String message;
  String date;

  DataModel(this.name, this.message, this.date);
}

List<DataModel> details = [
  new DataModel("Amit", "hello", "2 min ago"),
  new DataModel("Sameer", "hi", "Today"),
  new DataModel("Pratik", "No Message", ""),
  new DataModel("Kishna", "No Message", ""),
  new DataModel("Rahul", "No Message", ""),
];
