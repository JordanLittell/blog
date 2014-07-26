require 'spec_helper'

describe Article do
  pending "add some examples to"
  article = Article.create({:title=>"new post",:description=>"new post",:text =>"this is some text"})
  expect(article).to be_invalid
end
