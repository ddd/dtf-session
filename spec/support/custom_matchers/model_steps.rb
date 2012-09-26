placeholder :association do
  match /(\w+(?: \w+)*)/ do |assoc_name|
    assoc_name.gsub(' ', '_')
  end
end
