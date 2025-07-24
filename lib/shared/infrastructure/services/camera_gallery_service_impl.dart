import 'package:image_picker/image_picker.dart';
import 'package:stock_ventas/shared/infrastructure/services/camera_gallery_service.dart';

class CameraGalleryServiceImpl extends CameraGalleryService {
  final ImagePicker _picker = ImagePicker();

  @override
  // ignore: body_might_complete_normally_nullable
  Future<String?> selectPhoto() async {
    // Pick an image.
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
    if (photo == null) return null;

    return photo.path; // Return the path of the selected photo.
  }

  @override
  // ignore: body_might_complete_normally_nullable
  Future<String?> takePhoto() async {
    // Capture a photo.
    final XFile? photo = await _picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
    );
    if (photo == null) return null;

    return photo.path; // Return the path of the selected photo.
  }
}
