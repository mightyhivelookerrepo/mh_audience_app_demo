application: ga360_audience_selector {
  label: "GA360 Audience Builder - Demo Version"
  #when dev complete will host from a file in the instance such as commented below
  file: "audience_form.js"
  # url: "http://localhost:8080/bundle.js"
  #starting in 7.10 you will need to pay more attention to this "entitlements" parameter
  entitlements: {
    local_storage: yes
    allow_same_origin: yes
  }
}
