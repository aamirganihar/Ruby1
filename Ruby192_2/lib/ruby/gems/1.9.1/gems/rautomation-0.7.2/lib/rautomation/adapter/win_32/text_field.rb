module RAutomation
  module Adapter
    module Win32
      class TextField < Control
        include WaitHelper
        include Locators

        # Default locators used for searching text fields.
        DEFAULT_LOCATORS = {:class => /edit/i}

        # @see RAutomation::TextField#set
        def set(text)
          raise "Cannot set value on a disabled text field" if disabled?

          wait_until do
            hwnd = Functions.control_hwnd(@window.hwnd, @locators)
            @window.activate
            @window.active? &&
                    focus &&
                    Functions.set_control_text(hwnd, text) &&
                    value == text
          end
        end

        # @see RAutomation::TextField#clear
        def clear
          raise "Cannot set value on a disabled text field" if disabled?
          set ""
        end

        # @see RAutomation::Window#send_keys
        def send_keys(*keys)
          @window.container.wait_until_present
          assert_enabled
          @window.activate
          focus
          @window.send_keys(keys)
        end
      end
    end
  end
end
