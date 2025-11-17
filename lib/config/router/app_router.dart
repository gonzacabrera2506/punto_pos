import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_ventas/features/dashboard/presentation/dashboard_screen.dart';
import 'package:stock_ventas/features/home/presentation/home_screen.dart';
import 'package:stock_ventas/features/login/presentation/login_screen.dart';
import 'package:stock_ventas/features/products/presentation/products_screen.dart';
import 'package:stock_ventas/features/register/infrastructure/services/firebase_signup/register_firebase.dart';
import 'package:stock_ventas/features/register/presentation/bloc/register_bloc.dart';
import 'package:stock_ventas/features/register/presentation/screens/register_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/home',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/welcome_screen',
      // path: '/',
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register_screen',
      name: RegisterScreen.routeName,
      builder: (context, state) {
        return BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(RegisterFirebase()),
          child: const RegisterScreen(),
        );
      },
    ),
    GoRoute(
      path: '/',
      name: DashboardScreen.routeName,
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/new_product',
      name: ProductsScreen.routeName,
      builder: (context, state) => const ProductsScreen(),
    ),
  ],
);
