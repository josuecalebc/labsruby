module Funciones
	def palidromo?(palabra)
		valido = true
		palabra = palabra.gsub(/\d|\W/,'').downcase
		l = palabra.length/2
		l.times do |i|			
			if palabra[i] != palabra[palabra.length - i - 1]
				valido=false
			end
		end
		valido		
	end	

	def cuenta_palabras(frase)
		palabras = frase.split
		l = palabras.length
		h = Hash.new		
		l.times do |i|
			palabra = palabras[i]
			if h[palabra] == nil
				h[palabra] = 1	
			else
				h[palabra] += 1
			end
			

		end
		h
	end

	def char_count(s,c)
		l = s.length
		n = 0
		l.times do |i|
			if s[i]==c 
				n+=1
			end
		end
		n
	end

	def atoi(s)
		s=s.reverse
		l = s.length
		num = 0
		l.times do |i|
			num += (s[i].ord-48)*10**i
		end
		num
	end

	def hanoi(numero_discos,  t_origen, t_destino, t_alterna)		
		if numero_discos == 1
			puts "Mover: " + t_origen.to_s + "----->" + t_destino.to_s
		else			
			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
			puts "Mover: " + t_origen.to_s + "----->" + t_destino.to_s
			hanoi(numero_discos-1, t_alterna, t_destino, t_origen)
		end
	end 
	def sort(array,asc)
		n = array.length
		m=n
		aux = []				
		index=0

		num = array[0]
		n.times do |i|
			m.times do |j|
				if asc
					if array[j] >= num
						num = array[j]
						index=j					
					end		
				else
					if array[j] <= num
						num = array[j]
						index=j					
					end		
				end
				
			end						
			array.delete_at(index)		
			m = array.length			
			aux << num
			num = array[0]							
		end		
		aux
	end
end
	
class Prueba
	include Funciones

	def main
		puts "TEST PALINDROMO"
		puts palidromo?("anona")
		puts "\n"
		puts "TEST CUENTA_PALABRAS"
		puts cuenta_palabras("uno uno dos dos tres cuatro cinco")
		puts "\n"
		puts "TEST SORT"
		p sort([2,3,6,7,1,5,4],true)
		puts "\n"
		puts "TEST CHAR_COUNT"
		puts char_count("holamundo",'o')
		puts "\n"
		puts "TEST ATOI"
		puts atoi("12345")
		puts "\n"
		puts "TEST HANOI"
		hanoi(3,1,2,3)
	end
	
end

p = Prueba.new()
p.main
