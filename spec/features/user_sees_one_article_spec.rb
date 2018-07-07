require 'rails_helper'

describe 'user' do
  describe 'links to article show from articles index' do
    it 'displays info for one article' do
      article = Article.create(title: 'Title', body: 'Body')

      visit articles_path

      click_link article.title

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end
