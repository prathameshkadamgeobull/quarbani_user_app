import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarbani_user_app/app/routes/routes_names.dart';
import '../../core/Models/animal_model.dart';
import '../../features/AI_Chat/Bloc/ai_chat_bloc.dart';
import '../../features/AI_Chat/View/ai_chat_page.dart';
import '../../features/Demo/presentation/pages/demo_home_page.dart';
import '../../features/animal_selection/Presentation/Pages/animal_details_page.dart';
import '../../features/animal_selection/Presentation/Pages/animal_selection_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/order_summary/presentation/pages/order_summary_page.dart';
import '../../features/payment_method/presentation/pages/payment_method_page.dart';
import '../../features/payment_success/presentation/pages/payment_success_page.dart';
import '../../features/qr_verification/presentation/pages/qr_verification_page.dart';
import '../../features/welcome/presentation/pages/welcome_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {


      case RouteNames.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );

      case RouteNames.aiChat:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AiChatBloc(),
            child: const AiChatPage(),
          ),
        );
      case RouteNames.animalSelection:

        return MaterialPageRoute(

          builder: (_) => const AnimalSelectionPage(),

        );

      case RouteNames.animalDetails:

        return MaterialPageRoute(

          builder: (_) =>  AnimalDetailsPage(
            animal: settings.arguments as AnimalModel,
          ),

        );

      case RouteNames.orderSummary:
          return MaterialPageRoute(

          builder:(_) => OrderSummaryPage(),

        );

      case RouteNames.paymentMethod:
        return MaterialPageRoute(

          builder:(_) =>  PaymentMethodPage(),

        );

      case RouteNames.demo:

        return MaterialPageRoute(

          builder: (_) => const DemoHomePage(),

        );

      case RouteNames.paymentSuccess:

        return MaterialPageRoute(

          builder: (_) => const PaymentSuccessPage(),

        );

      case RouteNames.QRVerification :
         return MaterialPageRoute(
       builder: (_) => const QRVerificationPage(),
    );



        case RouteNames.welcome:
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );




    }
  }
}