import SwiftUI

/// Examples of using a canvas view in an accessible way.
struct CanvasScreen: View {
    var body: some View {
        LinesOfCodeGraph(lines: [30, 12, 2, 34, 50])
    }
}

/// A graph that displays lines of code produced per week.
private struct LinesOfCodeGraph: View {
    var lines: [Int]

    var body: some View {
        ZStack(alignment: .topLeading) {
            Text("Lignes de Code")
                .foregroundColor(Color.white)
                .font(.title)
                .accessibilityAddTraits(.isHeader)

            // `Canvas` isn't accessible by default, and isn't visible to
            // VoiceOver.
            Canvas { context, size in
                let inset: CGFloat = 25
                let insetSize = CGSize(width: size.width, height: size.height - inset * 2)
                let width = insetSize.width / CGFloat(lines.count)
                let max = lines.max() ?? 0
                for index in lines.indices {
                    let xInset = width * CGFloat(index)
                    let height = (CGFloat(lines[index]) / CGFloat(max)) * insetSize.height
                    let yInset = insetSize.height - height
                    let path = Path(
                        roundedRect: CGRect(
                            x: xInset + 2.5,
                            y: yInset + inset,
                            width: width - 5,
                            height: height),
                        cornerRadius: 4)
                    context.fill(path, with: .color(Color.blue))

                    context.draw(
                        Text("\(lines[index]) lignes")
                            .foregroundColor(Color.white)
                            .font(.caption2),
                        at: CGPoint(
                            x: xInset + width / 2,
                            y: yInset + inset / 2))

                    context.draw(
                        Text("semaine \(index + 1)")
                            .foregroundColor(Color.white)
                            .font(.caption2),
                        at: CGPoint(
                            x: xInset + width / 2,
                            y: yInset + height + 1.5 * inset))
                }
            }
            .accessibilityChildren {
                    VStack {
                        Rectangle().accessibilityLabel(
                            lines
                                .enumerated()
                                .map { "\($0.element) lignes" }
                                .joined(separator: ", ")
                        )
                        
                        Rectangle().accessibilityValue(
                            lines
                                .indices
                                .map { "Semaine \($0 + 1)" }
                                .joined(separator: ", ")
                        )
                    }
                }
        
    
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color(white: 0.2))
        }
        .frame(height: 300)
    }
}

struct CanvasScreen_Previews: PreviewProvider {
    static var previews: some View {
        CanvasScreen()
    }
}
