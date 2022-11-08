.class final Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageItemInfoCache"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;-><init>()V

    return-void
.end method


# virtual methods
.method getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 5
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 311
    .local v0, "pInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    move-object v0, v1

    .line 313
    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 314
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    return-object v0
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
