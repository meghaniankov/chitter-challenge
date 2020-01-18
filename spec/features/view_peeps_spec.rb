feature 'View Peeps' do
  scenario 'User can view all peeps' do
    post_peep
    visit '/'
    click_link 'View Peeps'
    expect(page).to have_content 'My first peep'
  end

  scenario 'User can see the time the peep was posted' do
    post_peep
    visit '/'
    click_link 'View Peeps'
    page.find('#time', :visible => true)
  end
end