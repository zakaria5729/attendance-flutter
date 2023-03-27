import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/circular_progress_widget.dart';
import '../../common_widgets/text_widget.dart';
import '../../model/stores_response/stores_response.dart';
import '../../routes/route_paths.dart';
import '../../values/app_font_size.dart';

class StoreListViewWidget extends StatelessWidget {
  const StoreListViewWidget({
    Key? key,
    required this.storeData,
    this.isFetchingNext = false,
    required this.scrollController,
  }) : super(key: key);

  final bool isFetchingNext;
  final List<StoreData> storeData;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: ListView.builder(
              itemCount: storeData.length,
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemBuilder: (context, index) {
                final store = storeData[index];

                return GestureDetector(
                  onTap: () => context.push(
                    routeAttendance,
                    extra: store.name,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: TextWidget(
                      store.name,
                      fontSize: fontSize20,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        if (isFetchingNext) ...[
          const CircularProgressWidget(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 16,
            ),
          ),
        ],
      ],
    );
  }
}
