import 'package:get/get.dart';
import 'package:efunding/controller/splash_controller.dart';
import 'package:efunding/views/auth/email_verification_screen.dart';
import 'package:efunding/views/auth/otp_verification_screen.dart';
import 'package:efunding/views/screens/about_us_screen.dart';
import 'package:efunding/views/screens/all_campaigns_screen.dart';
import 'package:efunding/views/screens/change_language_screen.dart';
import 'package:efunding/views/screens/change_password_screen.dart';
import 'package:efunding/views/screens/church_screen.dart';
import 'package:efunding/views/screens/create_campaign_screen.dart';
import 'package:efunding/views/screens/create_new_ticket_screen.dart';
import 'package:efunding/views/screens/dashboard_screen.dart';
import 'package:efunding/views/screens/deposit_log_screen.dart';
import 'package:efunding/views/screens/deposit/deposit_method_screen.dart';
import 'package:efunding/views/screens/deposit/deposit_preview_screen.dart';
import 'package:efunding/views/screens/deposit/deposit_screen.dart';
import 'package:efunding/views/screens/deposit/deposit_success_screen.dart';
import 'package:efunding/views/screens/disaster_screen.dart';
import 'package:efunding/views/screens/donate/donate_now_screen.dart';
import 'package:efunding/views/screens/donate/donate_preview_screen.dart';
import 'package:efunding/views/screens/donate/donate_screen.dart';
import 'package:efunding/views/screens/donate/donate_success_screen.dart';
import 'package:efunding/views/screens/my_ticket_screen.dart';
import 'package:efunding/views/screens/profile_screen.dart';
import 'package:efunding/views/screens/settings_screen.dart';
import 'package:efunding/views/screens/success_story_each_screen.dart';
import 'package:efunding/views/screens/success_story_screen.dart';
import 'package:efunding/views/screens/top_volunteer_user_screen.dart';
import 'package:efunding/views/screens/edit_profile_screen.dart';
import 'package:efunding/views/screens/education_screen.dart';
import 'package:efunding/views/screens/emil_verification_congratulations_screens.dart';
import 'package:efunding/views/screens/funeral_screen.dart';
import 'package:efunding/views/screens/help_center_screen.dart';
import 'package:efunding/views/screens/medical_screen.dart';
import 'package:efunding/views/screens/mycampaign/my_campaign_screen.dart';
import 'package:efunding/views/screens/my_donations_screen.dart';
import 'package:efunding/views/screens/notification_screen.dart';
import 'package:efunding/views/screens/onboard_screen.dart';
import 'package:efunding/views/screens/payment_method_screen.dart';
import 'package:efunding/views/screens/top_volunteer_screen.dart';
import 'package:efunding/views/screens/reset_password_congratulations_screen.dart';
import 'package:efunding/views/screens/reset_password_screen.dart';
import 'package:efunding/views/screens/sign_in_screen.dart';
import 'package:efunding/views/screens/sign_up_screen.dart';
import 'package:efunding/views/screens/splash_screen.dart';
import 'package:efunding/views/screens/two_fa_security_screen.dart';
import 'package:efunding/views/screens/urgent_fundraising_screen.dart';
import 'package:efunding/views/screens/wait_for_approval_screen.dart';
import 'package:efunding/views/screens/welcome_screen.dart';
import 'package:efunding/views/screens/withdraw_log_screen.dart';
import 'package:efunding/views/screens/withdraw/withdraw_method_screen.dart';
import 'package:efunding/views/screens/withdraw/withdraw_preview_screen.dart';
import 'package:efunding/views/screens/withdraw/withdraw_screen.dart';
import 'package:efunding/views/screens/withdraw/withdraw_success_screen.dart';
import 'package:efunding/widgets/others/bottom_navigation_widget.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String otpVerificationScreen = '/otpVerificationScreen';
  static const String emailVerificationScreen = '/emailVerificationScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String bottomNavigation = '/bottomNavigation';
  static const String resetPasswordCongratulationsScreen =
      '/resetPasswordCongratulationsScreen';
  static const String emailVerificationCongratulationsScreen =
      '/emailVerificationCongratulationsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String profileScreen = '/profileScreen';
  static const String donateNowScreen = '/donateNowScreen';
  static const String donateScreen = '/donateScreen';
  static const String donatePreviewScreen = '/donateReviewScreen';
  static const String donateSuccessScreen = '/donateSuccessScreen';
  static const String medicalScreen = '/medicalScreen';
  static const String educationScreen = '/educationScreen';
  static const String churchScreen = '/churchScreen';
  static const String disasterScreen = '/disasterScreen';
  static const String urgentFundraisingScreen = '/urgentFundraisingScreen';
  static const String funeralScreen = '/funeralScreen';
  static const String topVolunteerScreen = '/popularFundraiserScreen';
  static const String topVolunteerUserScreen = '/topVolunteerUserScreen';
  static const String createCampaignScreen = '/createCampaignScreen';
  static const String waitForApprovalScreen = '/waitForApprovalScreen';
  static const String depositScreen = '/depositScreen';
  static const String depositMethodScreen = '/depositMethodScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String withdrawScreen = '/withdrawScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String allCampaignScreen = '/allCampaignScreen';
  static const String myCampaignScreen = '/myCampaignScreen';
  static const String myDonationsScreen = '/myDonationsScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String changeLanguageScreen = '/changeLanguageScreen';
  static const String helpCenterScreen = '/helpCenterScreen';
  static const String aboutUsScreen = '/aboutUsScreen';
  static const String depositPreviewScreen = '/depositPreviewScreen';
  static const String depositSuccessScreen = '/depositSuccessScreen';
  static const String withdrawSuccessScreen = '/withdrawSuccessScreen';
  static const String withdrawMethodScreen = '/withdrawMethodScreen';
  static const String withdrawPreviewScreen = '/withdrawPreviewScreen';
  static const String depositLogScreen = '/depositLogScreen';
  static const String withdrawLogScreen = '/withdrawLogScreen';
  static const String settingsScreen = '/settingsScreen';
  static const String twoFaSecurityScreen = '/twoFaSecurityScreen';
  static const String createNewTicketScreen = '/createNewTicketScreen';
  static const String myTicketScreen = '/myTicketScreen';
  static const String dashboardScreen = '/dashboardScreen';
  static const String successStoryScreen = '/successStoryScreen';
  static const String successStoryEachScreen = '/successStoryEachScreen';


  static var list = [
    GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
        binding: BindingsBuilder(() {
          Get.put(
            SplashController(),
          );
        })),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => const OtpVerificationScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: resetPasswordCongratulationsScreen,
      page: () => const ResetPasswordCongratulationsScreen(),
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: emailVerificationCongratulationsScreen,
      page: () => const EmailVerificationCongratulationsScreen(),
    ),
    GetPage(
      name: bottomNavigation,
      page: () => BottomNavigationWidget(),
    ),
    GetPage(
      name: notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: donateNowScreen,
      page: () => const DonateNowScreen(),
    ),
    GetPage(
      name: donateScreen,
      page: () => DonateScreen(),
    ),
    GetPage(
      name: donatePreviewScreen,
      page: () => const DonatePreviewScreen(),
    ),
    GetPage(
      name: donateSuccessScreen,
      page: () => const DonateSuccessScreen(),
    ),
    GetPage(
      name: medicalScreen,
      page: () => MedicalScreen(),
    ),
    GetPage(
      name: educationScreen,
      page: () => EducationScreen(),
    ),
    GetPage(
      name: churchScreen,
      page: () => ChurchScreen(),
    ),
    GetPage(
      name: disasterScreen,
      page: () => DisasterScreen(),
    ),
    GetPage(
      name: urgentFundraisingScreen,
      page: () => UrgentFundraisingScreen(),
    ),
    GetPage(
      name: funeralScreen,
      page: () => FuneralScreen(),
    ),
    GetPage(
      name: topVolunteerScreen,
      page: () => TopVolunteerScreen(),
    ),
    GetPage(
      name: topVolunteerUserScreen,
      page: () => const TopVolunteerUserScreen(),
    ),
    GetPage(
      name: createCampaignScreen,
      page: () => CreateCampaignScreen(),
    ),
    GetPage(
      name: waitForApprovalScreen,
      page: () => const WaitForApprovalScreen(),
    ),
    GetPage(
      name: depositScreen,
      page: () => DepositScreen(),
    ),
    GetPage(
      name: depositMethodScreen,
      page: () => const DepositMethodScreen(),
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => const PaymentMethodScreen(),
    ),
    GetPage(
      name: withdrawScreen,
      page: () => WithdrawScreen(),
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
    ),
    GetPage(
      name: myCampaignScreen,
      page: () => MyCampaignScreen(),
    ),
    GetPage(
      name: myDonationsScreen,
      page: () => const MyDonationsScreen(),
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
    ),
    GetPage(
      name: changeLanguageScreen,
      page: () => ChangeLanguageScreen(),
    ),
    GetPage(
      name: helpCenterScreen,
      page: () => const HelpCenterScreen(),
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => const AboutUsScreen(),
    ),
    GetPage(
      name: depositPreviewScreen,
      page: () => const DepositPreviewScreen(),
    ),
    GetPage(
      name: depositSuccessScreen,
      page: () => const DepositSuccessScreen(),
    ),
    GetPage(
      name: withdrawMethodScreen,
      page: () => const WithdrawMethodScreen(),
    ),
    GetPage(
      name: withdrawPreviewScreen,
      page: () => const WithdrawPreviewScreen(),
    ),
    GetPage(
      name: withdrawSuccessScreen,
      page: () => const WithdrawSuccessScreen(),
    ),
    GetPage(
      name: depositLogScreen,
      page: () => const DepositLogScreen(),
    ),
    GetPage(
      name: withdrawLogScreen,
      page: () => const WithdrawLogScreen(),
    ),
    GetPage(
      name: settingsScreen,
      page: () => const SettingsScreen(),
    ),
    GetPage(
      name: twoFaSecurityScreen,
      page: () => TwoFASecurityScreen(),
    ),
    GetPage(
      name: createNewTicketScreen,
      page: () => CreateNewTicketScreen(),
    ),
    GetPage(
      name: myTicketScreen,
      page: () => const MyTicketScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: dashboardScreen,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: allCampaignScreen,
      page: () => AllCampaignScreen(),
    ),
    GetPage(
      name: successStoryScreen,
      page: () => SuccessStoryScreen(),
    ),
    GetPage(
      name: successStoryEachScreen,
      page: () => SuccessStoryEachScreen(),
    ),
  ];
}
