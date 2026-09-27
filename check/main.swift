let ncell = """
Congratulation! You got FREE 100MB in Ncell app!
Open Ncell App and claim FREE 100MB daily!
Get the offer: https://ncellapp.ncell.com.np/P6c4Mg
"""
precondition(isPromo(ncell), "Ncell promo not caught")
precondition(!isPromo("Your Ncell OTP is 482913. Do not share it."), "OTP wrongly caught")
precondition(!isPromo("Recharge of Rs 100 successful. Balance: Rs 152.40"), "recharge wrongly caught")
print("ok")
