import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarbani_user_app/app/routes/routes_names.dart';
import 'package:quarbani_user_app/features/order_tracking/presentation/pages/order_tracking_page.dart';
import 'package:quarbani_user_app/features/qr_verification/presentation/pages/qr_barcode_page.dart';
import '../../core/Models/animal_model.dart';
import '../../core/Models/order_model.dart';
import '../../core/Models/payment_success_model.dart';
import '../../features/AI_Chat/Bloc/ai_chat_bloc.dart';
import '../../features/AI_Chat/View/ai_chat_page.dart';
import '../../features/Demo/presentation/pages/demo_home_page.dart';
import '../../features/animal_assigned/presentation/pages/animal_assigned_page.dart';
import '../../features/animal_selection/Presentation/Pages/animal_details_page.dart';
import '../../features/animal_selection/Presentation/Pages/animal_selection_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/order_summary/presentation/pages/order_summary_page.dart';
import '../../features/payment_method/presentation/pages/payment_method_page.dart';
import '../../features/payment_success/presentation/pages/payment_success_page.dart';
import '../../features/qr_verification/bloc/qr_code_bloc.dart';
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

      case RouteNames.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
        );


      case RouteNames.orderSummary:
        return MaterialPageRoute(
          builder: (_) => OrderSummaryPage(

            order: OrderSummaryModel(

              animal: "Goat",

              date: "10 Dhul-Hijjah 1446\n(Eid Day)",

              timeSlot: "06:00 AM - 08:00 AM",

              vendor: "Al Noor Slaughterhouse\nAziziyah, Makkah",

              quantity: "1 Animal",

              amount: 650,

            ),

          ),
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

        final payment = PaymentSuccessModel(

          orderId: "QB-2024-0001258",

          amount: 650,

          status: "success",

          message: "Payment Successful",

        );


        return MaterialPageRoute(

          builder: (_) => PaymentSuccessPage(

            payment: payment,

          ),

        );

      case RouteNames.OrderTracking:

        return MaterialPageRoute(

          builder: (_) => const OrderTrackingPage(),

          settings: RouteSettings(
            arguments: settings.arguments,
          ),

        );


      case RouteNames.animalAssigned:

        return MaterialPageRoute(

          builder: (_) => const AnimalAssignedPage(),

          settings: settings,

        );
      case RouteNames.qrBarCodePage:

        return MaterialPageRoute(

          builder: (_) => const QrBarcodePage(),

          settings: RouteSettings(
            arguments: settings.arguments,
          ),

        );

      case RouteNames.selectDatePage:
        return MaterialPageRoute(
          builder: (_) => const DashboardPage(),
        );



        case RouteNames.welcome:
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );




    }
  }
}