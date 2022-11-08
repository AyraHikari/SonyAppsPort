.class public interface abstract Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
.super Ljava/lang/Object;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/notification/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationsChangedListener"
.end annotation


# virtual methods
.method public abstract onNotificationFullRefresh(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
.end method

.method public abstract onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
.end method
