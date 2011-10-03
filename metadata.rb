maintainer       "Javier Pérez-Griffo Callejón"
maintainer_email "javier@besol.es"
license          "Apache 2.0"
description      "Installs/Configures bigbluebutton"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.2.1"
recipe           "bigbluebutton", "Installs and configures bigbluebutton"

%w(apt mysql).each do |recipe_dependency|
  depends recipe_dependency
end

%w{ ubuntu debian }.each do |os|
  supports os
end