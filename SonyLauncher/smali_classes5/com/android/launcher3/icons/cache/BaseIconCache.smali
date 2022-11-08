.class public abstract Lcom/android/launcher3/icons/cache/BaseIconCache;
.super Ljava/lang/Object;
.source "BaseIconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;,
        Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "BaseIconCache"


# instance fields
.field private final mBgLooper:Landroid/os/Looper;

.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private final mDbFileName:Ljava/lang/String;

.field private mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

.field protected mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

.field protected mIconDpi:I

.field protected mLocaleList:Landroid/os/LocaleList;

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected mSystemState:Ljava/lang/String;

.field private final mUserFlagOpMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/FlagOp;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbFileName"    # Ljava/lang/String;
    .param p3, "bgLooper"    # Landroid/os/Looper;
    .param p4, "iconDpi"    # I
    .param p5, "iconPixelSize"    # I
    .param p6, "inMemoryCache"    # Z

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    .line 112
    iput-object p1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDbFileName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 115
    iput-object p3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mBgLooper:Landroid/os/Looper;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 118
    if-eqz p6, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache$1;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateSystemState()V

    .line 136
    iput p4, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    .line 137
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-direct {v0, p1, p2, p5}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 138
    return-void
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Landroid/content/ComponentName;
    .param p3, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "userSerial"    # J
    .param p6, "lastUpdateTime"    # J

    .line 298
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "componentName"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lastUpdated"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    iget v0, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 303
    return-void
.end method

