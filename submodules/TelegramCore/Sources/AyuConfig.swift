import Foundation

public final class AyuConfig {
    private static let defaults = UserDefaults.standard

    // Главный рубильник Режима призрака (по умолчанию включен для теста)
    public static var isGhostModeEnabled: Bool {
        get { defaults.object(forKey: "ayu_ghost_mode") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_ghost_mode") }
    }

    // Не отправлять галочки о прочтении сообщений
    public static var hideReadReceipts: Bool {
        get { defaults.object(forKey: "ayu_hide_read") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_hide_read") }
    }

    // Скрывать статус «печатает...» / «записывает голосовое»
    public static var hideTyping: Bool {
        get { defaults.object(forKey: "ayu_hide_typing") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_hide_typing") }
    }

    // Всегда оставаться «не в сети» (Оффлайн)
    public static var alwaysOffline: Bool {
        get { defaults.object(forKey: "ayu_always_offline") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_always_offline") }
    }
    
    // Сохранять удаленные сообщения
    public static var saveDeletedMessages: Bool {
        get { defaults.object(forKey: "ayu_save_deleted") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_save_deleted") }
    }

    // Сохранять историю редактирования сообщений
    public static var saveEditedMessages: Bool {
        get { defaults.object(forKey: "ayu_save_edited") as? Bool ?? true }
        set { defaults.set(newValue, forKey: "ayu_save_edited") }
    }

}
