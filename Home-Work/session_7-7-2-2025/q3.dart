/*
Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.
*/

void main() {
  final movies = <Movie>[
    Movie(title: 'Movie A', rating: 6.5),
    Movie(title: 'Movie B', rating: 8.2),
    Movie(title: 'Movie C', rating: 7.0),
    Movie(title: 'Movie D', rating: 9.1),
  ];

  for (final m in movies) {
    if (m.rating > 7) {
      print(m);
    }
  }
}

class Movie {
  final String title;
  final double rating;

  Movie({required this.title, required this.rating});

  @override
  String toString() => 'Movie: $title | Rating: $rating';
}
