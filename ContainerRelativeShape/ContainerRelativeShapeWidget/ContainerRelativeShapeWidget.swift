//
//  ContainerRelativeShapeWidget.swift
//  ContainerRelativeShapeWidget
//
//  Created by Amol Kumar on 2021-04-28.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct ContainerRelativeShapeWidgetEntryView : View {

    var body: some View {
        WidgetView()
    }
}

@main
struct ContainerRelativeShapeWidget: Widget {
    let kind: String = "ContainerRelativeShapeWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            ContainerRelativeShapeWidgetEntryView()
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct ContainerRelativeShapeWidget_Previews: PreviewProvider {
    static var previews: some View {
        ContainerRelativeShapeWidgetEntryView()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
