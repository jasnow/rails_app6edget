# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module TZInfo
end

class TZInfo::AmbiguousTime < ::StandardError
end

class TZInfo::Country
  include(::Comparable)

  def <=>(c); end
  def _dump(limit); end
  def code; end
  def eql?(c); end
  def hash; end
  def inspect; end
  def name; end
  def to_s; end
  def zone_identifiers; end
  def zone_info; end
  def zone_names; end
  def zones; end

  private

  def setup(info); end

  def self._load(data); end
  def self.all; end
  def self.all_codes; end
  def self.data_source; end
  def self.get(identifier); end
  def self.init_countries; end
  def self.new(identifier); end
end

module TZInfo::CountryIndexDefinition
  def self.append_features(base); end
end

module TZInfo::CountryIndexDefinition::ClassMethods
  def countries; end
  def country(code, name, &block); end
end

class TZInfo::CountryInfo
  def initialize(code, name); end

  def code; end
  def inspect; end
  def name; end
  def zone_identifiers; end
  def zones; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::CountryTimezone
  def initialize(identifier, latitude_numerator, latitude_denominator, longitude_numerator, longitude_denominator, description = _); end

  def ==(ct); end
  def description; end
  def description_or_friendly_identifier; end
  def eql?(ct); end
  def hash; end
  def identifier; end
  def inspect; end
  def latitude; end
  def longitude; end
  def timezone; end

  def self.new(identifier, latitude, longitude, description = _); end
  def self.new!(*_); end
end

class TZInfo::DataSource
  def country_codes; end
  def data_timezone_identifiers; end
  def inspect; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end

  private

  def raise_invalid_data_source(method_name); end

  def self.create_default_data_source; end
  def self.get; end
  def self.set(data_source_or_type, *args); end
end

class TZInfo::DataSourceNotFound < ::StandardError
end

class TZInfo::DataTimezone < ::TZInfo::InfoTimezone
  def canonical_zone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = _); end
end

class TZInfo::DataTimezoneInfo < ::TZInfo::TimezoneInfo
  def create_timezone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = _); end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::InfoTimezone < ::TZInfo::Timezone
  def identifier; end

  protected

  def info; end
  def setup(info); end

  def self.new(info); end
end

class TZInfo::InvalidCountryCode < ::StandardError
end

class TZInfo::InvalidDataSource < ::StandardError
end

class TZInfo::InvalidTimezoneIdentifier < ::StandardError
end

class TZInfo::InvalidZoneinfoDirectory < ::StandardError
end

class TZInfo::InvalidZoneinfoFile < ::StandardError
end

class TZInfo::LinkedTimezone < ::TZInfo::InfoTimezone
  def canonical_zone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = _); end

  protected

  def setup(info); end
end

class TZInfo::LinkedTimezoneInfo < ::TZInfo::TimezoneInfo
  def initialize(identifier, link_to_identifier); end

  def create_timezone; end
  def inspect; end
  def link_to_identifier; end
end

class TZInfo::NoOffsetsDefined < ::StandardError
end

module TZInfo::OffsetRationals

  private

  def rational_for_offset(offset); end

  def self.rational_for_offset(offset); end
end

class TZInfo::PeriodNotFound < ::StandardError
end

module TZInfo::RubyCoreSupport
  def self.datetime_new(y = _, m = _, d = _, h = _, min = _, s = _, of = _, sg = _); end
  def self.datetime_new!(ajd = _, of = _, sg = _); end
  def self.force_encoding(str, encoding); end
  def self.open_file(file_name, mode, opts, &block); end
  def self.rational_new!(numerator, denominator = _); end
  def self.time_nsec(time); end
  def self.time_supports_64bit; end
  def self.time_supports_negative; end
end

TZInfo::RubyCoreSupport::HALF_DAYS_IN_DAY = T.let(T.unsafe(nil), Rational)

class TZInfo::RubyCountryInfo < ::TZInfo::CountryInfo
  def initialize(code, name, &block); end

  def zone_identifiers; end
  def zones; end
end

class TZInfo::RubyCountryInfo::Zones
  def initialize; end

  def list; end
  def timezone(identifier, latitude_numerator, latitude_denominator, longitude_numerator, longitude_denominator, description = _); end
