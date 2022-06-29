import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //Where we create our data.
  List<Quote> quotes = [
      Quote(text: "Hello World", author: "Brian Kernighan"),
      Quote(text: "To master new technology you have to play with it", author: "Jordan Peterson"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Quotes",
          style: TextStyle(
            color: Colors.black,
          )
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFefe5fd),
      ),

      body: Column(
        //function is returning objects from the Quote class, needs the new notation because we are tapping into a property
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),

    );
  }
}




