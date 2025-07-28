import 'package:flutter/material.dart';
import 'package:gamify/models/dev.dart';
import 'package:google_fonts/google_fonts.dart';

//ignore: must_be_immutable
class DeveloperDetails extends StatefulWidget {
  DeveloperDetails({super.key, required this.index, required this.devList});
  List<DevDet> devList = [];

  int index;

  @override
  State<DeveloperDetails> createState() => _DeveloperDetailsState();
}

class _DeveloperDetailsState extends State<DeveloperDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          widget.devList[widget.index].name.toString(),
          style: GoogleFonts.anton(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                widget.devList[widget.index].imageBackground.toString(),
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "About",
                  style: GoogleFonts.anton(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(widget.devList[widget.index].about.toString(),
                    style:
                        GoogleFonts.anton(color: Colors.white, fontSize: 20)),
              ),
              Text(
                "Games Created",
                style: GoogleFonts.anton(color: Colors.red, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              for (var game in widget.devList[widget.index].games!)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    game.name.toString(),
                    style: GoogleFonts.anton(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
