class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;

  Place(
      {required this.imageUrl,
      required this.city,
      required this.country,
      required this.properties});
}

final places = [
  Place(
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Amsterdam_Zentrum_20091106_075.JPG/1200px-Amsterdam_Zentrum_20091106_075.JPG',
    city: 'Amsterdam',
    country: 'Netherlands',
    properties: 203,
  ),
  Place(
    imageUrl: 'https://wallpapercave.com/wp/wp7003142.jpg',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 586,
  ),
  Place(
    imageUrl:
        'https://www.tripsavvy.com/thmb/-qDIzSH8_azRhTvpAg-CIKWrFxE=/2120x1414/filters:fill(auto,1)/London-big-Ben-58b5d2663df78cdcd8c69fd4.jpg',
    city: 'London',
    country: 'England',
    properties: 427,
  ),
  Place(
    imageUrl:
        'https://www.fodors.com/wp-content/uploads/2018/10/HERO_UltimateRome_Hero_shutterstock789412159.jpg',
    city: 'Rome',
    country: 'Italy',
    properties: 891,
  ),
  Place(
    imageUrl:
        'https://cdn.britannica.com/96/100196-050-C92064E0/Sydney-Opera-House-Port-Jackson.jpg',
    city: 'Sydney',
    country: 'Australia',
    properties: 162,
  ),
  Place(
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4b/5c/dd/caption.jpg?w=500&h=300&s=1&cx=2968&cy=2519&chk=v1_b622c7f5c8368131238c',
    city: 'Tokyo',
    country: 'Japan',
    properties: 372,
  ),
];
