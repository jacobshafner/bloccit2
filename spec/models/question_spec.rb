require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "Question Title",body: "Question Body", resolved: true) }

  describe "attributes" do
    it "has expected attributes" do
      expect(question).to have_attributes(title: "Question Title", body: "Question Body", resolved: true)
    end
  end
end
