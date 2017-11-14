///string_to_RUS(t/n/h, c/i/a: string)
res = argument0;
res = string_replace(res,THREAT_Nature, "С")
res = string_replace(res,THREAT_Human,  "Ч")
res = string_replace(res,THREAT_Technic,"Т")

res = string_replace(res,SERV_Avail, "Д")
res = string_replace(res,SERV_Integ, "Ц")
res = string_replace(res,SERV_Confd, "К")
return res
