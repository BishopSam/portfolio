import 'package:portfolio_app/src/models/live_project.dart';
import 'package:portfolio_app/src/models/project.dart';

List<Project> kTestProjects = [
  Project(
    title: "Voice Chat GPT",
    url: "https://github.com/BishopSam/chatgpt_clone",
    description:
        "An app that decodes user's questions through their voices and uses Chat-GPT's api to provide a coressponding answer and is also inturn read out by a bot's voice using text to speech.",
  ),
  Project(
    title: "Safari",
    url: "https://github.com/BishopSam/safari",
    description:
        "An app that displays various tourist destinations, you can like and save various destinations and book visiting times to these destinations, you will also get notification alerts when the time to visit is approaching.",
  ),
  Project(
      title: "Dietri",
      url: "https://github.com/DietriStartup/mobile",
      description:
          'A mobile app that helps users make healthier food choices by providing a basic food nutritional value guide and suggested meal options.'),
];

List<LiveProject> kLiveProjects = [
  LiveProject(
      title: "Genti Audio",
      description:
          "Genti is the perfect way to experience African stories while on the move. Whether you're commuting to work, taking a road trip or just relaxing at home, Genti's wide selection of content will keep you entertained for hours.",
      appStoreUrl:
          "https://apps.apple.com/ng/app/genti-audio-stories-podcasts/id1626263802",
      playStoreUrl:
          "https://play.google.com/store/apps/details?id=com.app.gentimedia")
];
