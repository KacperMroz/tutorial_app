import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_project/bloc_test/cubit/bloc_test_cubit.dart';
import 'package:tutorial_project/bloc_test/views/bloc_test_view.dart';
import 'package:tutorial_project/utils/bloc_utils.dart';

class BlocTestPage extends StatefulWidget {
  const BlocTestPage({super.key});

  @override
  State<BlocTestPage> createState() => _BlocTestPageState();
}

class _BlocTestPageState extends State<BlocTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<BlocTestCubit, BlocTestState>(
        listener: (context, state) {
          if (state.status == BlocStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Wartość została zaktualizowana'),
              ),
            );
          }
        },
        builder: (context, state) {
          return BlocBuilder<BlocTestCubit, BlocTestState>(
            builder: (context, state) {
              if (context.read<BlocTestCubit>().state.status ==
                  BlocStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return BlocTestView(
                value: context.read<BlocTestCubit>().state.value!,
                onIncrementPressed: _onIncrementPressed,
                onDecrementPressed: _onDecrementPressed,
              );
            },
          );
        },
      ),
    );
  }

  void _onIncrementPressed() {
    context.read<BlocTestCubit>().onIncrementPressed();
  }

  void _onDecrementPressed() {
    context.read<BlocTestCubit>().onDecrementPressed();
  }
}
