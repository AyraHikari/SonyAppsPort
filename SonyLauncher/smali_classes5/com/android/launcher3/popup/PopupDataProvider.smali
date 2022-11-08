.class public Lcom/android/launcher3/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source "PopupDataProvider.java"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "PopupDataProvider"


# instance fields
.field private mAllWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

.field private mDeepShortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationDotsChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageUserToDotInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "notificationDotsChangeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    .line 66
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    .line 72
    return-void
.end method

.method public static getNotificationsForItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 246
    .local p1, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "shortcutId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 248
    return-object p1

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->getPersonKeysIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "personKeys":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 259
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 251
    return-object v2
.end method

.method static synthetic lambda$getNotificationsForItem$7(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "personKeys"    # [Ljava/lang/String;
    .param p2, "notification"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 252
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 255
    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p2, Lcom/android/launcher3/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getRecommendedWidgets$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 220
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return v0
.end method

.method static synthetic lambda$getRecommendedWidgets$1(Ljava/util/HashMap;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 3
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 222
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$getRecommendedWidgets$2(Ljava/util/HashMap;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V
    .locals 2
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda10;-><init>(Ljava/util/HashMap;)V

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 221
    return-void
.end method

.method static synthetic lambda$getRecommendedWidgets$3(Ljava/util/HashMap;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3
    .param p0, "allWidgetItems"    # Ljava/util/HashMap;
    .param p1, "recommendedWidget"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 225
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    .line 226
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 225
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$4(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "row"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 234
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$5(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "row"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 236
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getWidgetsForPackageUser$6(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 2
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private trimNotifications(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p1, "updatedDots":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/DotInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->trimNotifications(Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onNotificationDotsUpdated(Ljava/util/function/Predicate;)V

    .line 77
    return-void
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "notificationKey"    # Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 188
    .local v0, "notificationListener":Lcom/android/launcher3/notification/NotificationListener;
    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotificationFromLauncher(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PopupDataProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmPackageUserToDotInfos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    return-object v0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 165
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    return-object v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 169
    .local v0, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v0, :cond_1

    .line 170
    return-object v1

    .line 172
    :cond_1
    nop

    .line 173
    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v2

    .line 172
    invoke-static {p1, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationsForItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    return-object v1

    .line 177
    :cond_2
    return-object v0
.end method

.method public getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    .line 182
    .local v0, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationsForItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1
.end method

.method public getRecommendedWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "allWidgetItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    .line 221
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashMap;)V

    .line 225
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 228
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 229
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 224
    return-object v1
.end method

.method public getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 152
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsDeepShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 156
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 157
    return v1

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 161
    .local v2, "count":Ljava/lang/Integer;
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 2
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 234
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda5;-><init>()V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 233
    return-object v0
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "activeNotifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    .local v0, "updatedDots":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/DotInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 112
    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-static {v2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v3

    .line 113
    .local v3, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/DotInfo;

    .line 114
    .local v4, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v4, :cond_1

    .line 115
    new-instance v5, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v5}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    move-object v4, v5

    .line 116
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    .line 119
    .end local v2    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v4    # "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    .line 123
    .local v2, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/DotInfo;

    .line 124
    .local v3, "prevDot":Lcom/android/launcher3/dot/DotInfo;
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/DotInfo;

    .line 125
    .local v4, "newDot":Lcom/android/launcher3/dot/DotInfo;
    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 127
    :cond_4
    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v2    # "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v3    # "prevDot":Lcom/android/launcher3/dot/DotInfo;
    .end local v4    # "newDot":Lcom/android/launcher3/dot/DotInfo;
    :goto_3
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 137
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda8;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 139
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->trimNotifications(Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2
    .param p1, "postedPackageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 83
    .local v0, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v1}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    move-object v0, v1

    .line 85
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 90
    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2
    .param p1, "removedPackageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "notificationKey"    # Lcom/android/launcher3/notification/NotificationKeyData;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    .line 96
    .local v0, "oldDotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->trimNotifications(Ljava/util/Map;)V

    .line 103
    :cond_1
    return-void
.end method

.method public redrawSystemShortcuts()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onSystemShortcutsUpdated()V

    .line 272
    return-void
.end method

.method public setAllWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onWidgetsBound()V

    .line 206
    return-void
.end method

.method public setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 209
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    .line 210
    return-void
.end method

.method public setDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method public setRecommendedWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onRecommendedWidgetsBound()V

    .line 201
    return-void
.end method
