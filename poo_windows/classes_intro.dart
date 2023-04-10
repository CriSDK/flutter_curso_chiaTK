void main(List<String> args) {
  const List meses = ['a', 'b', 'c'];
  final List anios = [1, 2];
  print(meses);
  anios.add(3);
  anios.add(5);
  anios[2] = 70;
  // anios = [2, 7];
  print(anios);

  SendEmail emailA = SendEmail(recipients: [
    'brayam05@gmail.com',
    'bca_777@outlook.com',
    'electronic58@microsfot.com'
  ]);
  print(SendEmail.countInstances);
  print({"emailA._uid": emailA._uid});
  // SendEmail emailB =
  //     SendEmail(recipients: ['Juan004@gmail.com', 'Punko005@outlook.com']);
  // print(SendEmail.countInstances);
  // SendEmail emailC =
  //     SendEmail(recipients: ['Mary895@gmail.com', 'Mariano78@outlook.com']);
  // print(SendEmail.countInstances);
  // print(SendEmail.allRecipients);
  print({'emailA recipientes str': emailA.getFormatedRecipients()});
  print('${emailA.attachFile}, ${emailA.ccRecipients}, ${emailA.body}');

  SendEmail notFiles = SendEmail.neverAttachFile();
  print({'reciepinetes never': notFiles.recipients});
  print({'ccreciepinetes never': notFiles.ccRecipients});
  print({'attach file never': notFiles.attachFile});
  SendEmail yesFiles = SendEmail.allwaysAttachFile();
  print({'reciepinetes allway': yesFiles.recipients});
  print({'ccreciepinetes allway': yesFiles.ccRecipients});
  print({'attach file allway': yesFiles.attachFile});
}

class SendEmail {
  int _uid = 10;
  List? recipients;
  List? ccRecipients;
  bool? attachFile;
  String? body;

  static int countInstances = 0;
  static List allRecipients = [];
  static const defaultRecipient = ['soporte_ggbet@ggbet.com'];

  // método constructor en dart
  SendEmail({this.recipients, this.ccRecipients, this.attachFile = true}) {
    countInstances += 1;
    allRecipients.addAll([...?recipients]);
  }
  // otro método constructor en dar

  SendEmail.neverAttachFile({this.recipients, this.ccRecipients}) {
    recipients = defaultRecipient;
    attachFile = false;
  }
  SendEmail.allwaysAttachFile({this.recipients, this.ccRecipients}) {
    recipients = [...defaultRecipient, 'brangelina@otmail.com'];
    attachFile = true;
  }

  String getFormatedRecipients() {
    List foo = recipients ?? [];
    List bar = ccRecipients ?? [];
    String formatedRecipients = foo.join(' ');
    String ccformatedRecipients = bar.join(' ');
    return '$formatedRecipients $ccformatedRecipients';
  }
}
