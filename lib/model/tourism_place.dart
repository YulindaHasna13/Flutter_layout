class TourismPlace {
    String name;
    String location;
    String imageAsset;
    String description;
    String day;
    String time;
    String ticket;

    TourismPlace({
      required this.name,
      required this.location,
      required this.imageAsset,
      required this.description,
      required this.day,
      required this.time,
      required this.ticket,
    });
}

var tourismPlaceList = [
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