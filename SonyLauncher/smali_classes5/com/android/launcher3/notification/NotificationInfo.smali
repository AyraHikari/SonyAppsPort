.class public Lcom/android/launcher3/notification/NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final autoCancel:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIconLarge:Z

.field private final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final notificationKey:Ljava/lang/String;

.field public final packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 70
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 71
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 72
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 73
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {v0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v1

    .line 78
    .local v1, "iconType":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 79
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    :goto_0
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 82
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 84
    iput-boolean v5, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    .line 90
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 91
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_3
    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    .line 95
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    iput-boolean v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    .line 96
    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    .line 97
    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 98
    return-void
.end method


# virtual methods
.method public getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "background"    # I

    .line 126
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    iget v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 136
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 106
    .local v0, "context":Lcom/android/launcher3/views/ActivityContext;
    nop

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 106
    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 109
    .local v1, "activityOptions":Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 111
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 115
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    .line 117
    .local v2, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    if-eqz v2, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 121
    .end local v2    # "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    :cond_1
    const/4 v2, 0x1

    const v3, 0x20002

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 123
    return-void
.end method
