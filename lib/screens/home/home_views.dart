import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AllPostList extends StatefulWidget {
  const AllPostList({Key? key}) : super(key: key);

  @override
  State<AllPostList> createState() => _AllPostList();
}

class _AllPostList extends State<AllPostList> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  late RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController(initialRefresh: false);
  }

  // Function to simulate a refresh
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      items = ["1", "2", "3", "4", "5", "6", "7", "8"];
    });
    _refreshController.refreshCompleted();
  }

  // Function to simulate loading more data
  Future<void> _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      items.addAll(["9", "10", "11", "12", "13", "14", "15", "16"]);
    });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: CustomHeader(
        builder: (BuildContext context, RefreshStatus? mode) {
          Widget body;
          if (mode == RefreshStatus.idle) {
            body = const Text('');
          } else if (mode == RefreshStatus.refreshing) {
            body = const CupertinoActivityIndicator();
          } else {
            body = const Text('');
          }
          return SizedBox(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus? mode) {
          return const Text('안녕');
        },
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: ListView.builder(
        itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
        itemExtent: 100.0,
        itemCount: items.length,
      ),
    );
  }
}