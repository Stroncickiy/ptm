package org.mechatronics.enums;

public enum ParticipantRole {
	MENTOR, MENTEE, CURATOR, LECTOR, MANAGER;

	public String getTitle() {
		return name();
	}
}
