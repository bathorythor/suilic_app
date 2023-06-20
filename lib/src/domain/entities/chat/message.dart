enum FromWhu { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWhu fromwho;

  Message(
      {
      //constructor required
      required this.text,
      this.imageUrl,
      required this.fromwho});
}
