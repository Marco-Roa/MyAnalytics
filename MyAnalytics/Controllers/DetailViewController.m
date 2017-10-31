//
//  DetailViewController.m
//  MyAnalytics
//
//  Created by Marco Antonio Roa De La Cruz on 10/30/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "DetailViewController.h"
@import Firebase;

@interface DetailViewController ()

@end

@implementation DetailViewController

NSString *text;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *itemImage = [[NSMutableArray alloc] initWithObjects: @"apple.jpg", @"banana.jpg", @"melon.jpg", @"pear.jpg", nil];
    NSMutableArray *itemDescription = [[NSMutableArray alloc] initWithObjects:
                                       @"Provienen de las montañas de Tian Shan; una zona límite entre China, Kazajistán y Kirguistán. Con las expediciones a América, la manzana arribó a la colonias de lo que actualmente es Estados Unidos y se extendió por todo el territorio. Se dice, tradicionalmente, que su origen estaría situado en la zona de Almá-Atá o Almatý, antigua capital de la exrepública soviética de Kazajistán y actual segunda ciudad más importante del estado kazajo independiente. De hecho, Almaty es la forma adjetivada del sustantivo \"manzana\" en kazajo y es popularmente traducida como \"Padre de las Manzanas\"",
                                       @"El fruto tarda entre 80 y 180 días en desarrollarse por completo. En condiciones ideales fructifican todas las flores femeninas, adoptando una apariencia dactiliforme que lleva a que se denomine mano a las hileras en las que se disponen. Puede haber entre 5 y 20 manos por espiga, aunque normalmente se trunca la misma parcialmente para evitar el desarrollo de frutos imperfectos y evitar que el capullo terminal insuma las energías de la planta. El punto de corte se fija normalmente en la \"falsa mano\", una en la que aparecen frutos enanos. En total puede producir unos 300 a 400 frutos por espiga, pesando más de 50 kg.\nEl fruto es una falsa baya epígina de 7 a 30 cm de largo y hasta 5 de diámetro, que forma un racimo compacto. Está cubierta por un pericarpo coriáceo verde en el ejemplar inmaduro y amarillo intenso, rojo o bandeado verde y blanco al madurar. Es de forma lineal o falcada, entre cilíndrica y marcadamente angulosa según la variedad. El extremo basal se estrecha abruptamente hacia un pedicelo de 1 a 2 cm. La pulpa es blanca a amarilla, rica en almidón y dulce; en los plátanos puede resultar algo astringente o gomosa por su contenido en látex, farinosa y seca. ",
                                       @"La forma del baya va desde esférica hasta elipsoidal. En los llamados melones plátano existen ondulaciones que los hacen parecer una calabaza.\nSu tamaño depende de la variedad y de las condiciones de cultivo. De este modo, hay melones pequeños que pesan alrededor de 400  g y otros muy grandes que pueden pesar 20 kg o más. El tallo es cilíndrico, de 1 a 3 m de altura, con una inflorescencia terminal en forma de espiga compuesta por flores bisexuales. El grano es una cariópside de alrededor de 4 mm de diámetro. Tiene inflorescencias en panojas y semillas de 3 mm, esféricas y oblongas, de color negro, rojizo y amarillento. Tiene un sistema radicular que puede llegar en terrenos permeables a 2 m de profundidad. Las flores tienen estambres y pistilos. En las variedades más usadas habitualmente, los pesos de los frutos fluctúan entre más de medio kilo y menos de cinco.\nEl color de la epidermis y de la pulpa es variable según el grupo. La epidermis puede ser blanca, gris, verdosa o amarilla y de textura lisa, rugosa o reticulada. La pulpa es aromática, con textura suave y diferentes colores: amarillo, verde, rosado y tonos intermedios. En el centro hay una cavidad que contiene muchas semillas recubiertas de una sustancia pegajosa.\nPosee un porcentaje elevado de agua (90 %), bajo contenido en calorías (34 cada 100 g) y de sodio (16 mg%) y casi 1 g de fibra, lo cual brinda saciedad.",
                                       @"Existen más de 30 variedades de peras, de diferentes colores, texturas y sabores. Según sus requerimientos de frío para madurar y su momento de consumo se clasifican en peras de verano (poco o ningún requerimiento de frío para madurar, conservación breve, se consumen en verano) y peras de invierno (considerable requerimiento de frío para madurar, mayor conservación, se consumen en invierno). Las principales variedades producidas a nivel mundial son 'Bartlett' (un cultivar de verano) y 'Beurré d'Anjou' (un cultivar de pera de invierno). Esos dos cultivares presentan además mutaciones de piel roja bien difundidas en el mercado (por ejemplo, 'Red Bartlett' y 'Red Anjou'). Otras variedades consumidas son 'Packham's Triumph' y su mutación roja (pera de invierno), 'Beurré Bosc' (pera de invierno), 'Clapp's Favorite' y su mutación 'Red Clapp's' (peras de verano), 'Doyenne du Comice' (pera de invierno), etc.", nil];
    
    self.imageView.image = [UIImage imageNamed:itemImage[self.iP.row]];
    self.textArea.text = itemDescription[self.iP.row];
    text = itemImage[self.iP.row];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender
{
    [FIRAnalytics logEventWithName:@"ItemBought"
                        parameters:@{
                                     @"name": @"DVC",
                                     @"full_text": @"Item bought"
                                     }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
