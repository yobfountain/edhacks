module ApplicationHelper
  def signed_up?
    !!cookies[:signup]
  end

  def email_input(form)
    placeholder = signed_up? ? "You are already registered" : "Enter your email for more info"
    form.email_field(:email,
      class: "form-control input-lg",
      disabled: signed_up?,
      placeholder: placeholder,
      required: true,
      title: "Don't worry. We hate spam, and will not share your email with anyone."
    )
  end
end
