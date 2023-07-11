
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
Future<Uint8List> makePdf() async {
  final pdf = Document();
  // final imageLogo = MemoryImage((await rootBundle.load('assets/technical_logo.png')).buffer.asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
          decoration:
              BoxDecoration(border: Border.all(color:  PdfColors.black, width: 1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "# INVOCE",
                style: TextStyle(fontSize: 22, color: PdfColors.blue,),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _column1Text(text1: "Invoice No. :", text2: "##22"),
                      _column1Text(
                          text1: "Invoice Date : ", text2: "06 Jun, 2023"),
                      _column1Text(
                          text1: "Barber Name :", text2: "test seller"),
                      _column1Text(
                          text1: "Barber Email :", text2: "kumar@gmail.com"),
                      _column1Text(
                          text1: "Barber Phone :", text2: "7004499643"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Customer Details",
                          style: TextStyle(fontSize: 18, color:  PdfColors.black,)),
                      _column2Text(text1: "Name :", text2: 'New User'),
                      _column2Text(
                          text1: "Email :", text2: 'testuser@yopmail.com'),
                      _column2Text(text1: "Phone No. :", text2: '7004499643'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Table(
                border: TableBorder.all(color:  PdfColors.black, width: 0.5),
                children: [
                  TableRow(
                    children: [
                      paddedText('Service Name'),
                      paddedText('Service Catgegory'),
                      paddedText('Service Duration'),
                      paddedText('Rate'),
                      paddedText('Offer'),
                    ],
                  ),
                  TableRow(
                    children: [
                      paddedText('Crew Cut.'),
                      paddedText('Children'),
                      paddedText('02 hr 15 mins'),
                      paddedText('\$560'),
                      paddedText('50%'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color:  PdfColors.black,),
               SizedBox(height: 10),
              customText(
                  text:
                      "*Greetings! Dear customer, the services encompass the licence and provision of the “Company” that allows you to leverage professional grooming and hairstyling. Please go through the following terms and conditions of services carefully before availing of them."),
              customDivider(),
              customText(
                  text:
                      "- The Company is only for non-commercial and personal usage unless otherwise concurred upon in accordance with the separate agreement’s terms and conditions."),
              SizedBox(height: 10),
              customText(
                  text:
                      "- Please note that the Company intends to provide service within the territory where it is based. If customers agree to avail of any service from other legal jurisdictions, they will be adjudged to have agreed to the terms and conditions applicable to that jurisdiction."),
              SizedBox(height: 10),
              customText(
                  text:
                      "- Any services accepted by the customers are deemed to be agreed upon in accordance with the service offered by the professionals over the Company."),
              SizedBox(height: 10),
              customText(
                  text:
                      "- Customers may be required to furnish their identification proof to avail of the services they have accepted from the Company or any authorised platform of the Company for certain instances. In case of failure to provide the required identity proof may lead to denial of the service."),
            
              customDivider(),
               SizedBox(height: 10),
              Table(
                border: TableBorder(
                    top: BorderSide(
                        width: 1,
                        color:  PdfColors.black,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        width: 1,
                        color:  PdfColors.black,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        width: 1,
                         color:  PdfColors.black,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        width: 1,
                        color: PdfColors.black,
                        style: BorderStyle.solid),
                    verticalInside: BorderSide(
                        width: 1,
                        color:  PdfColors.black,
                        style: BorderStyle.solid)),
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Groomely Address",
                          style: TextStyle(color: PdfColors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "Support",
                          // style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '3962 Circle Lake Drive Palm Beach FL 33417 USA',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                            '+61-561 856 0151 \ntino.moyongo@gmail.com(Email)',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ],
              ),
               SizedBox(height: 10),
              customDivider()
            ],
          ),
        );
      },
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );


  
  Widget _column1Text({required text1, required String text2}) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text("$text1 $text2",
          style: TextStyle(
              fontSize: 10,  color: PdfColors.black)),
    );
  }

  Widget _column2Text({required text1, required String text2}) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text("$text1 $text2",
          style: TextStyle(fontSize: 10, color: PdfColors.black)),
    );
  }

  Widget customText({required String text}) {
    return Text(text,
        style: TextStyle(fontSize: 10));
  }

  Widget customDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 2,
      color: PdfColors.black,
    );
  }

  Widget paddedText(
    final String text, {
    final TextAlign align = TextAlign.center,
  }) =>
      Padding(
        padding: EdgeInsets.all(1),
        child: Text(
          text,
          textAlign: align,
          style: TextStyle(fontSize: 10),
        ),
      );



    /*  
    
    Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Attention to: ${invoice.customer}"),
                    Text(invoice.address),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
               
              ],
            ),
            Container(height: 50),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    Padding(
                      child: Text(
                        'INVOICE FOR PAYMENT',
                        style: Theme.of(context).header4,
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                  ],
                ),
                ...invoice.items.map(
                  (e) => TableRow(
                    children: [
                      Expanded(
                        child: PaddedText(e.description),
                        flex: 2,
                      ),
                      Expanded(
                        child: PaddedText("\$${e.cost}"),
                        flex: 1,
                      )
                    ],
                  ),
                ),
                TableRow(
                  children: [
                    PaddedText('TAX', align: TextAlign.right),
                    PaddedText('\$${(invoice.totalCost() * 0.1).toStringAsFixed(2)}'),
                  ],
                ),
                TableRow(
                  children: [PaddedText('TOTAL', align: TextAlign.right), PaddedText('\$${(invoice.totalCost() * 1.1).toStringAsFixed(2)}')],
                )
              ],
            ),
            Padding(
              child: Text(
                "THANK YOU FOR YOUR CUSTOM!",
                style: Theme.of(context).header2,
              ),
              padding: EdgeInsets.all(20),
            ),
            Text("Please forward the below slip to your accounts payable department."),
            Divider(
              height: 1,
              borderStyle: BorderStyle.dashed,
            ),
            Container(height: 50),
            Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                TableRow(
                  children: [
                    PaddedText('Account Number'),
                    PaddedText(
                      '1234 1234',
                    )
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText(
                      'Account Name',
                    ),
                    PaddedText(
                      'ADAM FAMILY TRUST',
                    )
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText(
                      'Total Amount to be Paid',
                    ),
                    PaddedText('\$${(invoice.totalCost() * 1.1).toStringAsFixed(2)}')
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Please ensure all cheques are payable to the ADAM FAMILY TRUST.',
                style: Theme.of(context).header3.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        );
    
    
    */