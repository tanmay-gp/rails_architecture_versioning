class SomeClass

  def decide(version)
    class_string = "UsersModule::V1::ProviderModule::V%{version}::GenericProviderService" % {:version => version}
    to_class(class_string)
  end

  def to_class(class_string)
    class_string.constantize
  end
end