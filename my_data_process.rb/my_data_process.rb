
    
    require 'csv'
    require 'json'
    def my_data_process(param_1)
        hammasi = {}
        CSV.parse(param_1.join("\n"), headers: true).each do |wor|
            s = wor.to_h
            s.delete("FirstName")
            s.delete("LastName")
            s.delete("UserName")
            s.delete("Coffee Quantity")
            s.keys.each do |ism|
                if hammasi[ism] == nil
                    hammasi[ism] = {}
                    p hammasi
                end
    
                qiymat2 = s[ism]
                if hammasi[ism][qiymat2] == nil
                    hammasi[ism][qiymat2] = 0
                end
                hammasi[ism][qiymat2] += 1
            end
        end
         return res.to_json
    end