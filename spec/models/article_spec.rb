require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validation" do
    let(:article) {Article.new user: User.new}
    it "title not presence" do
      article.title = ''
      expect(article).not_to be_valid
    end

    it "title too short" do
      article.title = 'a'*5
      expect(article).not_to be_valid
    end

    it "title too long" do
      article.title = 'a'*201
      expect(article).not_to be_valid
    end

    it "valid title" do
      article.title = 'a'*6
      expect(article).to be_valid
    end
  end

  context "#object methods" do
    let(:article) {Article.new(
      title: "eXamPle tiTle",
      description: "eXAmPLe DesCriPtiON",
      user: User.new
    )}

    it "#downcase_title" do
      article.downcase_title
      expect(article.title).to eq "example title"
    end

    it "#capitalize_title" do
      article.capitalize_title
      expect(article.title).to eq "Example title"
    end

    it "#upcase_description" do
      article.upcase_description
      expect( article.description).to eq "EXAMPLE DESCRIPTION"
    end
  end
end
