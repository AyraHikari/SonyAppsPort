.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source "PopupPopulator.java"


# static fields
.field public static final MAX_SHORTCUTS:I = 0x4

.field public static final MAX_SHORTCUTS_IF_NOTIFICATIONS:I = 0x2

.field static final NUM_DYNAMIC:I = 0x2

.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 13
    .param p1, "originalInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/os/Handler;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 138
    .local p0, "context":Landroid/content/Context;, "TT;"
    .local p4, "shortcutViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/shortcuts/DeepShortcutView;>;"
    .local p5, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 139
    .local v9, "activity":Landroid/content/ComponentName;
    move-object v10, p1

    iget-object v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 140
    .local v11, "user":Landroid/os/UserHandle;
    new-instance v12, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object/from16 v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v7, v9

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-object v12
.end method

.method static synthetic lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 149
    new-instance v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method static synthetic lambda$createUpdateRunnable$1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 0
    .param p0, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .param p1, "infos"    # Ljava/util/List;

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->applyNotificationInfos(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$2(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .param p0, "view"    # Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .param p1, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method static synthetic lambda$createUpdateRunnable$3(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 8
    .param p0, "notificationKeys"    # Ljava/util/List;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "originalInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "activity"    # Landroid/content/ComponentName;
    .param p7, "shortcutViews"    # Ljava/util/List;

    .line 141
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 145
    .local v0, "notificationListener":Lcom/android/launcher3/notification/NotificationListener;
    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    goto :goto_0

    .line 148
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/notification/NotificationListener;->getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 149
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 150
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    .restart local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    :goto_0
    new-instance v2, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, v1}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    .end local v0    # "notificationListener":Lcom/android/launcher3/notification/NotificationListener;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    :cond_1
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v0, p1, p5}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 156
    invoke-virtual {v0, p6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->withContainer(Landroid/content/ComponentName;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v0

    const/16 v1, 0x9

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    .line 158
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 159
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v1, v1, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    :goto_1
    nop

    .line 160
    .local v1, "shortcutIdToDeDupe":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    .line 162
    .local v2, "cache":Lcom/android/launcher3/icons/IconCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 163
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 164
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    new-instance v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v5, v4, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 165
    .local v5, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v2, v5, v4}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 166
    iput v3, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 167
    const/16 v6, -0x6b

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 169
    invoke-interface {p7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 170
    .local v6, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    new-instance v7, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6, v5, v4, p4}, Lcom/android/launcher3/popup/PopupPopulator$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v6    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 172
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "shortcutIdToRemoveFirst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ShortcutInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 96
    .end local v0    # "shortcutIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 98
    return-object p0

    .line 103
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v0, "filteredShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .line 105
    .local v2, "numDynamic":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 107
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 108
    .local v5, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 109
    .local v6, "filteredSize":I
    if-ge v6, v1, :cond_3

    .line 111
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    if-ge v2, v7, :cond_4

    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    sub-int v7, v6, v2

    .line 122
    .local v7, "lastStaticIndex":I
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "filteredSize":I
    .end local v7    # "lastStaticIndex":I
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_5
    return-object v0
.end method
