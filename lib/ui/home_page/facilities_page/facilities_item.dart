import 'package:flutter/cupertino.dart';
import '../../../Models/facility.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_sizes.dart';

class FacilitiesItem extends StatelessWidget {
  const FacilitiesItem({
    super.key,
    required this.facility,
  });

  final Facility facility;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              color: ColorApp.whiteText,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      facility.photos[0],
                      fit: BoxFit.cover,
                    ),
                  )),
              Text(
                facility.name,
                style: TextStyle(
                    color: ColorApp.bigText,
                    fontSize: officeName,
                    fontWeight: FontWeight.w800),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Capacity:${facility.capacity}",
                    style: TextStyle(
                      color: ColorApp.bigText,
                      fontSize: officeType,
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          color: ColorApp.available,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(child: Text("Available")))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        )
      ],
    );
  }
}
