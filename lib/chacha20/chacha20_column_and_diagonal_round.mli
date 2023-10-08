open! Core
open! Hardcaml
open! Signal

module I : sig
  type 'a t = { round_input : 'a [@bits 512] } [@@deriving sexp_of, hardcaml]
end

module O : sig
  type 'a t = { round_output : 'a [@bits 512] } [@@deriving sexp_of, hardcaml]
end

val create : Signal.t I.t -> Signal.t O.t
