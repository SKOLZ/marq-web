class SubscriptionMailer < DefaultMailer
  default to: 'gabriel.zanzotti@gmail.com'

  def subscribe(params)
    @params = params
    mail(subject: 'Nueva consulta Marq Web')
  end
end
