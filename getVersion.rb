require 'open-uri'
require 'json'

def addVersionOffset(version)
	versionComponents = version.split('.')
	svn_to_github_offset = 24967
	patchNumber = versionComponents[2].to_i
	
	versionComponents[2] = (patchNumber + svn_to_github_offset).to_s
	return versionComponents.join('.')
end

json_object = JSON.load(open("https://api.bombbomb.com/v2/spec").read)

version = addVersionOffset(json_object['info']['version'])

puts version