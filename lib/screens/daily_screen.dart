import 'package:flutter/material.dart';
import 'package:todo_using_hivedb/models/todos.dart';
import 'package:todo_using_hivedb/screens/Home/homeBloc.dart';
import 'package:intl/intl.dart';

class SubList extends StatefulWidget {
  HomeBloc theBloc;

  List<TODOS> list;

  SubList(this.theBloc, this.list);

  @override
  State<SubList> createState() => _SubListState();
}

class _SubListState extends State<SubList> {
  DateTime nowdate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEFEFEF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.theBloc.getCorrectTimingToDisplay() +
                          ' ' +
                          widget.theBloc.userName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff7646FF)),
                        ),
                        Text(
                          'Completed',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat("dd MMM, yyyy")
                              .format(DateTime.now())
                              .toString(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        const Text(
                          "1 / 10", //TODO
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.list.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  widget.list[index].currentTime.hour
                                      .toString(),
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const Text(
                                  "AM",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  widget.list[index].title,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Text(
                                  widget.list[index].desc,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Expanded(flex: 4, child: Container()),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: () {
                                widget.list[index].inWatchList =
                                    !widget.list[index].inWatchList;
                                setState(() {});
                              },
                              icon: Icon(widget.list[index].inWatchList
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.yellow,
                              iconSize: 30,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              backgroundColor: widget.list[index].color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
