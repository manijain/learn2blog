require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  before do
    @blog = FactoryBot.create(:blog)
    @comment = @blog.comments.create(
      body: "test comment",
      commenter: "Manish jain"
    )
  end

  it "has valid record" do
    expect(@comment).to be_valid
  end

  it "doesn't save record without message" do
    comment = @blog.comments.create(body: nil)
    expect(comment).to be_invalid
    expect(comment.errors[:body]).to include("can't be blank")
  end

  it "doesn't save record without commenter" do
    comment = @blog.comments.create(commenter: nil)
    expect(comment).to be_invalid
    expect(comment.errors[:commenter]).to include("can't be blank")
  end
end
