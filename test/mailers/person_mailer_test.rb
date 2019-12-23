require 'test_helper'

class PersonMailerTest < ActionMailer::TestCase
  test "nps" do
    person = people(:one)
    email = PersonMailer.nps(person)
    assert_equal [person.email], email.to
    assert_equal I18n.t("person_mailer.nps.subject"), email.subject
  end
end
