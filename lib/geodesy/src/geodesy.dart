import 'core/core.dart';

/// The main Geodesy Class
class Geodesy {
  /// Calculate a destination point given the distance and bearing
  LatLng destinationPointByDistanceAndBearing(LatLng l, num distance, num bearing, [num? radius]) {
    return DistanceAndBearing.destinationPointByDistanceAndBearing(l, distance, bearing, radius);
  }

  /// Calculate the midpoint between teo geo points
  LatLng midPointBetweenTwoGeoPoints(LatLng l1, LatLng l2) {
    return GeoPoints.midPointBetweenTwoGeoPoints(l1, l2);
  }

  /// Calculate the geo point of intersection of two given paths
  LatLng? intersectionByPaths(LatLng l1, LatLng l2, num b1, num b2) {
    return GeoPoints.intersectionOfTwoGeoPointsByPaths(l1, l2, b1, b2);
  }

  /// calculate the distance in meters between two geo points
  num distanceBetweenTwoGeoPoints(LatLng l1, LatLng l2, [num? radius]) {
    return GeoPoints.distanceBetweenTwoGeoPoints(l1, l2, radius);
  }

  /// calculate the bearing from point l1 to point l2
  num bearingBetweenTwoGeoPoints(LatLng l1, LatLng l2) {
    return BearingBetweenTwoGeoPoints.bearingBetweenTwoGeoPoints(l1, l2);
  }

  /// calculate the final bearing from point l1 to point l2
  num finalBearingBetweenTwoGeoPoints(LatLng l1, LatLng l2) {
    return BearingBetweenTwoGeoPoints.finalBearingBetweenTwoGeoPoints(l1, l2);
  }

  /// calculate signed distance from a geo point
  /// to create circle with start and end points
  num crossTrackDistanceTo(LatLng l1, LatLng start, LatLng end, [num? radius]) {
    return TrackDistance.crossTrackDistanceTo(l1, start, end);
  }

  /// check if a given geo point is in the bounding box
  bool isGeoPointInBoundingBox(LatLng l, LatLng topLeft, LatLng bottomRight) {
    return BoundingBox.isGeoPointInBoundingBox(l, topLeft, bottomRight);
  }

  /// check if a given geo point is in the a polygon
  /// using even-odd rule algorithm
  bool isGeoPointInPolygon(LatLng l, List<LatLng> polygon) {
    return GeoPoints.isGeoPointInPolygon(l, polygon);
  }

  /// Get a list of [LatLng] points within a distance from
  /// a given point
  /// Distance is in meters
  List<LatLng> pointsInRange(LatLng point, List<LatLng> pointsToCheck, num distance) {
    return PointRange.pointInRange(point, pointsToCheck, distance);
  }

  /// great-circle distance between two points using the Haversine formula
  num greatCircleDistanceBetweenTwoGeoPoints(num lat1, num lon1, num lat2, num lon2) {
    return GeoPoints.greatCircleDistanceBetweenTwoGeoPoints(lat1, lon1, lat2, lon2);
  }

  /// GetRectangleBounds
  List<LatLng> getRectangleBounds(List<LatLng> polygonCoords) {
    return RectangleBounds.getRectangleBounds(polygonCoords);
  }

  /// Bounding Box per distance in Kilometers
  List<LatLng> calculateBoundingBox(LatLng centerPoint, num distanceInKm) {
    return BoundingBox.calculateBoundingBox(centerPoint, distanceInKm);
  }

  /// finds the centroid of polygons
  LatLng findPolygonCentroid(List<LatLng> polygons) {
    return PolygonCentroid.findPolygonCentroid(polygons);
  }

  /// Get Polygon Intersection
  List<LatLng> getPolygonIntersection(List<LatLng> polygon1, List<LatLng> polygon2) {
    return PolygonIntersection.getPolygonIntersection(polygon1, polygon2);
  }
}
