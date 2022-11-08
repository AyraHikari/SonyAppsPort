.class Landroidx/slice/SliceViewManagerWrapper;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceViewManagerWrapper"


# instance fields
.field private final mCachedAuthorities:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedSuspendFlags:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Landroid/app/slice/SliceManager;

.field private final mSpecs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/slice/SliceManager;

    .line 60
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    .line 51
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    .line 61
    iput-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 62
    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0}, Landroidx/slice/SliceConvert;->unwrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    .line 63
    return-void
.end method

.method private isAuthoritySuspended(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 126
    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 128
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 129
    return v2

    .line 131
    :cond_0
    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isPackageSuspended(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 120
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isPackageSuspended(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 139
    .local v0, "isSuspended":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 141
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 143
    iget-object v2, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1

    .line 148
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 104
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 162
    .local v2, "provider":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No provider found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 166
    throw v0
.end method

.method public mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 69
    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 74
    .local v2, "provider":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No provider found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 78
    throw v0
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 86
    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->unpinSlice(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    :goto_0
    return-void
.end method
