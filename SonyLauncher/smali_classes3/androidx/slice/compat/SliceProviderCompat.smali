.class public Landroidx/slice/compat/SliceProviderCompat;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    }
.end annotation


# static fields
.field private static final ALL_FILES:Ljava/lang/String; = "slice_data_all_slice_files"

.field public static final ARG_SUPPORTS_VERSIONED_PARCELABLE:Ljava/lang/String; = "supports_versioned_parcelable"

.field private static final DATA_PREFIX:Ljava/lang/String; = "slice_data_"

.field public static final EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final EXTRA_PID:Ljava/lang/String; = "pid"

.field public static final EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final EXTRA_PROVIDER_PKG:Ljava/lang/String; = "provider_pkg"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "specs"

.field public static final EXTRA_SUPPORTED_SPECS_REVS:Ljava/lang/String; = "revs"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final METHOD_CHECK_PERMISSION:Ljava/lang/String; = "check_perms"

.field public static final METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final METHOD_GET_PINNED_SPECS:Ljava/lang/String; = "get_specs"

.field public static final METHOD_GRANT_PERMISSION:Ljava/lang/String; = "grant_perms"

.field public static final METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final METHOD_PIN:Ljava/lang/String; = "pin_slice"

.field public static final METHOD_REVOKE_PERMISSION:Ljava/lang/String; = "revoke_perms"

.field public static final METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final METHOD_UNPIN:Ljava/lang/String; = "unpin_slice"

.field public static final PERMS_PREFIX:Ljava/lang/String; = "slice_perms_"

.field private static final SLICE_BIND_ANR:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "SliceProviderCompat"


# instance fields
.field private final mAnr:Ljava/lang/Runnable;

.field mCallback:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

.field private mPinnedList:Landroidx/slice/compat/CompatPinnedList;

.field private final mProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;Landroidx/slice/compat/CompatPermissionManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "provider"    # Landroidx/slice/SliceProvider;
    .param p2, "permissionManager"    # Landroidx/slice/compat/CompatPermissionManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    .line 313
    new-instance v0, Landroidx/slice/compat/SliceProviderCompat$1;

    invoke-direct {v0, p0}, Landroidx/slice/compat/SliceProviderCompat$1;-><init>(Landroidx/slice/compat/SliceProviderCompat;)V

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    .line 114
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    .line 115
    iput-object p3, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "slice_data_androidx.slice.compat.SliceProviderCompat"

    .line 117
    .local v0, "prefsFile":Ljava/lang/String;
    const-string v1, "slice_data_all_slice_files"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 118
    .local v2, "allFiles":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 119
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Landroidx/collection/ArraySet;

    invoke-direct {v4, v3}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 122
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 124
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_0
    new-instance v1, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {v1, p3, v0}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    .line 128
    iput-object p2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    .line 129
    return-void
.end method

