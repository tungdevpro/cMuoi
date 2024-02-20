abstract class DurationsProvider {
  const DurationsProvider._();

  static const long = 500;
  static const medium = 300;
  static const short = 150;
  static const extraShort = 80;
}

class LongDuration extends Duration {
  const LongDuration() : super(milliseconds: DurationsProvider.long);
}

class MediumDuration extends Duration {
  const MediumDuration() : super(milliseconds: DurationsProvider.medium);
}

class ShortDuration extends Duration {
  const ShortDuration() : super(milliseconds: DurationsProvider.short);
}

class ExtraShortDuration extends Duration {
  const ExtraShortDuration() : super(milliseconds: DurationsProvider.extraShort);
}
