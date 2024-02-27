import 'package:flutter/material.dart';

class MissionList extends StatelessWidget {
  final int itemCount;

  const MissionList({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission List'),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Mission ${index + 1}'),
            subtitle: Text(getMissionDescription(index + 1)),
          );
        },
      ),
    );
  }

  String getMissionDescription(int missionNumber) {
    switch (missionNumber) {
      case 1:
        return 'Complete mission 1: Switch off the lights when leaving a room.';
      case 2:
        return 'Complete mission 2: Reduce water usage by taking shorter showers.';
      case 3:
        return 'Complete mission 3: Recycle paper, plastic, glass, and metals.';
      case 4:
        return 'Complete mission 4: Use reusable bags instead of single-use plastics.';
      case 5:
        return 'Complete mission 5: Plant a tree or support tree-planting initiatives.';
      case 6:
        return 'Complete mission 6: Walk, bike, or use public transportation instead of driving.';
      case 7:
        return 'Complete mission 7: Plant a tree in your community to improve air quality.';
      case 8:
        return 'Complete mission 8: Compost food waste to create nutrient-rich soil for plants.';
      case 9:
        return 'Complete mission 9: Reduce meat consumption and eat more plant-based meals.';
      case 10:
        return 'Complete mission 10: Use energy-efficient appliances to save electricity.';
      case 11:
        return 'Complete mission 11: Purchase products with minimal packaging to reduce waste.';
      case 12:
        return 'Complete mission 12: Turn off the tap while brushing your teeth to conserve water.';
      case 13:
        return 'Complete mission 13: Bring your own reusable water bottle to avoid single-use plastics.';
      case 14:
        return 'Complete mission 14: Use a programmable thermostat to regulate heating and cooling.';
      case 15:
        return 'Complete mission 15: Participate in local clean-up events to keep your community clean.';
      case 16:
        return 'Complete mission 16: Use eco-friendly cleaning products to minimize chemical pollution.';
      case 17:
        return 'Complete mission 17: Hang clothes to dry instead of using a dryer to save energy.';
      case 18:
        return 'Complete mission 18: Shop locally to support small businesses and reduce emissions from transportation.';
      case 19:
        return 'Complete mission 19: Use public water fountains or refill stations instead of buying bottled water.';
      case 20:
        return 'Complete mission 20: Opt for digital subscriptions instead of paper magazines and newspapers.';
      case 21:
        return 'Complete mission 21: Repair or repurpose items instead of throwing them away.';
      case 22:
        return 'Complete mission 22: Turn off the engine when idling for more than a minute to save fuel.';
      case 23:
        return 'Complete mission 23: Avoid fast fashion and invest in quality clothing that lasts longer.';
      case 24:
        return 'Complete mission 24: Use rechargeable batteries instead of single-use batteries.';
      case 25:
        return 'Complete mission 25: Support sustainable agriculture by buying organic and locally grown produce.';
      case 26:
        return 'Complete mission 26: Reduce junk mail by unsubscribing from unnecessary mailing lists.';
      case 27:
        return 'Complete mission 27: Share rides or carpool to reduce the number of vehicles on the road.';
      case 28:
        return 'Complete mission 28: Use a reusable coffee cup instead of disposable cups at coffee shops.';
      case 29:
        return 'Complete mission 29: Conserve paper by using electronic documents and digital signatures.';
      case 30:
        return 'Complete mission 30: Opt for energy-efficient LED light bulbs instead of incandescent bulbs.';
      case 31:
        return 'Complete mission 31: Choose products made from recycled materials to support the recycling industry.';
      case 32:
        return 'Complete mission 32: Take shorter showers to conserve water and reduce energy usage.';
      case 33:
        return 'Complete mission 33: Avoid using disposable plates, cups, and utensils for meals.';
      case 34:
        return 'Complete mission 34: Use public transportation, carpooling, or biking instead of driving alone.';
      case 35:
        return 'Complete mission 35: Purchase carbon offsets to mitigate your carbon footprint from travel.';
      case 36:
        return 'Complete mission 36: Donate or sell items you no longer need instead of throwing them away.';
      case 37:
        return 'Complete mission 37: Choose products with minimal or no packaging to reduce waste.';
      case 38:
        return 'Complete mission 38: Use a refillable water bottle instead of buying bottled water.';
      case 39:
        return 'Complete mission 39: Compost food scraps to reduce methane emissions from landfills.';
      case 40:
        return 'Complete mission 40: Support companies and brands that prioritize sustainability.';
      case 41:
        return 'Complete mission 41: Use public recycling bins for paper, plastic, glass, and metal waste.';
      case 42:
        return 'Complete mission 42: Reduce food waste by planning meals and storing leftovers properly.';
      case 43:
        return 'Complete mission 43: Turn off the tap while washing dishes to save water.';
      case 44:
        return 'Complete mission 44: Choose energy-efficient appliances with the ENERGY STAR label.';
      case 45:
        return 'Complete mission 45: Use reusable shopping bags instead of single-use plastic bags.';
      case 46:
        return 'Complete mission 46: Participate in tree-planting events to restore natural habitats.';
      case 47:
        return 'Complete mission 47: Collect rainwater for outdoor watering to conserve water resources.';
      case 48:
        return 'Complete mission 48: Reduce reliance on single-use items by opting for reusable alternatives.';
      case 49:
        return 'Complete mission 49: Minimize car idling to reduce emissions and save fuel.';
      case 50:
        return 'Complete mission 50: Buy in bulk to reduce packaging waste and save money.';
      case 51:
        return 'Complete mission 51: Use eco-friendly transportation options such as walking or cycling.';
      case 52:
        return 'Complete mission 52: Support sustainable fisheries by choosing seafood from certified sources.';
      case 53:
        return 'Complete mission 53: Use cloth napkins instead of disposable paper napkins.';
      case 54:
        return 'Complete mission 54: Participate in community clean-up efforts to maintain local environments.';
      case 55:
        return 'Complete mission 55: Use public transportation or carpool for daily commutes.';
      case 56:
        return 'Complete mission 56: Opt for digital receipts instead of paper receipts when possible.';
      case 57:
        return 'Complete mission 57: Install low-flow showerheads and faucets to conserve water.';
      case 58:
        return 'Complete mission 58: Bring your own container for takeout food to reduce single-use packaging.';
      case 59:
        return 'Complete mission 59: Invest in energy-efficient windows to improve insulation and reduce heating costs.';
      case 60:
        return 'Complete mission 60: Support environmental advocacy groups by donating or volunteering.';
      case 61:
        return 'Complete mission 61: Choose non-toxic household cleaning products to minimize chemical exposure.';
      case 62:
        return 'Complete mission 62: Use biodegradable or compostable alternatives to plastics whenever possible.';
      case 63:
        return 'Complete mission 63: Invest in renewable energy sources like solar panels or wind turbines.';
      case 64:
        return 'Complete mission 64: Dispose of hazardous waste properly at designated collection sites.';
      case 65:
        return 'Complete mission 65: Choose products with minimal or recyclable packaging to reduce waste.';
      case 66:
        return 'Complete mission 66: Host clothing swaps or participate in second-hand shopping to reduce textile waste.';
      case 67:
        return 'Complete mission 67: Use a reusable straw instead of disposable plastic straws.';
      case 68:
        return 'Complete mission 68: Support local farmers markets to reduce emissions from long-distance food transportation.';
      case 69:
        return 'Complete mission 69: Participate in meatless Mondays or reduce meat consumption for environmental benefits.';
      case 70:
        return 'Complete mission 70: Turn off computers, TVs, and other electronics when not in use to save energy.';
      case 71:
        return 'Complete mission 71: Use natural light whenever possible to reduce reliance on artificial lighting.';
      case 72:
        return 'Complete mission 72: Practice minimalism by decluttering and avoiding unnecessary purchases.';
      case 73:
        return 'Complete mission 73: Install a smart thermostat to optimize heating and cooling based on usage patterns.';
      case 74:
        return 'Complete mission 74: Choose organic or pesticide-free produce to reduce environmental impact.';
      case 75:
        return 'Complete mission 75: Use eco-friendly laundry detergents and avoid overuse of laundry products.';
      case 76:
        return 'Complete mission 76: Create a compost bin for food scraps and yard waste to reduce landfill waste.';
      case 77:
        return 'Complete mission 77: Conserve energy by setting computers and monitors to sleep mode when not in use.';
      case 78:
        return 'Complete mission 78: Reduce water waste by fixing leaks and installing water-saving devices.';
      case 79:
        return 'Complete mission 79: Use public transportation, carpooling, or biking instead of driving alone.';
      case 80:
        return 'Complete mission 80: Support renewable energy initiatives through advocacy and policy support.';
      case 81:
        return 'Complete mission 81: Choose eco-friendly personal care products with natural and sustainable ingredients.';
      case 82:
        return 'Complete mission 82: Turn off sprinklers and water lawns during cooler hours to minimize evaporation.';
      case 83:
        return 'Complete mission 83: Support legislation and policies that promote environmental protection and conservation.';
      case 84:
        return 'Complete mission 84: Opt for energy-efficient appliances and electronics with the ENERGY STAR label.';
      case 85:
        return 'Complete mission 85: Choose products with minimal or no packaging to reduce waste generation.';
      case 86:
        return 'Complete mission 86: Use eco-friendly alternatives to disposable products, such as cloth diapers.';
      case 87:
        return 'Complete mission 87: Reduce paper waste by opting for digital documents and electronic communications.';
      case 88:
        return 'Complete mission 88: Conserve water by using a broom instead of a hose to clean driveways and sidewalks.';
      case 89:
        return 'Complete mission 89: Choose sustainably sourced seafood to support healthy oceans and marine ecosystems.';
      case 90:
        return 'Complete mission 90: Use public transportation, carpooling, or biking for daily commuting and errands.';
      case 91:
        return 'Complete mission 91: Support initiatives that protect and preserve natural habitats and wildlife.';
      case 92:
        return 'Complete mission 92: Choose eco-friendly options for home renovations and building materials.';
      case 93:
        return 'Complete mission 93: Turn off irrigation systems during rainy periods to conserve water resources.';
      case 94:
        return 'Complete mission 94: Participate in community gardening projects to promote local food production.';
      case 95:
        return 'Complete mission 95: Opt for paperless billing and electronic statements to reduce paper usage.';
      case 96:
        return 'Complete mission 96: Choose eco-friendly transportation options such as walking, biking, or using public transit.';
      case 97:
        return 'Complete mission 97: Support renewable energy projects and investments in clean energy technologies.';
      case 98:
        return 'Complete mission 98: Use a reusable lunch bag or container instead of disposable bags or packaging.';
      case 99:
        return 'Complete mission 99: Plant native trees and plants to support local biodiversity and ecosystem health.';
      case 100:
        return 'Complete mission 100: Educate others about environmental issues and inspire sustainable actions in your community.';
      default:
        return 'Unknown mission';
    }
  }
}
