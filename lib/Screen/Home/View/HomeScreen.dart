import 'package:api_call_1/Screen/Home/Provider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {

    homeProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("${homeProviderFalse!.apiHelper.Apihelper().}"),
          ],
        ),
      ),
    );
  }
}
