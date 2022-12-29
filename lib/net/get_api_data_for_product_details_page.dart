import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiForDetailsPage {
  String? cPU;
  String? camera;
  List<String>? capacity;
  List<String>? color;
  String? id;
  List<String>? images;
  bool? isFavorites;
  int? price;
  double? rating;
  String? sd;
  String? ssd;
  String? title;

  ApiForDetailsPage(
      {this.cPU,
        this.camera,
        this.capacity,
        this.color,
        this.id,
        this.images,
        this.isFavorites,
        this.price,
        this.rating,
        this.sd,
        this.ssd,
        this.title});

  ApiForDetailsPage.fromJson(Map<String, dynamic> json) {
    cPU = json['CPU'];
    camera = json['camera'];
    capacity = json['capacity'].cast<String>();
    color = json['color'].cast<String>();
    id = json['id'];
    images = json['images'].cast<String>();
    isFavorites = json['isFavorites'];
    price = json['price'];
    rating = json['rating'];
    sd = json['sd'];
    ssd = json['ssd'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CPU'] = this.cPU;
    data['camera'] = this.camera;
    data['capacity'] = this.capacity;
    data['color'] = this.color;
    data['id'] = this.id;
    data['images'] = this.images;
    data['isFavorites'] = this.isFavorites;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['sd'] = this.sd;
    data['ssd'] = this.ssd;
    data['title'] = this.title;
    return data;
  }
}

Future<ApiForDetailsPage> getDataForDetailsPAge() async{
  var url = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';
  final response = await http.get(Uri.parse(url));
  if(response.statusCode == 200) {
    return ApiForDetailsPage.fromJson(json.decode(response.body));
  }else {
    throw Exception("Error: ${response.reasonPhrase}");
  }
}

