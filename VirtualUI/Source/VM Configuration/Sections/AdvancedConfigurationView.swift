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
    
    var preInstall: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Section() {
                VStack(alignment: .leading, spacing: 16) {
                    Toggle("Enable GDB Debug Stub", isOn: $hardware.gdbStub.enabled)

                    NumericPropertyControl(
                        value: $hardware.gdbStub.port,
                        range: VBGDBStub.gdbPortRange,
                        label: "Port",
                        formatter: NumberFormatter.numericPropertyControlDefault,
                        spacing: VMConfigurationView.labelSpacing
                    )
                    .disabled(!hardware.gdbStub.enabled)
                }
            }

            if preInstall {
                Divider()

                Toggle("Production Mode", isOn: $hardware.productionMode)
            }
        }
    }
}

#if DEBUG
struct AdvancedConfigurationView_Previews: PreviewProvider {
    static var previews: some View {
        _ConfigurationSectionPreview { AdvancedConfigurationView(hardware: $0.hardware, preInstall: true) }
    }
}
#endif
