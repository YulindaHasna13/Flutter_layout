import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
  TourismPlace(
  name: 'Surabaya Submarine Monument',
  location: 'Jl Pemuda',
  imageAsset: 'assets/images/submarine.jpg',
  description: 'Museum inside a decommissioned Russian war submarine'
  'with tours & an adjacent park with cafes. Clean '
  'and well maintained. Car park cost 10k, entrance '
  'free 15k/person. You can see KRI Pasopati there, '
  'it is a russian whiskey class. You can also watch '
  'the video about the Indonesian Navy at the building '
  'beside the submarine.',
  day: 'Open Monday',
  time: '14.00 - 21.00',
  ticket: 'Rp. 15.000,-',
  ),
  TourismPlace(
  name: 'Kelenteng Sanggar Agung',
  location: 'Kenjeran',
  imageAsset: 'assets/images/klenteng.jpg',
  description: 'It is said that in this temple, Dewi Kwan Im once showed her figure. Its location in the coastal area makes this temple have its own charm. This is the Sanggar Agung Temple, one of the temples that you must visit if you are in Surabaya.',
  day: 'Open Everyday',
  time: '10.00 - 22.00',
  ticket: 'Rp. 5.000,-',
  ),
  TourismPlace(
  name: 'House of Sampoerna',
  location: 'Krembangan Utara',
  imageAsset: 'assets/images/sampoerna.jpg',
  description: 'The House of Sampoerna Museum is a tobacco museum and the headquarters of the Sampoerna cigarette factory. It was built in 1862 but the museum was only officially opened in 2003. Before becoming a museum, this building was used for an orphanage managed by the Dutch.',
  day: 'Open Everyday',
  time: '07.00 - 21.00',
  ticket: 'Rp. 0,-',
  ),
  TourismPlace(
  name: 'Tugu Pahlawan',
  location: 'Alun-alun contong',
  imageAsset: 'assets/images/pahlawan.jpg',
  description: 'The Heroes Monument was founded on November 10, 1951 and inaugurated on November 10, 1952 by the President of the Republic of Indonesia, Ir. Soekarno, with the aim of remembering the history of the struggle of the Indonesian heroes for independence in the battle of 10 November 1945 in Surabaya.',
  day: 'Open Everyday',
  time: '07.00 - 15.00',
  ticket: 'Rp. 0,-',
  ),
  TourismPlace(
  name: 'Patung Suro Boyo',
  location: 'Wonokromo',
  imageAsset: 'assets/images/sby.jpg',
  description: 'Statues of Suro and Boyo, one of the icons of the City of Heroes which means shark and crocodile. The height of the statue holder is 5 meters and the diameter is 15 meters. The statue stands in the Suroboyo Park area which has an area of 11,900 square meters.',
  day: 'Open Everyday',
  time: '08.00 - 22.00',
  ticket: 'Rp. 4000,-',
  ),
  ];


  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList = Provider.of<DoneTourismProvider>(
        context,
        listen: false
    ).doneTourismPlaceList;
    return ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: doneTourismPlaceList.contains(place),
                  onCheckboxClick: (bool? value){
                    setState(() {
                      if(value!=null){
                        value
                            ? doneTourismPlaceList.add(place)
                            : doneTourismPlaceList.remove(place);
                      }
                    });
                  },
                );
              },
            )
          );
        },
      itemCount: tourismPlaceList.length,
    );
  }
}