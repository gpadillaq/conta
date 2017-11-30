require 'test_helper'

class LoginTest < Capybara::Rails::TestCase
  test 'unloged user' do
    visit root_path
    assert page.has_current_path?(user_session_path)
  end

  test 'login user valid' do
    visit root_path
    fill_in('Email', with: 'test@venbrain.com')
    fill_in('Contraseña', with: '123test@venbrain.com')
    click_on('Entrar')

    assert page.has_content?(I18n.t('devise.sessions.signed_in')) &&
           page.has_current_path?(root_path)
  end

  test 'login user invalid' do
    visit root_path
    fill_in('Email', with: 'admin@venbrain.com')
    fill_in('Contraseña', with: '123123')
    click_on('Entrar')

    assert page.has_content?(I18n.t('devise.failure.not_found_in_database')) &&
           page.has_current_path?(user_session_path)
  end

  test 'logout user' do
    visit root_path
    fill_in('Email', with: 'test@venbrain.com')
    fill_in('Contraseña', with: '123test@venbrain.com')
    click_on('Entrar')

    assert page.has_content?(I18n.t('devise.sessions.signed_in'))

    find(:xpath, ".//a[@href='#{destroy_user_session_path}']//i[@class='fa fa-sign-out']").click
  end
end
