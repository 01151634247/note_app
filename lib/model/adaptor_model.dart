
import 'package:hive/hive.dart';
class AdaptorModel extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0; // This must match the typeId you choose for this model

  @override
  NoteModel read(BinaryReader reader) {
    // Read the fields in the exact same order they were written
    final title = reader.readString();
    final subTitle = reader.readString();
    final date = reader.readString();
    final color = reader.readInt();

    return NoteModel(
      title: title,
      subTitle: subTitle,
      date: date,
      color: color,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    // Write fields to binary data sequentially
    writer.writeString(obj.title);
    writer.writeString(obj.subTitle);
    writer.writeString(obj.date);
    writer.writeInt(obj.color);
  }
}

// Your Note Model Class
class NoteModel {
  final String title;
  final String subTitle;
  final String date;
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}