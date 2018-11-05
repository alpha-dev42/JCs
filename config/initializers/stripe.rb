if Rails.env.production?
    Rails.configuration.stripe = {
      publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
      secret_key: ENV['STRIPE_SECRET_KEY']
    }
  else
    Rails.configuration.stripe = {
      publishable_key: 'pk_test_n1INGFOoCa8JfXDGLaoQa8vx',
      secret_key: 'sk_test_Wi3pVAu10RSmZALId5LHHylh'
    }
  end
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]