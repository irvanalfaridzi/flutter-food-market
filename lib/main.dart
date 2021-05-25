import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_market_alfa/cubit/cubit.dart';
import 'package:food_market_alfa/models/models.dart';
import 'package:get/get.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => FoodCubit()),
        BlocProvider(create: (_) => TransactionCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SignInPage(),
        // PaymentPage(
        //   transaction: Transaction(
        //     food: mockFoods[0],
        //     user: mockUser,
        //     quantity: 2,
        //     total: (mockFoods[0].price * 2 * 1.1).toInt() + 50000,
        //   ),
        // ),
      ),
    );
  }
}