end

class TZInfo::RubyDataSource < ::TZInfo::DataSource
  def country_codes; end
  def data_timezone_identifiers; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end

  private

  def load_country_index; end
  def load_timezone_index; end
  def require_data(*file); end
  def require_definition(identifier); end

  def self.load_country_index; end
  def self.load_timezone_index; end
  def self.require_data(*file); end
  def self.require_index(name); end
end

TZInfo::RubyDataSource::REQUIRE_PATH = T.let(T.unsafe(nil), String)

class TZInfo::TimeOrDateTime
  include(::Comparable)

  def initialize(timeOrDateTime); end

  def +(seconds); end
  def -(seconds); end
  def <=>(timeOrDateTime); end
  def add_with_convert(seconds); end
  def day; end
  def eql?(todt); end
  def hash; end
  def hour; end
  def inspect; end
  def mday; end
  def min; end
  def mon; end
  def month; end
  def sec; end
  def to_datetime; end
  def to_i; end
  def to_orig; end
  def to_s; end
  def to_time; end
  def usec; end
  def year; end

  def self.wrap(timeOrDateTime); end
end

class TZInfo::Timezone
  include(::Comparable)

  def <=>(tz); end
  def _dump(limit); end
  def canonical_identifier; end
  def canonical_zone; end
  def current_period; end
  def current_period_and_time; end
  def current_time_and_period; end
  def eql?(tz); end
  def friendly_identifier(skip_first_part = _); end
  def hash; end
  def identifier; end
  def inspect; end
  def local_to_utc(local, dst = _); end
  def name; end
  def now; end
  def offsets_up_to(utc_to, utc_from = _); end
  def period_for_local(local, dst = _); end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def strftime(format, utc = _); end
  def to_s; end
  def transitions_up_to(utc_to, utc_from = _); end
  def utc_to_local(utc); end

  private

  def raise_unknown_timezone; end

  def self._load(data); end
  def self.all; end
  def self.all_country_zone_identifiers; end
  def self.all_country_zones; end
  def self.all_data_zone_identifiers; end
  def self.all_data_zones; end
  def self.all_identifiers; end
  def self.all_linked_zone_identifiers; end
  def self.all_linked_zones; end
  def self.data_source; end
  def self.default_dst; end
  def self.default_dst=(value); end
  def self.get(identifier); end
  def self.get_proxies(identifiers); end
  def self.get_proxy(identifier); end
  def self.init_loaded_zones; end
  def self.new(identifier = _); end
  def self.us_zone_identifiers; end
  def self.us_zones; end
end

module TZInfo::TimezoneDefinition
  def self.append_features(base); end
end

module TZInfo::TimezoneDefinition::ClassMethods
  def get; end
  def linked_timezone(identifier, link_to_identifier); end
  def timezone(identifier); end
end

module TZInfo::TimezoneIndexDefinition
  def self.append_features(base); end
end

module TZInfo::TimezoneIndexDefinition::ClassMethods
  def data_timezones; end
  def linked_timezone(identifier); end
  def linked_timezones; end
  def timezone(identifier); end
  def timezones; end
end

class TZInfo::TimezoneInfo
  def initialize(identifier); end

  def create_timezone; end
  def identifier; end
  def inspect; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::TimezoneOffset
  def initialize(utc_offset, std_offset, abbreviation); end

  def ==(toi); end
  def abbreviation; end
  def dst?; end
  def eql?(toi); end
  def hash; end
  def inspect; end
  def std_offset; end
  def to_local(utc); end
  def to_utc(local); end
  def utc_offset; end
  def utc_total_offset; end
end

class TZInfo::TimezonePeriod
  def initialize(start_transition, end_transition, offset = _); end

  def ==(p); end
  def abbreviation; end
  def dst?; end
  def end_transition; end
  def eql?(p); end
  def hash; end
  def inspect; end
  def local_after_start?(local); end
  def local_before_end?(local); end
  def local_end; end
  def local_end_time; end
  def local_start; end
  def local_start_time; end
  def offset; end
  def start_transition; end
  def std_offset; end
  def to_local(utc); end
  def to_utc(local); end
  def utc_after_start?(utc); end
  def utc_before_end?(utc); end
  def utc_end; end
  def utc_end_time; end
  def utc_offset; end
  def utc_start; end
  def utc_start_time; end
  def utc_total_offset; end
  def utc_total_offset_rational; end
  def valid_for_local?(local); end
  def valid_for_utc?(utc); end
  def zone_identifier; end
