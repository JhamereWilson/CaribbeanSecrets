import 'dart:convert';

class PromoCodes {
   Map<String, String> _codes = {
    "Jasmine": "JAS11",
    "Ananda": "ANA11",
    "Nemy": "NEMY11",
    "Dana": "DANA11",
    "Monet": "MONET11",
    "Shawn": "SHAWN11",
    "Rose": "ROSE11",
    "Jordan": "JOR11",
    "Tatiana": "TATI11",
    "Tionna": "TIO11",
    "Adrian": "ADR11",
    "Allison": "ALLI11",
    "Tyshon": "TY11",
  };

  Map<String, String> get codes {
    return {..._codes};
  }
}

// //TODO: 1. Create a map of promo codes and related data
// 2. Check if ist contians Code
// 3. If not, return error message to user
// 4. If so, acknowledge the user -> "Tell X we said hey!" and calculate new total
