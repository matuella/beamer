import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dark.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeSnippet extends StatelessWidget {
  const CodeSnippet({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HighlightView(
          code,
          language: 'dart',
          theme: darkTheme,
          padding: const EdgeInsets.all(16.0),
          textStyle: GoogleFonts.robotoMono(),
        ),
        Positioned(
          top: 8.0,
          right: 8.0,
          child: InkWell(
            onTap: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Copied to clipboard',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
            },
            child: const Icon(
              Icons.copy_all_rounded,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ),
      ],
    );
  }
}
