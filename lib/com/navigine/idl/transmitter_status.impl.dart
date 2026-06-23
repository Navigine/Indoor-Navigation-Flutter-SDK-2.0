part of 'transmitter_status.dart';

// TransmitterStatus "private" section, not exported.

extension TransmitterStatusImpl on TransmitterStatus  {
    static int toInt(TransmitterStatus e) => e.index;

    static TransmitterStatus fromInt(int val)  {
        if (val < 0 || val >= TransmitterStatus.values.length) {
          throw StateError('Invalid numeric value $val for TransmitterStatus enum.');
        }
        return TransmitterStatus.values[val];
    }

    static TransmitterStatus? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TransmitterStatus? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of TransmitterStatus "private" section.
