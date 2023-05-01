require 'award'
Dir.glob('awards/*.rb').each { |file| require file }

class AwardTypeFactory
  def self.create_award_type_instance(award)
    award_type = Object.const_get(award.name.split.map(&:capitalize).join)
    raise "Unknown award type: #{award.name}" unless award_type

    award_type.new(award)
  end
end