.method private assertWorkerThread()V
    .locals 3

    .line 712
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mBgLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 715
    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache accessed on wrong thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .line 171
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 173
    :try_start_0
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    :cond_0
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 473
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "bitmapInfo"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;

    .line 683
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/launcher3/icons/BitmapInfo;->canPersist()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "icon"

    const-string v4, "mono_icon"

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 688
    invoke-virtual {p1}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 689
    .local v1, "mono":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 690
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 691
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v5, :cond_0

    .line 692
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 693
    .local v2, "pixels":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 694
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 695
    .end local v2    # "pixels":[B
    goto :goto_0

    .line 696
    :cond_0
    move-object v3, v2

    check-cast v3, [B

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 698
    .end local v1    # "mono":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 699
    :cond_1
    move-object v1, v2

    check-cast v1, [B

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 700
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 702
    :goto_1
    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v1, "keywords"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-object v0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 206
    .local v0, "forDeletion":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 207
    .local v2, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 208
    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 213
    .local v2, "condemned":Lcom/android/launcher3/util/ComponentKey;
    iget-object v3, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v2    # "condemned":Lcom/android/launcher3/util/ComponentKey;
    goto :goto_1

    .line 215
    :cond_2
    return-void
.end method

.method private declared-synchronized updateIconParamsBg(II)V
    .locals 3
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    monitor-enter p0

    .line 161
    :try_start_0
    iput p1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->clear()V

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->close()V

    .line 166
    new-instance v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDbFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "iconDpi":I
    .end local p2    # "iconPixelSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateSystemState()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    .line 241
    return-void
.end method

.method private updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z
    .locals 7
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "lowRes"    # Z

    .line 564
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_COLOR()I

    move-result v1

    .line 565
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v1

    .line 564
    invoke-static {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 566
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_TITLE()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 567
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 568
    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 569
    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 575
    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 576
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_ICON()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 577
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 578
    return v0

    .line 581
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 582
    .local v2, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 583
    array-length v3, v1

    .line 584
    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 583
    invoke-static {v3, v4}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v2    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 591
    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_MONO_ICON()I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 592
    iget-object v2, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 593
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    array-length v3, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-ne v3, v4, :cond_4

    .line 594
    nop

    .line 595
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 594
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 596
    .local v3, "monoBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 597
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 598
    .local v4, "hwMonoBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 599
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    move-object v3, v4

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v5

    .line 603
    .local v5, "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_1
    iget-object v6, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v6, v3, v5}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    goto :goto_2

    .line 602
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0

    .line 586
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "monoBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "hwMonoBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "factory":Lcom/android/launcher3/icons/BaseIconFactory;
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    return v0

    .line 607
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->-$$Nest$sfgetINDEX_FLAGS()I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 608
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 609
    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method


# virtual methods
.method public declared-synchronized addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    .locals 18
    .param p3, "info"    # Landroid/content/pm/PackageInfo;
    .param p4, "userSerial"    # J
    .param p6, "replaceExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/content/pm/PackageInfo;",
            "JZ)V"
        }
    .end annotation

    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    monitor-enter p0

    .line 256
    :try_start_0
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v1

    move-object v11, v1

    .line 257
    .local v11, "user":Landroid/os/UserHandle;
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v12, v1

    .line 259
    .local v12, "componentName":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v12, v11}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object v13, v1

    .line 260
    .local v13, "key":Lcom/android/launcher3/util/ComponentKey;
    const/4 v1, 0x0

    .line 261
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-nez p6, :cond_1

    .line 262
    iget-object v2, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-object v1, v2

    .line 264
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_0
    const/4 v1, 0x0

    .line 268
    :cond_1
    if-nez v1, :cond_2

    .line 269
    new-instance v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v2}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v1, v2

    .line 270
    iget-object v2, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {v10, v2, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    move-object v14, v1

    goto :goto_0

    .line 268
    :cond_2
    move-object v14, v1

    .line 275
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :goto_0
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit p0

    return-void

    .line 277
    .restart local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_3
    :try_start_1
    invoke-interface {v10, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v15, v1

    .line 278
    .local v15, "entryTitle":Ljava/lang/CharSequence;
    if-nez v15, :cond_4

    .line 279
    const-string v1, "BaseIconCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label returned from caching logic instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_4
    iput-object v15, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 283
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 284
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/icons/cache/CachingLogic;->addToMemCache()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_5
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-interface {v10, v0, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getKeywords(Ljava/lang/Object;Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 288
    .local v2, "values":Landroid/content/ContentValues;
    nop

    .line 289
    move-object/from16 v7, p3

    invoke-interface {v10, v0, v7}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J

    move-result-wide v16

    .line 288
    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 255
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v15    # "entryTitle":Ljava/lang/CharSequence;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    .end local p2    # "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .end local p3    # "info":Landroid/content/pm/PackageInfo;
    .end local p4    # "userSerial":J
    .end local p6    # "replaceExisting":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p5, "cursor"    # Landroid/database/Cursor;
    .param p6, "usePackageIcon"    # Z
    .param p7, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/database/Cursor;",
            "ZZ)",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    .line 354
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 355
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object v13, v0

    .line 356
    .local v13, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v0, v8, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 357
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v11, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    move-object/from16 v2, p4

    goto :goto_3

    .line 358
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v14, v1

    .line 359
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-interface/range {p4 .. p4}, Lcom/android/launcher3/icons/cache/CachingLogic;->addToMemCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, v8, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_2
    const/4 v0, 0x0

    .line 365
    .local v0, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 366
    .local v1, "providerFetchedOnce":Z
    if-nez v10, :cond_3

    .line 367
    invoke-virtual {v8, v13, v14, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result v2

    goto :goto_1

    .line 368
    :cond_3
    invoke-direct {v8, v13, v14, v10, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z

    move-result v2

    :goto_1
    move v15, v2

    .line 369
    .local v15, "cacheEntryUpdated":Z
    if-nez v15, :cond_4

    .line 370
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v16

    .line 371
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .local v16, "object":Ljava/lang/Object;, "TT;"
    const/16 v17, 0x1

    .line 373
    .end local v1    # "providerFetchedOnce":Z
    .local v17, "providerFetchedOnce":Z
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    .line 383
    .end local v16    # "object":Ljava/lang/Object;, "TT;"
    .end local v17    # "providerFetchedOnce":Z
    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    .restart local v1    # "providerFetchedOnce":Z
    :cond_4
    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 384
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 385
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 386
    const/4 v1, 0x1

    .line 388
    :cond_5
    if-eqz v0, :cond_6

    .line 389
    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v14, v2, v9}, Lcom/android/launcher3/icons/cache/BaseIconCache;->loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 388
    :cond_6
    move-object/from16 v2, p4

    goto :goto_2

    .line 383
    :cond_7
    move-object/from16 v2, p4

    .line 393
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .end local v1    # "providerFetchedOnce":Z
    .end local v15    # "cacheEntryUpdated":Z
    :goto_2
    move-object v0, v14

    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :goto_3
    return-object v0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p5, "usePackageIcon"    # Z
    .param p6, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;ZZ)",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    .line 340
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 452
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 453
    .local v0, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 456
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-nez v1, :cond_0

    .line 457
    new-instance v2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v2}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v1, v2

    .line 459
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    iput-object p4, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 462
    :cond_1
    if-eqz p3, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v2

    .line 464
    .local v2, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual {v3, p2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createShapedIconBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 465
    invoke-virtual {v2}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 467
    .end local v2    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_3
    monitor-exit p0

    return-void

    .line 449
    .end local v0    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "icon":Landroid/graphics/Bitmap;
    .end local p4    # "title":Ljava/lang/CharSequence;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 441
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 439
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 308
    .local v0, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->makeDefaultIcon()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 307
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 311
    .end local v0    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mDefaultIcon:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v0

    .line 305
    .end local p1    # "user":Landroid/os/UserHandle;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "useLowResIcon"    # Z

    .line 483
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->assertWorkerThread()V

    .line 484
    invoke-static/range {p1 .. p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v13

    .line 485
    .local v13, "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v0, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 487
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v12, :cond_6

    .line 488
    :cond_0
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v14, v1

    .line 489
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v14, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    const/4 v15, 0x1

    .line 492
    .local v15, "entryUpdated":Z
    invoke-virtual {v9, v13, v14, v12}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 494
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :cond_1
    const/16 v0, 0x2000

    :goto_0
    nop

    .line 496
    .local v0, "flags":I
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    move-object v7, v1

    .line 497
    .local v7, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v1

    .line 498
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_3

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    move-object v5, v1

    .line 505
    .local v5, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 506
    invoke-virtual {v8, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 507
    invoke-virtual {v2, v11}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    invoke-virtual {v9, v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v2

    .line 505
    invoke-virtual {v5, v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    move-object v6, v1

    .line 508
    .local v6, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    invoke-virtual {v5}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 510
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 511
    iget-object v1, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 512
    nop

    .line 513
    if-eqz v12, :cond_2

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_1
    iget v2, v6, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 512
    invoke-static {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 517
    iget-object v1, v14, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 518
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 517
    invoke-direct {v9, v6, v1, v10, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->newContentValues(Lcom/android/launcher3/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 519
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, v13, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v16

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-object/from16 v1, p0

    move-object v4, v7

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .end local v6    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    .local v18, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .local v19, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "info":Landroid/content/pm/PackageInfo;
    .local v17, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V

    .line 525
    .end local v0    # "flags":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "li":Lcom/android/launcher3/icons/BaseIconFactory;
    .end local v19    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    goto :goto_2

    .line 499
    .restart local v0    # "flags":I
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v2, "ApplicationInfo is null"

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v13    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v15    # "entryUpdated":Z
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "useLowResIcon":Z
    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v0    # "flags":I
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "cacheKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v15    # "entryUpdated":Z
    .restart local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "useLowResIcon":Z
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    .line 529
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :goto_2
    if-eqz v15, :cond_5

    .line 530
    iget-object v0, v9, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v15    # "entryUpdated":Z
    :cond_5
    move-object v0, v14

    .end local v14    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_6
    return-object v0
.end method

.method protected getEntryFromDBLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Z)Z
    .locals 9
    .param p1, "cacheKey"    # Lcom/android/launcher3/util/ComponentKey;
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p3, "lowRes"    # Z

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "loadIconIndividually"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 541
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 542
    if-eqz p3, :cond_0

    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    :goto_0
    const-string v4, "componentName = ? AND profileId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 545
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 546
    invoke-virtual {p0, v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 541
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndIconLocked(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Landroid/database/Cursor;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    if-eqz v0, :cond_1

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 548
    return v1

    .line 553
    :cond_2
    if-eqz v0, :cond_3

    .line 554
    goto :goto_1

    .line 553
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "BaseIconCache"

    const-string v4, "Error reading icon cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    nop

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_3

    .line 554
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 557
    nop

    .line 558
    return v1

    .line 553
    :goto_2
    if-eqz v0, :cond_4

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 557
    throw v1
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {v0}, Lcom/android/launcher3/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSerialNumberForUser(Landroid/os/UserHandle;)J
.end method

.method public getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateSystemState()V

    .line 230
    new-instance v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V

    return-object v0
.end method

.method protected getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 315
    invoke-virtual {p1}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 317
    .local v0, "key":I
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-ltz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/FlagOp;

    return-object v1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    .line 321
    .local v1, "li":Lcom/android/launcher3/icons/BaseIconFactory;
    :try_start_0
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v3

    .line 322
    .local v3, "op":Lcom/android/launcher3/util/FlagOp;
    iget-object v4, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mUserFlagOpMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    nop

    .line 324
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 323
    :cond_1
    return-object v3

    .line 320
    .end local v3    # "op":Lcom/android/launcher3/util/FlagOp;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
.end method

.method public isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 329
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method synthetic lambda$updateIconParams$0$com-android-launcher3-icons-cache-BaseIconCache(II)V
    .locals 0
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParamsBg(II)V

    return-void
.end method

.method protected loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p4, "usePackageIcon"    # Z
    .param p5, "usePackageTitle"    # Z
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;ZZ",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 403
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p3, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {p3, v0, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_0

    .line 406
    :cond_0
    if-eqz p4, :cond_1

    .line 407
    nop

    .line 408
    invoke-virtual {p6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0, v0, p7, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 409
    .local v0, "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz v0, :cond_1

    .line 412
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 413
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 415
    if-eqz p5, :cond_1

    .line 416
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 420
    .end local v0    # "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_1
    iget-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_2

    .line 423
    invoke-virtual {p0, p7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 426
    :cond_2
    :goto_0
    return-void
.end method

.method protected loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V
    .locals 2
    .param p2, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 434
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p3, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 436
    invoke-interface {p3, p1, v1}, Lcom/android/launcher3/icons/cache/CachingLogic;->getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1, p4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 437
    return-void
.end method

.method public declared-synchronized queryCacheDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 617
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "columns":[Ljava/lang/String;
    .end local p2    # "selection":Ljava/lang/String;
    .end local p3    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mCache:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 223
    .local v0, "userSerial":J
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    const-string v3, "componentName LIKE ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 223
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 220
    .end local v0    # "userSerial":J
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/BaseIconCache;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateIconParams(II)V
    .locals 2
    .param p1, "iconDpi"    # I
    .param p2, "iconPixelSize"    # I

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
