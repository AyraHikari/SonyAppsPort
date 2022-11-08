.class public Lcom/android/launcher3/notification/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL_NOTIFICATION:I = 0x4

.field private static final MSG_NOTIFICATION_FULL_REFRESH:I = 0x3

.field private static final MSG_NOTIFICATION_POSTED:I = 0x1

.field private static final MSG_NOTIFICATION_REMOVED:I = 0x2

.field private static final MSG_RANKING_UPDATE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "NotificationListener"

.field private static sIsConnected:Z

.field private static sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

.field private static final sNotificationsChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastKeyDismissedByLauncher:Ljava/lang/String;

.field private final mNotificationGroupKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/notification/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSettingsChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

.field private final mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$MzpbNLhbSgayE1nH4THVSusN-2w(Lcom/android/launcher3/notification/NotificationListener;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->handleUiMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZmP3oZxTCeMh7sQfgBrlfLcKPQ(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->notificationIsValidForUI(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bDLJv0ex9T5hoGpLTSRL5c1Ls4A(Lcom/android/launcher3/notification/NotificationListener;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->handleWorkerMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zKoNfGJixcZQ-G_o80ngVxueHQg(Lcom/android/launcher3/notification/NotificationListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationSettingsChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 77
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    .line 91
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 93
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 94
    return-void
.end method

.method public static addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 101
    if-nez p0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 107
    .local v0, "notificationListener":Lcom/android/launcher3/notification/NotificationListener;
    if-eqz v0, :cond_1

    .line 108
    invoke-direct {v0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 115
    :goto_0
    return-void
.end method

.method private getActiveNotificationsSafely([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "result":[Landroid/service/notification/StatusBarNotification;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "NotificationListener"

    const-string v3, "SecurityException: failed to fetch notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;
    .locals 1

    .line 97
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleUiMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 202
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 204
    .local v1, "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    .line 206
    .end local v1    # "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    goto :goto_0

    .line 194
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 195
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 196
    .local v1, "msg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 197
    .local v2, "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    .line 198
    .end local v2    # "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    goto :goto_1

    .line 199
    .end local v1    # "msg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;>;"
    :cond_0
    goto :goto_3

    .line 186
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 187
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 188
    .restart local v1    # "msg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 189
    .restart local v2    # "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    .line 190
    .end local v2    # "listener":Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    goto :goto_2

    .line 210
    .end local v1    # "msg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;>;"
    :cond_1
    :goto_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWorkerMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 180
    return v2

    .line 173
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "keys":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotificationsSafely([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 175
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v5}, Lcom/android/launcher3/notification/NotificationListener;->updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V

    .line 174
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return v4

    .line 168
    .end local v0    # "keys":[Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 170
    return v4

    .line 156
    :pswitch_2
    const/4 v0, 0x0

    .line 157
    .local v0, "activeNotifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    sget-boolean v2, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v2, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotificationsSafely([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    .line 159
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 160
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 162
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return v4

    .line 133
    .end local v0    # "activeNotifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 134
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 135
    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->toKeyPair(Landroid/service/notification/StatusBarNotification;)Landroid/util/Pair;

    move-result-object v5

    .line 134
    invoke-virtual {v2, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 137
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationGroup;

    .line 138
    .local v2, "notificationGroup":Lcom/android/launcher3/notification/NotificationGroup;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "key":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {v2, v3}, Lcom/android/launcher3/notification/NotificationGroup;->removeChildKey(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Lcom/android/launcher3/notification/NotificationGroup;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v2}, Lcom/android/launcher3/notification/NotificationGroup;->getGroupSummaryKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mLastKeyDismissedByLauncher:Ljava/lang/String;

    .line 153
    :cond_4
    return v4

    .line 126
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "notificationGroup":Lcom/android/launcher3/notification/NotificationGroup;
    .end local v3    # "key":Ljava/lang/String;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 127
    .restart local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->notificationIsValidForUI(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    move v3, v4

    goto :goto_2

    :cond_5
    nop

    .line 129
    :goto_2
    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->toKeyPair(Landroid/service/notification/StatusBarNotification;)Landroid/util/Pair;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$addNotificationsChangedListener$0(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addNotificationsChangedListener$1(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "listener"    # Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getNotificationsForKeys$2(Lcom/android/launcher3/notification/NotificationKeyData;)Ljava/lang/String;
    .locals 1
    .param p0, "n"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getNotificationsForKeys$3(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 323
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private notificationIsValidForUI(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 332
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 333
    .local v0, "notification":Landroid/app/Notification;
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 336
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 337
    return v2

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "miscellaneous"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 342
    return v2

    .line 346
    :cond_1
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 347
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 348
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v2

    .line 349
    .local v4, "missingTitleAndText":Z
    :goto_0
    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v2

    .line 350
    .local v6, "isGroupHeader":Z
    :goto_1
    if-nez v6, :cond_4

    if-nez v4, :cond_4

    move v2, v5

    :cond_4
    return v2
.end method

.method private onNotificationFullRefresh()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method private onNotificationSettingsChanged(Z)V
    .locals 1
    .param p1, "areNotificationDotsEnabled"    # Z

    .line 239
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->requestUnbind()V

    .line 242
    :cond_0
    return-void
.end method

.method public static removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 118
    if-eqz p0, :cond_0

    .line 119
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method

.method private static toKeyPair(Landroid/service/notification/StatusBarNotification;)Landroid/util/Pair;
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    .line 355
    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private updateGroupKeyIfNecessary(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 285
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "childKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    .local v1, "oldGroupKey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "newGroupKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupKeyMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationGroup;

    .line 294
    .local v3, "oldGroup":Lcom/android/launcher3/notification/NotificationGroup;
    invoke-virtual {v3, v0}, Lcom/android/launcher3/notification/NotificationGroup;->removeChildKey(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v3}, Lcom/android/launcher3/notification/NotificationGroup;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v3    # "oldGroup":Lcom/android/launcher3/notification/NotificationGroup;
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 302
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationGroup;

    .line 303
    .local v3, "notificationGroup":Lcom/android/launcher3/notification/NotificationGroup;
    if-nez v3, :cond_2

    .line 304
    new-instance v4, Lcom/android/launcher3/notification/NotificationGroup;

    invoke-direct {v4}, Lcom/android/launcher3/notification/NotificationGroup;-><init>()V

    move-object v3, v4

    .line 305
    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 309
    .local v4, "isGroupSummary":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 310
    invoke-virtual {v3, v0}, Lcom/android/launcher3/notification/NotificationGroup;->setGroupSummaryKey(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/notification/NotificationGroup;->addChildKey(Ljava/lang/String;)V

    .line 315
    .end local v3    # "notificationGroup":Lcom/android/launcher3/notification/NotificationGroup;
    .end local v4    # "isGroupSummary":Z
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelNotificationFromLauncher(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 322
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    nop

    .line 323
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 322
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotificationsSafely([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onListenerConnected()V
    .locals 3

    .line 225
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 229
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    .line 230
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationSettingsChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationSettingsChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationSettingsChanged(Z)V

    .line 235
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 236
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 3

    .line 250
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationSettingsChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 253
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 254
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    :cond_0
    return-void
.end method
