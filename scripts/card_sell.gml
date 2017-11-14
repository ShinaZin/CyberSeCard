objDrawer.cash += cost;
inShop = true;
switch (vuln){
  case "t": objDrawer.vulnTech--; break;
  case "h": objDrawer.vulnHum--; break;
  case "n": objDrawer.vulnNat--; break;
}
  switch(type){
    //Блокирование
    case PROTECT_TYPE_Block:
      //global.statBlock--
      if( string_count(SERV_Avail,target)==1  ){
          objDrawer.blockAvail  -= value; 
          ds_list_delete_val(objDrawer.blockAvailList, value)
      }
      if( string_count(SERV_Integ,target)==1  ){
          objDrawer.blockIntegr -= value; 
          ds_list_delete_val(objDrawer.blockIntegrList, value)
      }
      if( string_count(SERV_Confd,target)==1  ){
          objDrawer.blockConf   -= value; 
          ds_list_delete_val(objDrawer.blockConfList, value)
      }
    
    break;
    //Избегание
    case PROTECT_TYPE_Avoid:
      //global.statAvoid--
      var pos = ds_list_find_index(objDrawer.avoidList, value);
      ds_list_delete(objDrawer.avoidList, pos)
    break;
    //Компенсирование
    case PROTECT_TYPE_Comp:
      //global.statComp--
      if( string_count(SERV_Avail,target)==1  )
          objDrawer.compAvail -=  value; 
      if( string_count(SERV_Integ,target)==1  )
          objDrawer.compIntegr -= value; 
      if( string_count(SERV_Confd,target)==1  )
          objDrawer.compConf -=   value;
    break;
  }
x = cStartX
y = cStartY
//image_index = sprCard;

