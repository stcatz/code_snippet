
    def find_descendant( process_id )
      descendant = []
      if process_id
        `ps -o pid --ppid #{process_id}`.each do |line|
          if line.to_i > 0 
            descendant << line.to_i
            sub_descendant = find_descendant( line.to_i )
            descendant.concat sub_descendant if !sub_descendant.empty?
          end
        end
      end
      descendant
    end

print("process id: ")

pid = gets.chop

p find_descendant( pid )