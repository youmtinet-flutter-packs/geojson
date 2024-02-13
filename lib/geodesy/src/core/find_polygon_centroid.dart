import 'core.dart';

///
class PolygonCentroid {
  ///
  PolygonCentroid();

  /// Finds the centroid of polygons
  static LatLng findPolygonCentroid(List<LatLng> polygons) {
    num x = 0;
    num y = 0;
    num signedArea = 0;

    final num vertexCount = polygons.length;

    for (var i = 0; i < vertexCount; i++) {
      final currentVertex = polygons[i];
      final nextVertex = polygons[(i + 1) % vertexCount.toInt()];

      final num a = currentVertex.longitude * nextVertex.latitude - nextVertex.longitude * currentVertex.latitude;
      signedArea += a;
      x += (currentVertex.longitude + nextVertex.longitude) * a;
      y += (currentVertex.latitude + nextVertex.latitude) * a;
    }

    signedArea *= 0.5;
    x /= 6 * signedArea;
    y /= 6 * signedArea;

    // Return the centroid as LatLng object
    return LatLng(
      y.toDouble(),
      x.toDouble(),
    );
  }
}
