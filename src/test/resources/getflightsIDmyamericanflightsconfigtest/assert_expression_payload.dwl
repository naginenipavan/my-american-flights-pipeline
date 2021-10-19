%dw 2.0
import * from dw::test::Asserts
---
payload must [
  beObject(),
  $[*"ID"] must haveSize(1),
  $[*"origin"] must haveSize(1),
  $[*"destination"] must haveSize(1),
  $[*"emptySeats"] must haveSize(1),
  $[*"plane"] must haveSize(1),
  $[*"ID"][0] must equalTo(1),
  $[*"origin"][0] must equalTo("ORD"),
  $[*"destination"][0] must equalTo("SFO"),
  $[*"emptySeats"][0] must equalTo(200),
  $[*"plane"][0] must equalTo({
    "type": "Boeing 747",
    "totalSeats": 400
  })
]