class SubscriptionMailer < DefaultMailer
  default to: 'marq@multistores.com.ar'

  def subscribe(params)
    @params = params
    mail(subject: 'Nueva consulta Marq Web')
  end
end
