import re
from unittest import result


dac_adc_model_text = """.model adc_buff adc_bridge(in_low = 0.3 in_high = 3.5)
.model dac_buff dac_bridge(out_low = 0.7 out_high = 3.5 out_undef = 2.2
+input_load = 5.0e-12 t_rise = 50e-9
+t_fall = 20e-9)"""

def get_model_definition(tab):
    for i in range(len(tab)):
        if ".subckt" in tab[i].lower():

            k = tab[i].split(" ")
            input_tab = []
            output_tab = []
            for u in range(len(k)):

                if "in" in k[u]:
                    input_tab.append(k[u])
                elif "out" in k[u]:
                    output_tab.append(k[u])



            return k[1],input_tab,output_tab,i
    return 0 

def verificate_pins(inputs,outputs,text):
    result = True 
    for i in inputs :
        if i not in text:
            result = False 
            return result 

    for i in outputs:
        if i not in text:
            result = False 
            return result 

    return  result


def modify_components(text,main_separator):
    a = text.split(main_separator)

    for i in a:
        lines = i.split("\n")

        p = get_model_definition(lines)
        if(p):
        
            # index is where to puts the code of our dac an adc 
            model_name,inputs,outputs,index = p

            if model_name and inputs and outputs:

                lines.insert(index+1,"\n"+dac_adc_model_text+"\n")


                for pl in range(len(inputs)):
                    lines.insert(index+pl+2,"adc_bridge{} [{}] [adc_inter{}] adc_buff".format(pl,inputs[pl],pl))

                for pl in range(len(outputs)):
                    lines.insert(index+len(inputs)+2,"dac_bridge{} [dac_inter{}] [{}] dac_buff".format(pl,pl,outputs[pl]))

                compteur = 0
                for pl in lines:
                    if ".subckt" not in pl.lower() and verificate_pins(inputs,outputs,pl):
                        print(pl,compteur) 
                        g = pl 

                        for ml in range(len(inputs)):
                            g = g.replace(inputs[ml],"adc_inter{}".format(ml))

                        for ml in range(len(outputs)):
                            g = g.replace(outputs[ml],"dac_inter{}".format(ml))
                        
                        #print(g)

                        lines[compteur]=g

                    compteur += 1

                  
                        




            return "\n".join(lines)
            



kl = modify_components("""*SRC=74ALS00A;74ALS00A;TTL;74ALSxx;2 input NAND gate
*SYM=NAND2
*74ALS00A QUADRUPLE 2-INPUT POSITIVE-NAND GATES
***
.subckt 74ALS00A in1 in2 out
*FAMILY TTLin TTLin TTLout
*pinout M14A 1 2 3;4 5 6;9 10 8;12 13 11:VCC=14 GND=7
*pinout M14D 1 2 3;4 5 6;9 10 8;12 13 11:VCC=14 GND=7
*pinout N14A 1 2 3;4 5 6;9 10 8;12 13 11:VCC=14 GND=7
anand [in1 in2] out ls_nand 
.model ls_nand d_nand(rise_delay=7n fall_delay=5n)
.ends
*
*
""",main_separator="**********************")

f = open("kl.lib","w")
text = f.write(kl)
f.close()