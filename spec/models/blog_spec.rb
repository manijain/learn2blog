require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "has valid record" do
    expect(FactoryBot.build(:blog)).to be_valid
  end

  it "doesn't save record without title" do
    blog = FactoryBot.build(:blog, title: nil)
    expect(blog).to be_invalid
    expect(blog.errors[:title]).to include("can't be blank")
  end

  it "doesn't save record without description" do
    blog = FactoryBot.build(:blog, description: nil)
    expect(blog).to be_invalid
    expect(blog.errors[:description]).to include("can't be blank")
  end

  it "doesn't save record without publish date" do
    blog = FactoryBot.build(:blog, publish_at: nil)
    expect(blog).to be_invalid
    expect(blog.errors[:publish_at]).to include("can't be blank")
  end
end
