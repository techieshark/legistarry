require 'sequel'

DB = Sequel.connect('postgres://localhost/legistar')

DB.create_table? :event_items do
  primary_key :id
  Integer :source_id
  String  :guid
  String  :last_modified_utc
  String  :row_version
  Integer :event_id
  String  :agenda_sequence
  String  :minutes_sequence
  String  :agenda_number
  String  :video
  String  :video_index
  String  :version
  String  :agenda_note
  String  :minutes_note
  Integer :action_id
  String  :action_name
  String  :action_text
  String  :passed_flag
  String  :passed_flag_name
  String  :roll_call_flag
  String  :flag_extra
  String  :title
  String  :tally
  String  :consent
  Integer :mover_id
  String  :mover
  Integer :seconder_id
  String  :seconder
  Integer :matter_id
  String  :matter_guid
  String  :matter_file
  String  :matter_name
  String  :matter_type
  String  :matter_status
end
