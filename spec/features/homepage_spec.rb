feature 'Homepage' do
  scenario 'Homepage displays Chitter name' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end

  scenario 'Homepage has view peeps button' do
    visit '/'
    expect(page).to have_button 'View Peeps'
  end

  scenario 'Homepage has write a peep button if user is signed up' do
    sign_up
    visit '/'
    expect(page).to have_button 'Write a Peep'
  end

  scenario 'Homepage has sign up button' do
    visit '/'
    expect(page).to have_button 'Sign Up'
  end

  scenario 'Homepage has sign in button' do
    visit '/'
    expect(page).to have_button 'Sign In'
  end

  scenario 'Homepage has sign out button' do
    sign_up
    visit '/'
    expect(page).to have_button 'Log Out'
  end
end
