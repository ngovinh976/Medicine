/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nguyen Hoang Nha - CE170092
 */
public class ProductModel {
    private  int ProID;
    private  String ProName;
    private  String Description;
    private  int Price;
    private  int Quantity;
    private  String Color;
    private  String Image;
    private  int CateID;
    private  int BrandID;
    private int Size;
    private int ProStatus;

    

    public ProductModel() {
    }

    public ProductModel(int ProID, String ProName, String Description, int Price, int Quantity, int Size, String Color, String Image, int CateID, int BrandID, int ProStatus) {
        this.ProID = ProID;
        this.ProName = ProName;
        this.Description = Description;
        this.Price = Price;
        this.Quantity = Quantity;
        this.Size = Size;
        this.Color = Color;
        this.Image = Image;
        this.CateID = CateID;
        this.BrandID = BrandID;
        this.ProStatus = ProStatus;
    }


    public int getSize() {
        return Size;
    }

    public void setSize(int Size) {
        this.Size = Size;
    }

    public int getProStatus() {
        return ProStatus;
    }

    public void setProStatus(int ProStatus) {
        this.ProStatus = ProStatus;
    }
    
    

    public int getProID() {
        return ProID;
    }

    public void setProID(int ProID) {
        this.ProID = ProID;
    }
//    public int getSize(){
//        return this.Size;
//    }

    public String getProName() {
        return ProName;
    }

    public void setProName(String ProName) {
        this.ProName = ProName;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public int getCateID() {
        return CateID;
    }

    public void setCateID(int CateID) {
        this.CateID = CateID;
    }

    public int getBrandID() {
        return BrandID;
    }

    public void setBrandID(int BrandID) {
        this.BrandID = BrandID;
    }
    public void increaseQuantity(int quan){
         this.Quantity = quan;
    }
    
}
