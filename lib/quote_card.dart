import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

//using a stateful widget inside a stateless context

final Quote quote;
final Function() delete; //fixed some final function error caused by the new version of dart

const QuoteCard({Key? key, required this.quote, required this.delete}) : super(key: key);

//named parameter passed on line .24 received and being assigned to the final on line .57
//line 58 is a constructor and named parameters now use required.

@override
Widget build(BuildContext context) {
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
          const SizedBox(height: 8.0,),
          TextButton.icon(onPressed: delete,
              icon: const Icon(Icons.delete_outline),
              label: const Text('Delete quote'),
              style: TextButton.styleFrom(
                      primary: const Color(0xFF042100),
                      minimumSize: const Size(30, 16),
              ),)
        ],
      ),
    ),
  );
}
}

