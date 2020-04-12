

class Env_Url
    def self.environment_links(localsite)

            if (localsite != '.com')
                if (ENV['TEST_ENV'] == 'qa' || ENV['TEST_ENV'] == 'sle')
                    site = localsite.split(".")
                    if(site.count == 3) # to check if localsite is something like .com.br, .com.au (more than one '.')
                        code = site[2]
                        url = $SLE2_1_URL+(code)+$SLE2_2_URL
                        # puts "\n\n URL is --> "+ url +"\n\n"
                    else # when the local site has only 1 '.' eg : .fr, .ca/fr
                        countrycode = site[1].split("/")
                        code = countrycode[0]
                        code += "." if ENV['TEST_ENV'] == 'sle'
                        lang = countrycode[1]

                        if (lang)  # if there is a language sepecied in the local site eg /fr in .ca/fr

                            url = $SLE2_1_URL+(code)+$SLE2_2_URL+'/'+lang
                            # puts "\n\n URL is --> "+ url +"\n\n"
                        else # if there is no language specified in the localsite
                            url = $SLE2_1_URL+(code)+$SLE2_2_URL
                            #  puts "\n\n URL is --> "+ url +"\n\n"
                        end #end for language check
                    end
                else # else when test environment != QA
                    url = $BASE_URL_SHORT+(localsite)
                    #  puts "\n\n URL is --> "+ url +"\n\n"
                end  # end for test environment if
            else  # else when localsite == .com
                url = $BASE_URL_SHORT+(localsite)
            # puts "\n\n URL is --> "+ url +"\n\n"
            end # end for localsite if
            return url
    end
end
