import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gofamily/features/home/application/home_background_provider.dart';
import 'package:gofamily/features/home/presentation/widgets/home_header.dart';
import 'package:gofamily/features/home/presentation/widgets/home_naro_field.dart';
import 'package:gofamily/features/home/presentation/widgets/home_quick_actions.dart';
import 'package:gofamily/features/home/presentation/widgets/home_today_section.dart';
import 'package:gofamily/features/home/presentation/widgets/home_weather_widget.dart';
import 'package:gofamily/features/home/presentation/widgets/home_widget_list.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// Hintergrund (Dark / Light / Kids)
          const _HomeBackground(),

          /// Inhalt
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeHeader(),
                  SizedBox(height: 24),

                  HomeNaroField(),
                  SizedBox(height: 24),

                  HomeWeatherWidget(),
                  SizedBox(height: 24),

                  HomeQuickActions(),
                  SizedBox(height: 32),

                  HomeTodaySection(),
                  SizedBox(height: 32),

                  HomeWidgetList(),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeBackground extends ConsumerWidget {
  const _HomeBackground();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgPath = ref.watch(homeBackgroundProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(bgPath), fit: BoxFit.cover),
      ),
      child: Container(
        // leichte Abdunklung für bessere Lesbarkeit
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.35),
              Colors.black.withOpacity(0.10),
              Colors.black.withOpacity(0.45),
            ],
          ),
        ),
      ),
    );
  }
}
