import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteCard extends StatelessWidget {
  final String author;
  final String quote;
  const QuoteCard({super.key, required this.author, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 130,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Transform.flip(
                  flipX: true,
                  child: Icon(
                    FluentIcons.text_quote_16_filled,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  quote,
                  style: GoogleFonts.instrumentSans(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  FluentIcons.text_quote_16_filled,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                author,
                style: GoogleFonts.farro(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
