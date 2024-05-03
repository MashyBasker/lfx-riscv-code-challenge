let rev x =
  let len = String.length x in
  String.init len (fun i -> String.get x (len - i - 1))

let reverse_string_list s =
  s |> Str.split (Str.regexp " ") |> List.map rev |> String.concat " "
  
let input_and_reverse () =
  let _ = print_string "Enter input: " in
  let string_input = read_line() in
  print_endline ("Output: "^reverse_string_list (string_input));;

let read_from_term () =
  let quit_loop = ref false in
    while not !quit_loop do
      input_and_reverse();
      print_string "Enter 'q' to quit, anything else to continue: ";
      let user_input = read_line() in
        if user_input = "q" then
          quit_loop := true
    done;;

let read_from_file filename =
  let ic = open_in filename in
  try
    while true; do
      let line = input_line ic in
      let processed = line |> reverse_string_list in
      print_endline processed;
    done
  with End_of_file ->
    close_in ic;;

let main () =
  let _ = print_string "Enter 'f' to read from file or 'c' to read from console: " in
  let mode = read_line() in
  match mode with
  | "f" -> print_string "Enter filename: ";
    let filename = read_line() in
    read_from_file filename
  | "c" -> read_from_term()
  | _ -> print_endline "Invalid input. Please try again."

let () = main()

