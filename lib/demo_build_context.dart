import 'package:flutter/material.dart';
class DemoBuildContextPage extends StatefulWidget {
  const DemoBuildContextPage({Key? key}) : super(key: key);

  @override
  State<DemoBuildContextPage> createState() => _DemoBuildContextPageState();
}

class _DemoBuildContextPageState extends State<DemoBuildContextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Build Context"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Ongba(
            child: Chame(
              child: ConCai(),
            ),
          ),
        ),
      ),
    );
  }
}

class Ongba extends StatefulWidget {
  String label = "OngBa Label";
  Widget child;

  Ongba({required this.child});

  static of(BuildContext context){
    return context.findAncestorWidgetOfExactType<Ongba>();
  }

  @override
  State<Ongba> createState() => _OngbaState();
}

class _OngbaState extends State<Ongba> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ong Ba"),
        widget.child
      ],
    );
  }
}

class Chame extends StatefulWidget {
  Widget child;

  Chame({required this.child});

  @override
  State<Chame> createState() => _ChameState();
}

class _ChameState extends State<Chame> {
  @override
  Widget build(BuildContext context) {
    Ongba? ongba = Ongba.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Cha me ${ongba?.label}"),
        widget.child
      ],
    );
  }
}

class ConCai extends StatefulWidget {

  @override
  State<ConCai> createState() => _ConCaiState();
}

class _ConCaiState extends State<ConCai> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Con cái"),
    );
  }
}

