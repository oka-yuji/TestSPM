import SwiftUI
@available(iOS 15.0, *)
public struct balanceToggle: View {
    @State var leftColor: Color
    @State var rightColor: Color
    @State var leftText: String
    @State var rightText: String
    @State var leftTextColor: Color
    @State var rightTextColor: Color
    @State var isOn = false
    public var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color.clear)
                .frame(width: 115, height: 30)
                .background(Color.gray.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color.clear)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(isOn ? rightColor : leftColor)
                        .frame(width: 55, height: 25)
                        .offset(x: isOn ? 28 : -28)
                        .animation(.easeInOut(duration: 0.2), value: isOn)
                )
                .overlay(
                    Text(isOn ? rightText : leftText)
                        .font(.body)
                        .bold()
                        .foregroundColor(isOn ? rightTextColor : leftTextColor)
                        .offset(x: isOn ? 30 : -30)
                    
                )
        }
        .frame(width: 115, height: 30)
        .onTapGesture {
            isOn.toggle()
        }
    }
}
