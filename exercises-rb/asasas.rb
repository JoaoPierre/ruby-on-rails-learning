def greet(language)

  
  
  languages =  { 
  "english" => "Welcome",
  "czech" =>"Vitejte",
  "danish"=> "Velkomst",
  "dutch"=>"Welkom",
  "estonian" =>"Tere tulemast",
  "finnish" =>"Tervetuloa",
  "flemish" =>"Welgekomen",
  "french"=> "Bienvenue",
  "german"=>"Willkommen",
  "irish" =>"Failte",
  "italian"=> "Benvenuto",
  "latvian"=> "Gaidits",
  "lithuanian" =>"Laukiamas",
  "polish" =>"Witamy",
  "spanish"=>"Bienvenido",
  "swedish"=> "Valkommen",
  "welsh" => "Croeso",
   }
  
  
  translated = languages[language]
  puts translated
  
  
  #if translated 
   # return translated
  #else
   # return "Welcome"
  #end
  translated
end

greet("english")