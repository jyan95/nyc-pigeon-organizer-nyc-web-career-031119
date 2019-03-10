def nyc_pigeon_organizer(data)
  new = {}
  data.each{ |property,property_hash|
    property_hash.each{ |value, array|
      array.each{ |name|
        if !new.has_key?(name)
          new[name] = {}
        end
        if !new[name].has_key?(property)
          new[name][property] = []
        end
        if !new[name][property].include?(value)
          new[name][property].push(value.to_s)
        end
      }
    }
  }
  new
end
