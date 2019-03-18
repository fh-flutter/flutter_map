class KFBInfo {
  int fileNum;
  int width;
  int height;
  int imageBlockLen;
  double imageCapRes;
  Map<String, dynamic> ratioMap;
  int scanScale;

  KFBInfo.fromJson(Map<String, dynamic> data) {
    this.fileNum = data['fileNum'];
    this.width = data['width'];
    this.height = data['height'];
    this.imageBlockLen = data['imageBlockLen'];
    this.imageCapRes = data['imageCapRes'];
    this.scanScale = data['scanScale'];
    this.ratioMap = data['ratiomap'];
  }
}
