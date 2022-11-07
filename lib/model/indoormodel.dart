class indoormodel {
  String title;
  String discription;
  String price;
  String height;
  String image;
  String temprature;
  String pot;

  indoormodel({
    this.title,
    this.discription,
    this.price,
    this.height,
    this.image,
    this.temprature,
    this.pot,
  });
  indoormodel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    discription = json['discription'];
    price = json['price'];
    height = json['height'];
    image = json['image'];
    temprature = json['temprature'];
    pot = json['pot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['discription'] = this.discription;
    data['price'] = this.price;

    data['height'] = this.height;
    data['image'] = this.image;
    data['temprature'] = this.height;
    data['image'] = this.image;

    return data;
  }
}
