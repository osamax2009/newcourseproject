    void main() {
        Car car0 = new Car("BMW","REd",3434);


        car0.printCar() ;



    }



    class Car {

      String brand ;

      String Color ;

      int licence;


      Car(this.brand, this.Color, this.licence);

  void printCar(){
       print(this.brand);
       print(this.Color);
       print(this.licence) ;
     }


    }
