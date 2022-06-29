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
      Quote(text: "Hello World.", author: "Brian Kernighan"),
      Quote(text: "To master new technology you have to play with it.", author: "Jordan Peterson"),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 16.0,
                color: Color(0xFF042100),
              ),
            ),
            const SizedBox(height: 10.0,),

            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color(0xFF042100),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
        //function is returning objects from the Quote class, needs the new notation because we are tapping into a property
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),

      backgroundColor: const Color(0xFFE7EDDE),

    );
  }
}




