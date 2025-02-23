import 'package:beamer_website/introduction/widgets/basic_example.dart';
import 'package:beamer_website/shared/code_snippet.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 64.0),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/slovnicki/beamer/master/resources/logo.png',
                ),
                Positioned(
                  top: -32.0,
                  right: -32.0,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () => launch(
                      'https://docs.flutter.dev/development/packages-and-plugins/favorites',
                    ),
                    child: SizedBox(
                      width: 64.0,
                      height: 64.0,
                      child: Image.network(
                        'https://raw.githubusercontent.com/slovnicki/beamer/master/resources/flutter_favorite_badge.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text(
                  'Welcome to Beamer documentation!',
                  style: theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '🎉 ...built with Beamer... 🎉',
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48.0),
                SizedBox(
                  width: 800,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Why "Beamer"?',
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'There was a time, sometime in late 2020, when Beamer was just a routing part of a particular application, serving it pretty well in production. It seemed reasonable to share it on pub.dev, but then a name needed to be coined. I believe it took at least a month to settle on a name. The idea was to have a simple and descriptive name, but this was not so easy as many of most obvious choices are already taken (Router, Navigator, ...).',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8.0),
                      Center(
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "At the time I was watching the Start Trek series and it just hit me!\nWe're doing a pretty similar thing as teleportation - taking the user to an entirely new stack of pages each time they navigate, as if they are being teleported to that part of the application. A slightly better word than \"teleporter\" is \"beamer\" as it's also kind of similar to the \"router\" - what Beamer really is under the hood (Router widget).",
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8.0),
                      Center(
                        child: Image.network(
                            'data:image/jpeg;base64,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'),
                      ),
                      const SizedBox(height: 32.0),
                      Text(
                        'What is this documentation about?',
                        style: theme.textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'This documentation (still an early stage work in progress) aims to be the in-depth, self-explanatory API documentation for Beamer. One of the main goals is to have a lot of interactive examples like this one, nested within this website:',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const CodeSnippet(code: code),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        width: 256.0,
                        height: 420.0,
                        child: BasicExample(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const code = '''
class ExampleApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (_, __, ___) => const HomeScreen(),
        '/books': (_, __, ___) => const BooksScreen(),
        '/books/:bookId': (_, state, __) {
          final bookIdParameter = state.pathParameters['bookId']!;
          final bookId = int.tryParse(bookIdParameter);
          final book = books.firstWhereOrNull((book) => book.id == bookId);
          return BeamPage(
            key: ValueKey('book-\$bookId'),
            type: BeamPageType.scaleTransition,
            child: BookDetailsScreen(book: book),
          );
        },
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}
''';
