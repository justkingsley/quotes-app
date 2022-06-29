import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
      Quote(text: "Hello World.", author: "Brian Kernighan"),
      Quote(text: "To master new technology you have to play with it.", author: "Jordan Peterson"),
      Quote(text: "Good code is its own documentation", author: "Steve McConnell"),
      Quote(text: "What did the Java code say to the C code? You’ve got no class.", author: "Unknown")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GoodReads Quotes",
          style: TextStyle(
            color: Color(0xFF042100),
            fontWeight: FontWeight.bold,
            fontFamily: ('fonts/SecularOne'),
          )
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFB7F397),
      ),

      body: Column(
        //This function has gone through many changes,
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),

      backgroundColor: const Color(0xFFE7EDDE),

    );
  }
}



