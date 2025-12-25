import 'package:flutter/material.dart';

/// A scaffold with a gradient header and rounded content area.
///
/// Provides a consistent layout with a title, description, optional back button,
/// and a white rounded container for the main content.
///
/// Example:
/// ```dart
/// BaseContainer(
///   title: 'Welcome',
///   description: 'Sign in to continue',
///   visibleBackButton: true,
///   child: YourContentWidget(),
/// )
/// ```
class BaseContainer extends StatelessWidget {
  /// The main content displayed in the rounded container.
  final Widget child;
  /// Title displayed in the gradient header.
  final String title;
  /// Description text displayed below the title.
  final String description;
  /// Whether to show the back button.
  final bool visibleBackButton;
  /// Callback when back button is pressed. Defaults to Navigator.pop.
  final Function()? onBackButton;
  /// Creates a base container with header and content area.
  const BaseContainer({
    super.key,
    required this.child,
    required this.title,
    required this.description,
    this.visibleBackButton = false,
    this.onBackButton,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              colorScheme.primary.withAlpha(255),
              colorScheme.primary.withAlpha(200),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (visibleBackButton || onBackButton != null) ...[
              const SizedBox(height: 60),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: onBackButton ??
                          () {
                        if (Navigator.canPop(context)) Navigator.pop(context);
                      },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(height: 20),
            ] else ...[
              const SizedBox(height: 80),
            ],
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 15,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  color: colorScheme.onPrimary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}