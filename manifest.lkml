application: ga360_audience_selector_demo_2020 {
  label: "GA360 Audience Builder - Demo Version"
  #when dev complete will host from a file in the instance such as commented below
  # url: "https://localhost:8080/bundle.js"
  file: "042321_bundle.js"
  #starting in 7.10 you will need to pay more attention to this "entitlements" parameter
  entitlements: {
    local_storage: yes
    use_embeds: yes
    external_api_urls : ["http://localhost:3000","https://us-central1-hallowed-pipe-153306.cloudfunctions.net","http://localhost:8080"]
  }
}
