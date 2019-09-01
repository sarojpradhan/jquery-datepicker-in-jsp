package datepicker;

import java.util.ArrayList;

public class ItemCollection {

	private ArrayList<String> organizationList;

	public ItemCollection() {
		this.organizationList = new ArrayList<String>();
	}

	public void addItemInList() {
		this.organizationList.add("--SELECT THE ORGANIZATION--");
		this.organizationList.add("CGI");
		this.organizationList.add("HUS");
		this.organizationList.add("PSSHP");
		this.organizationList.add("VSSP");
		this.organizationList.add("PSHP");

	}

	public ArrayList<String> getItemFromTheList() {
		return this.organizationList;

	}

}
