.class public Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;
.super Ljava/lang/Object;
.source "SonyBadgeDataProvider.java"


# instance fields
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

.field private mPackageUserToBadgeInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
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

    .line 32
    .local p1, "notificationDotsChangeListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    .line 34
    return-void
.end method


# virtual methods
.method public addOrRemoveUpdatedSonyBadges(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "updatedBadges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v0, "updatedPackageUserKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v1, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 46
    .local v1, "storedInfosKey":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/PackageUserKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 47
    .local v3, "updatedBadge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    .line 49
    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v5

    .line 48
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 50
    .local v4, "oldBadge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v5

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v4    # "oldBadge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    goto :goto_1

    .line 56
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_1
    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getPackageUserKey()Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "updatedBadge":Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 63
    :cond_3
    return-void
.end method

.method public getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 37
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsDeepShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    return-object v0

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
