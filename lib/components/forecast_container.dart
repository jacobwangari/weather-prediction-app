import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:jacmwas_weather_app/core/api_client.dart';
import 'package:jacmwas_weather_app/models/timelines.dart';
import 'package:jacmwas_weather_app/utils/constants.dart';

class ForecastContainer extends StatelessWidget {
  const ForecastContainer(
      {Key? key, required this.timeline, required this.index})
      : super(key: key);

  final List<Timeline> timeline;
  final int index;

  @override
  Widget build(BuildContext context) {
    int weatherCode = timeline[1].intervals[index].values.weatherCode;
    String weatherCodeName = ApiClient.handleWeatherCode(weatherCode);
    String weatherCodeIcon = ApiClient.handleWeatherIcon(weatherCodeName);
    return Container(
      color: AppColors.blueContainerColor,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            DateFormat(DateFormat.ABBR_MONTH_WEEKDAY_DAY)
                .format(timeline[1].intervals[index].startTime.toLocal())
                .toString(),
            style: const TextStyle(fontSize: 16, color: AppColors.greyShade1),
          ),
          const SizedBox(height: 10),
          Image(
            image: AssetImage(weatherCodeIcon),
            width: 55,
            height: 60,
          ),
          const SizedBox(height: 30),
          Text(
            weatherCodeName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: AppColors.greyShade1,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${((timeline[1].intervals[index].values.temperature - 32) * 5 / 9).toStringAsFixed(0)}°C',
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.greyShade1,
            ),
          ),
        ],
      ),
    );
  }
}
