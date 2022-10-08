import 'package:ui_team_management/src/core/constants/constants.dart';

final members = [
  Members(name: 'Emma', avatarColor: 0XFF8775EF, photo: AppAssets.perfil1),
  Members(name: 'Olivia', avatarColor: 0XFF66B3FB, photo: AppAssets.perfil2),
  Members(name: 'Emily', avatarColor: 0XFFC6EA70, photo: AppAssets.perfil3),
  Members(name: 'Jackson', avatarColor: 0XFFD9C7B6, photo: AppAssets.perfil4),
  Members(name: 'Lucas', avatarColor: 0XFFF37869, photo: AppAssets.perfil5),
  Members(name: 'Noah', avatarColor: 0XFFF8DF81, photo: AppAssets.perfil6),
  Members(name: 'Mia', avatarColor: 0XFFFFB3BA, photo: AppAssets.perfil7),
];

final session = [
  Session(photo: AppAssets.session1, name: 'Elijah'),
  Session(photo: AppAssets.session2, name: 'Jenny'),
  Session(photo: AppAssets.session3, name: 'Arthur'),
];

final tasks = [
  Tasks(
      icon: AppAssets.airbnb,
      iconColor: 0xFFFFFFFF,
      fillColor: 0xFFF15659,
      name: 'Airbnb Branding Design',
      category: Category(name: 'Graphics Design', color: 0xFF5DAD95),
      files: 3,
      comments: 15,
      status: TasksStatus(name: 'In Progress'),
      deadline: '12 Aug',
      members: members),
  Tasks(
      icon: AppAssets.airtable,
      fillColor: 0xFFFFFCBC,
      name: 'Airtable workflow',
      category: Category(name: 'Template design', color: 0xFF886ED6),
      files: 2,
      comments: 10,
      status: TasksStatus(name: 'In Progress'),
      deadline: '21 Sep',
      members: members),
  Tasks(
      icon: AppAssets.monday,
      fillColor: 0xFF2DACFD,
      name: 'Monday process times',
      category: Category(name: 'Information', color: 0xFFFC6E51),
      files: 8,
      comments: 30,
      status: TasksStatus(name: 'Success', color: 0xFF72B900),
      deadline: '10 May',
      members: members)
];

final chat = [
  Comments(
      photo: members[2].photo,
      name: members[2].name,
      writingTime: '1 in ago',
      description: 'I will send the color palette to everyone',
      avatarColor: members[2].avatarColor),
  Comments(
      photo: members[0].photo,
      name: members[0].name,
      writingTime: '3 in ago',
      description: 'I already got the email thanks',
      avatarColor: members[0].avatarColor),
  Comments(
      photo: members[5].photo,
      name: members[5].name,
      writingTime: '10 in ago',
      description: 'The prototype is excellent',
      avatarColor: members[5].avatarColor),
  Comments(
      photo: members[4].photo,
      name: members[4].name,
      writingTime: '2 in ago',
      description: 'I can\'t hear you, can you speak louder please?',
      avatarColor: members[4].avatarColor),
  Comments(
      photo: members[6].photo,
      name: members[6].name,
      writingTime: '1 in ago',
      description: 'In agreement',
      avatarColor: members[6].avatarColor)
];

final accountTypes = [
  AccountTypes(
      fillColor: 0xFF00E0FF,
      icon: AppAssets.individual,
      iconColor: 0xFFffffff,
      name: 'Individual',
      description: 'Only for one user.',
      iconHeight: 26,
      padding: 22),
  AccountTypes(
      fillColor: 0xFF3E80FF,
      icon: AppAssets.team,
      iconColor: 0xFFffffff,
      name: 'Team',
      description: 'Upto 20 users.',
      iconHeight: 31,
      padding: 21),
  AccountTypes(
      fillColor: 0xFFFF36CE,
      icon: AppAssets.agency,
      iconColor: 0xFFffffff,
      name: 'Agency',
      description: 'Unlimited user.',
      iconHeight: 39,
      padding: 18)
];

class TasksStatus {
  String name;
  int? color;
  TasksStatus({
    required this.name,
    this.color = 0xFF3579F6,
  });
}

class Tasks {
  String icon;
  int? iconColor;
  int fillColor;
  String name;
  Category category;
  int files;
  int comments;
  TasksStatus status;
  String deadline;
  List<Members> members;
  Tasks({
    required this.icon,
    this.iconColor,
    required this.fillColor,
    required this.name,
    required this.category,
    required this.files,
    required this.comments,
    required this.status,
    required this.deadline,
    required this.members,
  });
}

class Members {
  String name;
  int avatarColor;
  String photo;
  Members({
    required this.name,
    required this.avatarColor,
    required this.photo,
  });
}

class Category {
  String name;
  int color;
  Category({
    required this.name,
    required this.color,
  });
}

class Session {
  String photo;
  String name;
  Session({
    required this.photo,
    required this.name,
  });
}

class Comments {
  String photo;
  String name;
  String writingTime;
  String description;
  int avatarColor;
  Comments({
    required this.photo,
    required this.name,
    required this.writingTime,
    required this.description,
    required this.avatarColor,
  });
}

class AccountTypes {
  int fillColor;
  String icon;
  int iconColor;
  String name;
  String description;
  double iconHeight;
  double padding;
  AccountTypes({
    required this.fillColor,
    required this.icon,
    required this.iconColor,
    required this.name,
    required this.description,
    required this.iconHeight,
    required this.padding,
  });
}
