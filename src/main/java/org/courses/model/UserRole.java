package org.courses.model;

public enum UserRole {
    ADMIN("ROLE_ADMIN"), USER("ROLE_USER");

    private String userRoleName;

    UserRole(String userRole) {
        this.userRoleName = userRole;
    }

    public String getUserRoleName() {
        return userRoleName;
    }
}
