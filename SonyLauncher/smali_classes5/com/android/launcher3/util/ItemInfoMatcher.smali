.class public abstract Lcom/android/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "ItemInfoMatcher.java"


# static fields
.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/ItemInfoMatcher;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 68
    .local p0, "childOperator":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method private static getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 90
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/util/ItemInfoMatcher;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$forFolderMatch$4(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "childOperator"    # Ljava/util/function/Predicate;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 68
    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 69
    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0
.end method

.method static synthetic lambda$ofComponents$1(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "components"    # Ljava/util/HashSet;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 50
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method

.method static synthetic lambda$ofItemIds$5(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "ids"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 76
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$ofItems$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p0, "ids"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 84
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method static synthetic lambda$ofPackages$2(Landroid/os/UserHandle;Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "packageNames"    # Ljava/util/Set;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 55
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0
.end method

.method static synthetic lambda$ofShortcutKeys$3(Ljava/util/Set;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "keys"    # Ljava/util/Set;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 60
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 61
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method

.method static synthetic lambda$ofUser$0(Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 45
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda5;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public static ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "ids"    # Lcom/android/launcher3/util/IntSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSet;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/IntSet;)V

    return-object v0
.end method

.method public static ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 83
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 84
    .local v0, "ids":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v1

    return-object v1
.end method

.method public static ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 55
    .local p0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserHandle;Ljava/util/Set;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/Set;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 60
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/shortcuts/ShortcutKey;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method
