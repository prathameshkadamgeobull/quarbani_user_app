abstract class OnboardingEvent {}

class PageChanged extends OnboardingEvent {
  final int page;

  PageChanged(this.page);
}