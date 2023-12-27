//
//  DatePickerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Medhat Mebed on 12/27/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate = Date()
    let startDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDate = Date()
    
    var body: some View {
        DatePicker("select a date", selection: $selectedDate, in: startDate...endDate)
            .foregroundColor(.red)
           // .datePickerStyle(WheelDatePickerStyle())
            .datePickerStyle(CompactDatePickerStyle())
    }
}

#Preview {
    DatePickerBootcamp()
}
