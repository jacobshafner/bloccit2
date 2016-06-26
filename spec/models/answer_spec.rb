require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title:"Question Title", body:"Question Body", resolved: true) }
  let(:answer) { Answer.create!(body: "Answer Body", question: question) }

  describe "attributes" do
    it "has expected attributes" do
      expect(answer).to have_attributes(body: "Answer Body")
    end
  end
end
