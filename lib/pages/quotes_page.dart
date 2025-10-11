import 'package:fitness_ai/components/quote_card.dart';
import 'package:flutter/material.dart';
import 'package:fitness_ai/components/quotes.dart';
import 'package:google_fonts/google_fonts.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
      //   itemCount: quotes.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     final quote = quotes[index];
      //     return QuoteCard(author: quote.author, quote: quote.quote);
      //   },
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  // left: 20,
                  // right: 20,
                  bottom: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/quote.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'Good Quotes',
                style: GoogleFonts.asul(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
              final quote = quotes[index];
              return QuoteCard(author: quote.author, quote: quote.quote);
            },
          ),
        ],
      ),
    );
  }
}
