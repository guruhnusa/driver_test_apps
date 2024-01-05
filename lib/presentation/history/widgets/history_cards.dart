import 'package:driver_test_apps/presentation/history/bloc/history/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant/colors.dart';

class HistoryCards extends StatefulWidget {
  const HistoryCards({
    super.key,
  });

  @override
  State<HistoryCards> createState() => _HistoryCardsState();
}

class _HistoryCardsState extends State<HistoryCards> {
  @override
  void initState() {
    context.read<HistoryBloc>().add(const HistoryEvent.getHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () {
          return const Center(child: CircularProgressIndicator());
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        onFailedGetHistory: (message) {
          return Center(child: Text(message));
        },
        onSuccessGetHistory: (data) {
          final history = data.data;
          return history.isEmpty
              ? const Center(child: Text("No history yet"))
              : ListView.separated(
                  shrinkWrap: true,
                  itemCount: history.length,
                  itemBuilder: (context, index) {
                    final item = history[index];
                    return Card(
                      color: AppColors.cardGreen,
                      child: Container(
                        height: 144,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.category,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Status of the test",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  item.score >= 70 ? "Passed" : "Failed",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: item.score >= 70
                                          ? AppColors.primaryGreen
                                          : AppColors.primaryRed),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Number of correct answers",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "${item.correctAnswer}/ ${item.correctAnswer + item.incorrectAnswer}",
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 22);
                  },
                );
        },
      );
    });
  }
}