end

class TZInfo::TimezoneProxy < ::TZInfo::Timezone
  def _dump(limit); end
  def canonical_zone; end
  def identifier; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(to, from = _); end

  private

  def real_timezone; end
  def setup(identifier); end

  def self._load(data); end
  def self.new(identifier); end
end

class TZInfo::TimezoneTransition
  def initialize(offset, previous_offset); end

  def ==(tti); end
  def at; end
  def datetime; end
  def eql?(tti); end
  def hash; end
  def inspect; end
  def local_end; end
  def local_end_at; end
  def local_end_time; end
  def local_start; end
  def local_start_at; end
  def local_start_time; end
  def offset; end
  def previous_offset; end
  def time; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::TimezoneTransitionDefinition < ::TZInfo::TimezoneTransition
  def initialize(offset, previous_offset, numerator_or_timestamp, denominator_or_numerator = _, denominator = _); end

  def at; end
  def eql?(tti); end
  def hash; end

  protected

  def denominator; end
  def numerator_or_time; end
end

class TZInfo::TransitionDataTimezoneInfo < ::TZInfo::DataTimezoneInfo
  def initialize(identifier); end

  def offset(id, utc_offset, std_offset, abbreviation); end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transition(year, month, offset_id, numerator_or_timestamp, denominator_or_numerator = _, denominator = _); end
  def transitions_up_to(utc_to, utc_from = _); end

  private

  def transition_after_start(index); end
  def transition_before_end(index); end
  def transition_index(year, month); end
end

class TZInfo::UnknownTimezone < ::StandardError
end

class TZInfo::ZoneinfoCountryInfo < ::TZInfo::CountryInfo
  def initialize(code, name, zones); end

  def zone_identifiers; end
  def zones; end
end

class TZInfo::ZoneinfoDataSource < ::TZInfo::DataSource
  def initialize(zoneinfo_dir = _, alternate_iso3166_tab_path = _); end

  def country_codes; end
  def data_timezone_identifiers; end
  def inspect; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end
  def zoneinfo_dir; end

  private

  def dms_to_rational(sign, degrees, minutes, seconds = _); end
  def enum_timezones(dir, exclude = _, &block); end
  def find_zoneinfo_dir; end
  def load_country_index(iso3166_tab_path, zone_tab_path); end
  def load_timezone_index; end
  def resolve_tab_path(zoneinfo_path, standard_names, tab_name); end
  def validate_zoneinfo_dir(path, iso3166_tab_path = _); end

  def self.alternate_iso3166_tab_search_path; end
  def self.alternate_iso3166_tab_search_path=(alternate_iso3166_tab_search_path); end
  def self.process_search_path(path, default); end
  def self.search_path; end
  def self.search_path=(search_path); end
end

TZInfo::ZoneinfoDataSource::DEFAULT_ALTERNATE_ISO3166_TAB_SEARCH_PATH = T.let(T.unsafe(nil), Array)

TZInfo::ZoneinfoDataSource::DEFAULT_SEARCH_PATH = T.let(T.unsafe(nil), Array)

class TZInfo::ZoneinfoDirectoryNotFound < ::StandardError
end

class TZInfo::ZoneinfoTimezoneInfo < ::TZInfo::TransitionDataTimezoneInfo
  def initialize(identifier, file_path); end


  private

  def check_read(file, bytes); end
  def define_offset(index, offset); end
  def derive_offsets(transitions, offsets); end
  def make_signed_int32(long); end
  def make_signed_int64(high, low); end
  def parse(file); end
end

TZInfo::ZoneinfoTimezoneInfo::MAX_TIMESTAMP = T.let(T.unsafe(nil), Integer)

TZInfo::ZoneinfoTimezoneInfo::MIN_TIMESTAMP = T.let(T.unsafe(nil), Integer)
