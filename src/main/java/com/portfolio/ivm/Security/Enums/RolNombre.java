package com.portfolio.ivm.Security.Enums;


public enum RolNombre {
    ROLE_ADMIN, ROLE_USER;
    
    
  public String getAuthority() {
    return name();
  }
}
