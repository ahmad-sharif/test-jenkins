apt_update

package 'docker.io' do
  action :install
end

bash "configure-ppa" do
  code <<-EOT
    docker run  -p 8081:8080  -p 5000:5000 jenkins | tee /abc
    tail -f /abc
  EOT
end
