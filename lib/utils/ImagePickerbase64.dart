part of 'package:osltestcubit/variable/imports.dart';

class Base64 {
  static Encod(String fieldName1, value1) async {
    File? imageFile;
    var imagepicker = ImagePicker();
    final XFile? image =
        await imagepicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    Uint8List imagebyte = await image.readAsBytes();
    String _base64 = base64.encode(imagebyte);
   // await MongoDatabase.Update(fieldName1, value1, "photo", _base64.toString());
  }
}
