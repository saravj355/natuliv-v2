package model;

public class Supplier {

    private int id;
    private String name;
    private String address;
    private String contactNumber;
    private String websiteUrl;
    private String logoPath;

    public Supplier(int id, String name, String address, String contactNumber, String websiteUrl, String logoPath) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.contactNumber = contactNumber;
        this.websiteUrl = websiteUrl;
        this.logoPath = logoPath;
    }

    public Supplier() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getWebsiteUrl() {
        return websiteUrl;
    }

    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl = websiteUrl;
    }

    public String getLogoPath() {
        return logoPath;
    }

    public void setLogoPath(String logoPath) {
        this.logoPath = logoPath;
    }

}
