if(objDrawer.cash >= cost){
  move_snap(64,64)
  objDrawer.cash -= cost;
  global.statCashWasted += cost
  inShop = false;
  switch (vuln){
    case THREAT_Technic : objDrawer.vulnTech++; break;
    case THREAT_Human: objDrawer.vulnHum++; break;
    case THREAT_Nature: objDrawer.vulnNat++; break;
  }
  switch(type){
    //Блокирование
    
    case PROTECT_TYPE_Block:
      global.statBlock++
      if( string_count(SERV_Avail,target)==1  ){
          objDrawer.blockAvail  += value; 
          ds_list_add(objDrawer.blockAvailList,value);
      }
      if( string_count(SERV_Integ,target)==1  ){
          objDrawer.blockIntegr += value; 
          ds_list_add(objDrawer.blockIntegrList,value);
      }
      if( string_count(SERV_Confd,target)==1  ){
          objDrawer.blockConf   += value;
          ds_list_add(objDrawer.blockConfList,value);
      }
    break;
    
    //Избегание
    case PROTECT_TYPE_Avoid:
      global.statAvoid++
      ds_list_add(objDrawer.avoidList, value);
    break;
    
    //Компенсирование
    case PROTECT_TYPE_Comp:
      global.statComp++
      if( string_count(SERV_Avail,target)==1  )
          objDrawer.compAvail +=  value; 
      if( string_count(SERV_Integ,target)==1  )
          objDrawer.compIntegr += value; 
      if( string_count(SERV_Confd,target)==1  )
          objDrawer.compConf +=   value;
    break;
  }
  
} else {
  x = cStartX
  y = cStartY
}
