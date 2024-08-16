//
//  AdvancedConfigurationView.swift
//  VirtualUI
//
//  Created by Nick Botticelli on 8/02/24.
//

import SwiftUI
import VirtualCore

struct AdvancedConfigurationView: View {
    @Binding var hardware: VBMacDevice

    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Section() {
                VStack(alignment: .leading, spacing: 16) {
//                    Toggle("Enable GDB Debug Stub", isOn: $hardware.gdbStub.enabled)

//                    NumericPropertyControl(
//                        value: $hardware.gdbStub.port,
//                        range: VBGdbStub.gdbPortRange,
//                        label: "Port",
//                        formatter: NumberFormatter.numericPropertyControlDefault,
//                        spacing: VMConfigurationView.labelSpacing
//                    )
//                    .disabled(!hardware.gdbStub.enabled)
                }
            }

            Divider()

//            Section() {
//                VStack(alignment: .leading, spacing: 16) {
//                    Picker("Development", selection: kind) {
//                        ForEach(VBPointingDevice.Kind.allCases) { kind in
//                            Text(kind.name)
//                                .tag(kind)
//                        }
//                    }
//                }
//            }

            Toggle("Production Mode", isOn: $hardware.productionMode)
        }
    }

//    private var kind: Binding<VBMultiTouchDevice.Kind?> {
//        .init {
//            hardware.multiTouchDevice?.kind
//        } set: { newValue in
//            if let newValue {
//                if hardware.multiTouchDevice == nil {
//                    hardware.multiTouchDevice = .default
//                }
//                hardware.multiTouchDevice?.kind = newValue
//            } else {
//                hardware.multiTouchDevice = nil
//            }
//        }
//    }
}

#if DEBUG
struct AdvancedConfigurationView_Previews: PreviewProvider {
    static var previews: some View {
        _ConfigurationSectionPreview { AdvancedConfigurationView(hardware: $0.hardware) }
    }
}
#endif
