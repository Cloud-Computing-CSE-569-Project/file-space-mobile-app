import 'package:flutter/material.dart';
import 'package:space_client_app/views/page/functions.dart';
import 'package:space_client_app/views/page/home/enums.dart';
import 'package:space_client_app/views/page/home/widgets/file_tile.dart';
import 'package:space_client_app/views/theme/colors.dart';
import 'package:space_client_app/views/widgets/sort_navigator.dart';

class FolderContentPage extends StatefulWidget {
  const FolderContentPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<FolderContentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FolderContentPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                forceElevated: innerBoxIsScrolled,
                title: Text(widget.title),
                floating: true,
              )
            ];
          },
          body: SafeArea(
              maintainBottomViewPadding: true,
              top: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            onPressed: () {
                              openModalBottomSheet(
                                  context,
                                  const SortNavigator(
                                    title: "Sort by",
                                  ));
                            },
                            icon: const Icon(Icons.keyboard_arrow_down,
                                color: lightGrey),
                            label: Text(
                              "Recent Files",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 15),
                            ),
                          ),
                        ),
                        const Icon(Icons.list),
                      ],
                    ),
                    Flexible(
                        child: ListView(
                      children: const [
                        FileTile(
                            name: "Preview.mp3",
                            size: "30 KB",
                            type: FileType.music),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.document),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Assignments",
                            size: "30 KB",
                            type: FileType.folder),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.music),
                        FileTile(
                            name: "Videos",
                            size: "30 KB",
                            type: FileType.folder),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.image),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.video),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.document),
                        SizedBox(height: 8),
                        FileTile(
                            name: "Preview.png",
                            size: "30 KB",
                            type: FileType.other)
                      ],
                    ))
                  ],
                ),
              ))),
    );
  }
}
