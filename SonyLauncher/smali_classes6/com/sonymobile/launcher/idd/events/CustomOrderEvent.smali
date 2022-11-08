.class public Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;
.super Lcom/sonymobile/launcher/idd/events/BaseEvent;
.source "CustomOrderEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/events/CustomOrderEvent$RearrangeType;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "CustomOrder"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private folderCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "folder_count"
    .end annotation
.end field

.field private rearrange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rearrange"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "CustomOrder"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/idd/events/BaseEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private getFolderCount(Lcom/android/launcher3/Launcher;)I
    .locals 8
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    return v0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->getSortMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "sortMode":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v2}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    return v0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    move-result-object v2

    .line 86
    .local v2, "ownOrderAppsList":Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    if-nez v2, :cond_2

    .line 87
    return v0

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    .local v0, "count":I
    invoke-virtual {v2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->getApps()Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 93
    .local v5, "app":Lcom/android/launcher3/model/data/ItemInfo;
    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    .end local v5    # "app":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    goto :goto_0

    .line 97
    :cond_4
    return v0
.end method

.method private getSortMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 103
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia_sort_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public folderCount(Lcom/android/launcher3/Launcher;)Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->getFolderCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->folderCount:Ljava/lang/Integer;

    .line 51
    return-object p0
.end method

.method public rearrange(ZZ)Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;
    .locals 1
    .param p1, "rearrange"    # Z
    .param p2, "makeFolder"    # Z

    .line 57
    if-eqz p1, :cond_1

    .line 58
    if-eqz p2, :cond_0

    .line 59
    const-string v0, "REARRANGE_MAKE_FOLDER"

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->rearrange:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "REARRANGE"

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->rearrange:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_1
    if-eqz p2, :cond_2

    .line 64
    const-string v0, "MAKE_FOLDER"

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->rearrange:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;->rearrange:Ljava/lang/String;

    .line 68
    :goto_0
    return-object p0
.end method
