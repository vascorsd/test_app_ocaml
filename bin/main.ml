open Lib

let () =
  print_endline ("Hello, World! " ^ string_of_int magic_number);
  print_newline ();
  print_endline (String.concat ", " (List.map string_of_int some_list))
