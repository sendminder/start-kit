import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Offset initialSwipeOffset = Offset.zero;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 15),
              Stack(
                children: <Widget>[
                  const Center(
                    child: SizedBox(),
                  ),
                  Positioned(
                    right: 12,
                    child: IconButton(
                      icon: Icon(
                        FluentIcons.chart_multiple_24_regular,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          showDragHandle: true,
                          context: context,
                          builder: (BuildContext context) {
                            return const SizedBox();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