.method private static acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 692
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 693
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 696
    new-instance v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    invoke-direct {v1, v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;-><init>(Landroid/content/ContentProviderClient;)V

    return-object v1

    .line 694
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p1, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    .line 353
    .local v3, "spec":Landroidx/slice/SliceSpec;
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v3    # "spec":Landroidx/slice/SliceSpec;
    goto :goto_0

    .line 356
    :cond_0
    const-string v2, "specs"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 357
    const-string v2, "revs"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 358
    return-void
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 382
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const-string v0, "intent"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 385
    const-string v3, "Slice intent must be explicit %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 390
    .local v1, "intentData":Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.slice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    invoke-static {p0, v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v2

    return-object v2

    .line 394
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 395
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v4, "android.app.slice.category.SLICE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 396
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :cond_3
    nop

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 400
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 413
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 414
    .local v2, "authority":Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 415
    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 416
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v0, v6}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v7

    .line 417
    .local v7, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v8, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v8, :cond_5

    .line 421
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v8, "extras":Landroid/os/Bundle;
    const-string v9, "slice_intent"

    invoke-virtual {v8, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 423
    invoke-static {v8, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 424
    iget-object v9, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v10, "map_slice"

    const-string v11, "supports_versioned_parcelable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 426
    .local v9, "res":Landroid/os/Bundle;
    invoke-static {p0, v9}, Landroidx/slice/compat/SliceProviderCompat;->parseSlice(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/slice/Slice;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 426
    return-object v5

    .line 431
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 427
    :catch_0
    move-exception v8

    .line 428
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v9, "SliceProviderCompat"

    const-string v10, "Unable to bind slice"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    nop

    .line 431
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 429
    return-object v5

    .line 431
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 432
    throw v5

    .line 418
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 402
    .end local v2    # "authority":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v6, 0x80

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 404
    .local v2, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_7

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_7

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 406
    const-string v7, "android.metadata.SLICE_URI"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 407
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 408
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v5

    return-object v5

    .line 411
    :cond_7
    return-object v5
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 327
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 328
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 335
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "bind_slice"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 337
    .local v2, "res":Landroid/os/Bundle;
    invoke-static {p0, v2}, Landroidx/slice/compat/SliceProviderCompat;->parseSlice(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/slice/Slice;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 337
    return-object v3

    .line 342
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to bind slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 340
    return-object v2

    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 343
    throw v1

    .line 329
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkSlicePermission(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 621
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p2}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "slice_uri"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v3, "pid"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "check_perms"

    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 630
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 631
    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 631
    :cond_0
    return v4

    .line 633
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_2
    goto :goto_1

    .line 621
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "pid":I
    .end local p4    # "uid":I
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 633
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "pid":I
    .restart local p4    # "uid":I
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to check slice permission"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPinnedSlices(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v0, "pinnedSlices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v1, "slice_data_all_slice_files"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 684
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 685
    .local v1, "prefSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 686
    .local v4, "pref":Ljava/lang/String;
    new-instance v5, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {v5, p0, v4}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/slice/compat/CompatPinnedList;->getPinnedSlices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 687
    .end local v4    # "pref":Ljava/lang/String;
    goto :goto_0

    .line 688
    :cond_0
    return-object v0
.end method

.method public static getPinnedSpecs(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 520
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    .line 524
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 525
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 526
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "get_specs"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 528
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 529
    invoke-static {v2}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 529
    return-object v3

    .line 534
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "res":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get pinned specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 535
    nop

    .line 536
    const/4 v1, 0x0

    return-object v1

    .line 534
    :goto_1
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 535
    throw v1

    .line 521
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 601
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "slice_uri"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 604
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "get_descendants"

    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 606
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 607
    const-string v4, "slice_descendants"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 607
    :cond_0
    return-object v4

    .line 609
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 611
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_2
    goto :goto_1

    .line 601
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 609
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSpecs(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 366
    .local v0, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    const-string v1, "specs"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 367
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "revs"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 368
    .local v2, "revs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 369
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 370
    new-instance v4, Landroidx/slice/SliceSpec;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method public static grantSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toPackage"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p3}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "slice_uri"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 648
    const-string v3, "provider_pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "grant_perms"

    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 655
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_0
    goto :goto_1

    .line 645
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 653
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 280
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Landroidx/slice/compat/SliceProviderCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 282
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 282
    invoke-virtual {v1, p1, v2, v3}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1, p1, v0}, Landroidx/slice/SliceProvider;->createPermissionSlice(Landroid/net/Uri;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 286
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method private handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
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

    .line 250
    const-string v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private handleSlicePinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 255
    const-string v0, "onSlicePinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V

    .line 259
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSlicePinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    throw v0
.end method

.method private handleSliceUnpinned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 266
    const-string v0, "onSliceUnpinned"

    iput-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    :try_start_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V

    .line 270
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0, p1}, Landroidx/slice/SliceProvider;->handleSliceUnpinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    nop

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    throw v0
.end method

.method public static mapIntentToUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 544
    const-string v0, "intent"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 546
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 547
    const-string v3, "Slice intent must be explicit %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 552
    .local v1, "intentData":Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.slice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    return-object v1

    .line 556
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 557
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v4, "android.app.slice.category.SLICE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 558
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :cond_3
    nop

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 562
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_4

    .line 574
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 575
    .local v2, "authority":Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 576
    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 577
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0, v6}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .local v7, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    iget-object v8, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v8, :cond_8

    .line 581
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 582
    .local v8, "extras":Landroid/os/Bundle;
    const-string v9, "slice_intent"

    invoke-virtual {v8, v9, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 583
    iget-object v9, v7, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v10, "map_only"

    const-string v11, "supports_versioned_parcelable"

    invoke-virtual {v9, v10, v11, v8}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 585
    .local v9, "res":Landroid/os/Bundle;
    if-eqz v9, :cond_6

    .line 586
    const-string v10, "slice"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 586
    :cond_5
    return-object v10

    .line 588
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/os/Bundle;
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_7
    goto :goto_3

    .line 579
    .restart local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_8
    :try_start_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "intentData":Landroid/net/Uri;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "intentData":Landroid/net/Uri;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_9

    :try_start_4
    invoke-virtual {v7}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v9

    :try_start_5
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "intentData":Landroid/net/Uri;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_2
    throw v8
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 588
    .end local v7    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "intentData":Landroid/net/Uri;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 589
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "SliceProviderCompat"

    const-string v9, "Unable to map slice"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v5

    .line 564
    .end local v2    # "authority":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v6, 0x80

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 566
    .local v2, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_b

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_b

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_b

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 568
    const-string v7, "android.metadata.SLICE_URI"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 569
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 570
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 569
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 572
    :cond_b
    return-object v5
.end method

.method private onBindSliceStrict(Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 6
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 290
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 291
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v1, "onBindSlice"

    iput-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 295
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 298
    invoke-static {p2}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2, p1}, Landroidx/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 306
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 300
    return-object v2

    .line 305
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SliceProviderCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slice with URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    nop

    .line 305
    :try_start_4
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 306
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 309
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 303
    return-object v1

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_5
    invoke-static {v1}, Landroidx/slice/SliceProvider;->setSpecs(Ljava/util/Set;)V

    .line 306
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    nop

    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Landroidx/slice/compat/SliceProviderCompat;
    .end local p1    # "sliceUri":Landroid/net/Uri;
    .end local p2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 309
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Landroidx/slice/compat/SliceProviderCompat;
    .restart local p1    # "sliceUri":Landroid/net/Uri;
    .restart local p2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 310
    throw v1
.end method

.method private static parseSlice(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/slice/Slice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/os/Bundle;

    .line 437
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 438
    return-object v0

    .line 440
    :cond_0
    sget-object v1, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    new-instance v2, Landroidx/slice/compat/SliceProviderCompat$2;

    invoke-direct {v2, p0}, Landroidx/slice/compat/SliceProviderCompat$2;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 455
    const-class v2, Landroidx/slice/compat/SliceProviderCompat;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 456
    const-string v2, "slice"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .local v2, "parcel":Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 458
    nop

    .line 465
    :try_start_1
    sput-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    return-object v0

    .line 460
    :cond_1
    :try_start_2
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 461
    new-instance v3, Landroidx/slice/Slice;

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :try_start_3
    sput-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 461
    return-object v3

    .line 463
    :cond_2
    :try_start_4
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 465
    :try_start_5
    sput-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    monitor-exit v1

    .line 463
    return-object v3

    .line 465
    .end local v2    # "parcel":Landroid/os/Parcelable;
    :catchall_0
    move-exception v2

    sput-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 466
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "res":Landroid/os/Bundle;
    throw v2

    .line 467
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "res":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public static pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 475
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 476
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 482
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 484
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "pin_slice"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    nop

    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to pin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 489
    nop

    .line 490
    return-void

    .line 488
    :goto_1
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 489
    throw v1

    .line 477
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static revokeSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toPackage"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 664
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v0, p3}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .local v1, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 666
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "slice_uri"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 667
    const-string v3, "provider_pkg"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v3, v1, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v4, "revoke_perms"

    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    .end local v2    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 674
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :cond_0
    goto :goto_1

    .line 664
    .restart local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "toPackage":Ljava/lang/String;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 672
    .end local v1    # "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "toPackage":Ljava/lang/String;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to get slice descendants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->acquireClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;

    move-result-object v0

    .line 498
    .local v0, "holder":Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
    iget-object v1, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    const-string v2, "pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {v1, p2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 506
    iget-object v2, v0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    const-string v3, "unpin_slice"

    const-string v4, "supports_versioned_parcelable"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    nop

    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SliceProviderCompat"

    const-string v3, "Unable to unpin slice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 511
    nop

    .line 512
    return-void

    .line 510
    :goto_1
    invoke-virtual {v0}, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->close()V

    .line 511
    throw v1

    .line 499
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 145
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 147
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 148
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v2

    .line 150
    .local v2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v3

    .line 151
    .local v3, "s":Landroidx/slice/Slice;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v4, "b":Landroid/os/Bundle;
    const-string v5, "supports_versioned_parcelable"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    sget-object v5, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 154
    :try_start_0
    const-string v6, "slice"

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 157
    :cond_1
    const-string v5, "slice"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    :goto_0
    return-object v4

    .line 160
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    .end local v3    # "s":Landroidx/slice/Slice;
    .end local v4    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 161
    const-string v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    .line 163
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 164
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v3, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 166
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v4

    .line 167
    .local v4, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroidx/slice/compat/SliceProviderCompat;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Landroidx/slice/compat/SliceProviderCompat;->handleBindSlice(Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/Slice;

    move-result-object v5

    .line 168
    .local v5, "s":Landroidx/slice/Slice;
    const-string v6, "supports_versioned_parcelable"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    sget-object v6, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_1
    const-string v7, "slice"

    .line 171
    if-eqz v5, :cond_4

    invoke-static {v5}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v1

    .line 170
    :cond_4
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 174
    :cond_5
    const-string v6, "slice"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :cond_6
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    .end local v4    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    .end local v5    # "s":Landroidx/slice/Slice;
    :goto_1
    goto :goto_2

    .line 177
    :cond_7
    const-string v4, "slice"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    :goto_2
    return-object v3

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_8
    const-string v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    const-string v0, "slice_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 182
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 184
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "slice"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    return-object v2

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_9
    const-string v0, "pin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 189
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 190
    invoke-static {p3}, Landroidx/slice/compat/SliceProviderCompat;->getSpecs(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v2

    .line 191
    .local v2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const-string v3, "pkg"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/slice/compat/CompatPinnedList;->addPin(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 193
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSlicePinned(Landroid/net/Uri;)V

    .line 195
    :cond_a
    return-object v1

    .line 196
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_b
    const-string v0, "unpin_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 197
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 198
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 199
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPinnedList;->removePin(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 201
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleSliceUnpinned(Landroid/net/Uri;)V

    .line 203
    :cond_c
    return-object v1

    .line 204
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_d
    const-string v0, "get_specs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 205
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 206
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v1, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mPinnedList:Landroidx/slice/compat/CompatPinnedList;

    invoke-virtual {v2, v0}, Landroidx/slice/compat/CompatPinnedList;->getSpecs(Landroid/net/Uri;)Landroidx/collection/ArraySet;

    move-result-object v2

    .line 209
    .local v2, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {v2}, Landroidx/collection/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 212
    invoke-static {v1, v2}, Landroidx/slice/compat/SliceProviderCompat;->addSpecs(Landroid/os/Bundle;Ljava/util/Set;)V

    .line 213
    return-object v1

    .line 210
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not pinned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    :cond_f
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 216
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 218
    .restart local v1    # "b":Landroid/os/Bundle;
    const-string v2, "slice_descendants"

    new-instance v3, Ljava/util/ArrayList;

    .line 219
    invoke-direct {p0, v0}, Landroidx/slice/compat/SliceProviderCompat;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 220
    return-object v1

    .line 221
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_10
    const-string v0, "check_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 222
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 223
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 224
    const-string v1, "pid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "pid":I
    const-string v2, "uid"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "uid":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v3, "b":Landroid/os/Bundle;
    const-string v4, "result"

    iget-object v5, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v5, v0, v1, v2}, Landroidx/slice/compat/CompatPermissionManager;->checkSlicePermission(Landroid/net/Uri;II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    return-object v3

    .line 229
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_11
    const-string v0, "grant_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 230
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 231
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 232
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "toPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 236
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPermissionManager;->grantSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "toPkg":Ljava/lang/String;
    goto :goto_3

    .line 234
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v2    # "toPkg":Ljava/lang/String;
    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Only the owning process can manage slice permissions"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "toPkg":Ljava/lang/String;
    :cond_13
    const-string v0, "revoke_perms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 238
    const-string v0, "slice_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 239
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 240
    const-string v2, "pkg"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2    # "toPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_14

    .line 244
    iget-object v3, p0, Landroidx/slice/compat/SliceProviderCompat;->mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

    invoke-virtual {v3, v0, v2}, Landroidx/slice/compat/CompatPermissionManager;->revokeSlicePermission(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 242
    :cond_14
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Only the owning process can manage slice permissions"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "toPkg":Ljava/lang/String;
    :cond_15
    :goto_3
    nop

    .line 246
    :goto_4
    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderCompat;->mProvider:Landroidx/slice/SliceProvider;

    invoke-virtual {v0}, Landroidx/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
