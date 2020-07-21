application: ga360_audience_selector {
  label: "AF GA360 Audience Selector"
  #when dev complete will host from a file in the instance such as commented below
  file: "audience_form.js"
  # url: "http://localhost:8080/bundle.js"
  #starting in 7.10 you will need to pay more attention to this "entitlements" parameter
  entitlements: {
    local_storage: yes
    allow_same_origin: yes
  }
}
