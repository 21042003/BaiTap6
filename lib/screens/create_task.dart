import 'package:flutter/material.dart';
import 'package:untitled1/widgets/calendar_task.dart';
import 'package:untitled1/widgets/create_new_task.dart';
import '../constants/app_colors.dart';
import '../widgets/priority_selector.dart';
import '../widgets/time_picker.dart';
import '../widgets/toggle_switch.dart';

//tạo một màn hinh kế thừa từ StatelessWidget
class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        //khoảng cách xung quanh nội dung chính
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // khoảng cách 20px trái và phải
        child: Column(
          //Hiển thị các thành phần bên trong theo chiều dọc
          crossAxisAlignment: CrossAxisAlignment.start, //căn lề về bên trái
          children: [
            //==========Hien thi create new ==================
            const SizedBox(height: 20),
            const createNew(),
            const SizedBox(height: 40),
            //==========Hien thi chuyen lich =================
            const CalendarTask(),
            const SizedBox(height: 50),
            //==========Hien thi ngay thang ==================

            //style: textStyle Định nghĩa kiểu chữ
            const Text('Schedule',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            //mục điền tên
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),

            //khoảng cách các phần tử
            const SizedBox(height: 15),
            //Mục điền thông tin
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Description',
                border:OutlineInputBorder() ,
              ),
            ),
            const SizedBox(height: 20),

            //phần start và end đặt theo chiều ngang
            const Row(
              children: [
                Expanded(
                  //Start time
                  child: TimePickerWidget(
                      label: 'Start Time', initialTime: '06:00 PM'),
                ),

                SizedBox(width: 10), //dem khoang cach

                //end time
                Expanded(
                  child: TimePickerWidget(
                      label: 'End Time', initialTime: '09:00 PM'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // phần "===========Priority================="
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Priority', //hiển thị tiêu đề
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                PrioritySelector(), //mức độ ưu tiên
              ],
            ),

            //Hiển thị phần ToggleSwitch
            const SizedBox(height: 20),
            const ToggleSwitch(), //nút chuyển trạng thái
            const SizedBox(height: 20),

            //===========nút bấm với hiệu ứng nổi=================
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                //định dạng nút
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: AppColors.hexDE83B0, //màu nền
                //bo góc nút
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // ====================nut create==============
              child: const Text(
                'Create Task',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
