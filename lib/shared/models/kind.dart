import "package:freezed_annotation/freezed_annotation.dart";

enum Kind {
  @JsonValue("track")
  track,
  @JsonValue("album")
  album,
  @JsonValue("artist")
  artist,
}
