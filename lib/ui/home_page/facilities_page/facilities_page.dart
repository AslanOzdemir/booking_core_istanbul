import 'package:booking_core_istanbul/Models/facility.dart';
import 'package:booking_core_istanbul/constants/colors.dart';
import 'package:booking_core_istanbul/constants/text_sizes.dart';
import 'package:booking_core_istanbul/providers/provider_facilities_state.dart';
import 'package:booking_core_istanbul/ui/person_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'facilities_item.dart';

class FacilitiesPage extends StatelessWidget {
  const FacilitiesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
        Size.fromHeight(MediaQuery.of(context).size.height * 0.14),
        child: const PersonHeader(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Expanded(
          child: ListView(
            children: const [
              OurOffices(),
              FacilitiesList(),
            ],
          ),
        ),
      ),
    );
  }
}
class OurOffices extends StatelessWidget {
  const OurOffices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Our offices",
          style: TextStyle(
              fontSize: middleTextFontSize,
              fontWeight: FontWeight.bold,
              color: ColorApp.bigText),
        ),
        Consumer<FacilitiesPageState>(
            builder: (context, state, _) {
              return Text(
                "${state.facilities.length} Offices",
                style:
                TextStyle(fontSize: smallTextFontSize, color: ColorApp.bigText),
              );
            })
      ],
    );
  }
}

class FacilitiesList extends StatelessWidget {
  const FacilitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FacilitiesPageState>(context);
    var facilities = provider.facilities;
    if (provider.state == ListFacilitiesStates.initial) {
      provider.getFacilities();
      return Container();
    } else if (provider.state == ListFacilitiesStates.loading) {
      return Center(child: CircularProgressIndicator());
    } else if (provider.state == ListFacilitiesStates.failed) {
      return Center(child: Text("Failed"));
    } else {
      return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: facilities.length,
          itemBuilder: (buildContext, int index) {
            Facility facility = facilities[index];
            return FacilitiesItem(facility: facility);
          });
    }
  }
}






