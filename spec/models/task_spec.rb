require 'rails_helper'

RSpec.describe Task, type: :model do
  subject(:task) { build :task }

  describe 'validations' do
    it { should validate_presence_of(:title) }

    it { should validate_length_of(:title).is_at_least(3) }

    it { should validate_uniqueness_of(:title).case_insensitive }
  end

end
