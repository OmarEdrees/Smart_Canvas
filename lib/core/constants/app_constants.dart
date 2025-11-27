import 'package:smart_canvas/core/utilies/assets/lotties/app_lotties.dart';
import 'package:smart_canvas/features/on_boarding/models/on_boarding_model.dart';

class AppConstants {
  // on boarding list
static List<OnBoardingStepModel> onBoardingList = <OnBoardingStepModel>[
  OnBoardingStepModel(
    image: AppLotties.courseMaterialsLottie, // course materials lottie
    title: "All Your Courses in One Place",
    subTitle:
        "Easily access lectures, sections, and study materials uploaded by your instructors anytime, anywhere.",
  ),
  OnBoardingStepModel(
    image: AppLotties.librarySearchLottie, // digital library lottie
    title: "Search the Digital Library Instantly",
    subTitle:
        "Find books, references, and academic resources quickly through the smart university library.",
  ),
  OnBoardingStepModel(
    image: AppLotties.notificationLottie, // notifications lottie
    title: "Stay Updated with New Materials",
    subTitle:
        "Get real-time notifications when instructors upload new lectures or important content.",
  ),
  OnBoardingStepModel(
    image: AppLotties.aiAssistantLottie, // AI chatbot lottie
    title: "Your Smart Study Assistant",
    subTitle:
        "Ask the AI chatbot anything about courses, schedules, materials, or university information anytime.",
  ),
  OnBoardingStepModel(
    image: AppLotties.loginLottie, // login/dashboard lottie
    title: "Personalized Student Dashboard",
    subTitle:
        "Log in to access your dashboard, track progress, and manage all your academic needs easily.",
  ),
];
}
