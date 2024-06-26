import Timelib.Util
import Timelib.DateTime.NaiveDateTime
import Timelib.Duration.SignedDuration

namespace Timelib

structure TimeZone where
  ident {p : Int} (zulu : NaiveDateTime p) : String
  fromZulu {p : Int} (zulu : NaiveDateTime p) : SignedDuration p
  toZulu {p : Int} (local_ : NaiveDateTime p) : SignedDuration p

namespace TimeZone

class LawfulTimeZone (A : TimeZone) where
  applyIso {p : Int} (tai : NaiveDateTime p) : tai + (A.fromZulu (A.toZulu tai + tai)) = tai
  removeIso {p : Int} (x : NaiveDateTime p) : x + (A.toZulu (A.fromZulu x + x)) = x


def Zulu : TimeZone := {
  ident := fun _ => "zulu"
  fromZulu := fun _ => 0
  toZulu := fun _ => 0
}

instance : LawfulTimeZone Zulu := {
  applyIso := by simp only [Zulu, NaiveDateTime.hAdd_signed_def, add_zero, forall_const,
    Subtype.forall, implies_true]
  removeIso := by simp only [Zulu, NaiveDateTime.hAdd_signed_def, add_zero, forall_const,
    Subtype.forall, implies_true];
}
