fn get_notification_state_from_toast_device_notification<TG>() -> Result<NotificationState>
where
    TG: TimeGiver,
{
    let Ok(end_time) = get_and_convert_time(base_device_notification.end_time.clone(), time_giver)
    else {
        bail!("Failed to parse end_time from backend");
    };

    Ok(NotificationState {
        id,
        creation_time: time_giver.get_timestamp(),
        start_time,
        end_time,
        expired_time,
        notification_data,
        user,
        notification_type,
        source: Source::Backend,
        expired: false,
        recurrence,
        frequency_in_minutes,
        triggered_count: None,
        actions,
        viewed_count: 0,
        snooze_duration_in_minutes,
        snooze_count: None,
        snooze_limit,
        metric_tags,
    })
}

async fn enqueue_toast_notification<QM, TG>(
    queue_manager: &mut QM,
    time_giver: &TG,
    notification_state: &NotificationState,
) -> Result<()>
where
    QM: QueueManager + Clone + Sync + Send,
    TG: TimeGiver,
{
}

#[cfg(test)]
pub mod test {
    use crate::{
        event::{
            BaseDeviceNotification, DeviceNotificationState, DeviceNotificationType,
            EventDescription, Source, Status, SyncDeviceNotificationsDescription,
            ToastDeviceNotification, ToastDeviceNotificationData,
        },
        network_manager::MockNetworkManager,
        notifications_sqlite_liaison::{
            DefaultNotificationsSqliteLiaison, MockNotificationsSqliteLiaison, NotificationState,
            NotificationsSqliteLiaison,
        },
        queue_manager::MockQueueManager,
        sqlite_liaison::{
            new_test_sqlite_liaison, DefaultSqliteLiaison, MockSqliteLiaison, SqliteLiaison,
        },
        time_giver::MockTimeGiver,
    };
    use anyhow::{bail, Result};
    use common::types::prelude::*;
    use serde_json::Value;
    use time::Duration;

    fn generate_base_device_notification_toast_data() -> Value {
        let data = ToastDeviceNotification {
            frequency_in_minutes: 0,
            recurrence: 0,
            snooze_duration_in_minutes: None,
            snooze_limit: None,
            notification_data: ToastDeviceNotificationData {
                title: "".to_string(),
                subtitle: None,
                message: "".to_string(),
                buttons: None,
                actions: None,
                localized_data: None,
            },
        };

        serde_json::to_value::<ToastDeviceNotification>(data).unwrap()
    }

    fn generate_base_device_notification(identifier: &str) -> BaseDeviceNotification {
        BaseDeviceNotification {
            notification_type: DeviceNotificationType::Toast,
            notification_state: DeviceNotificationState::Queued,
            username: None,
            data: generate_base_device_notification_toast_data(),
            start_time: Some("dummy".to_string()),
            end_time: None,
            mongo_id: format!("notification {}", identifier),
            metric_tags: None,
        }
    }

    fn generate_base_cancelled_device_notification(identifier: &str) -> BaseDeviceNotification {
        BaseDeviceNotification {
            notification_type: DeviceNotificationType::Toast,
            notification_state: DeviceNotificationState::Cancelled,
            username: None,
            data: generate_base_device_notification_toast_data(),
            start_time: Some("dummy".to_string()),
            end_time: None,
            mongo_id: format!("notification {}", identifier),
            metric_tags: None,
        }
    }

    fn generate_sync_device_notifications_description(
        num_notifications: u32,
        start_identifier: u32,
    ) -> SyncDeviceNotificationsDescription {
    }

    fn generate_sync_device_notifications_description_cancelled(
        num_notifications: u32,
        start_identifier: u32,
    ) -> SyncDeviceNotificationsDescription {
    }

    fn generate_notification_state(identifier: &str) -> NotificationState {
        NotificationState {
            id: identifier.to_string(),
            creation_time: "dummy time".to_string(),
            start_time: Some("dummy time".to_string()),
            end_time: Some("dummy time".to_string()),
            expired_time: None,
            notification_data: Default::default(),
            user: None,
            notification_type: DeviceNotificationType::Toast,
            source: Source::Agent,
            expired: false,
            recurrence: None,
            frequency_in_minutes: None,
            triggered_count: None,
            actions: None,
            viewed_count: 0,
        }
    }
}
